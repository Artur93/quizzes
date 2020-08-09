$(document).ready(function () {

    let modeId = null;
    let quizId = null;
    let userId = null;

    $('input[name="modes"]').on('click', function () {
        $('.quizzes').prop('disabled', false);
    });

    $('.quizzes').on('click', function () {

        $('#mode').hide();
        $('#question-list').show();

        modeId = $('input[name="modes"]:checked').val();

        if (modeId == null) {
            alert('Please select a mode!');
        }else {

            quizId = $(this).siblings('.quiz-id').val();

            $.ajax({
                url: 'api/api/questionapi/questions',
                type: 'GET',
                data: {'quiz_id': quizId, 'mode_id': modeId},
                success: function (data) {
                    console.log(data);
                    if (data.length > 0) {
                        $('#quiz-list').hide();
                        let questHtml = questAns(data);
                        $('#question-list').html(questHtml);
                    }
                },
                error: function (response) {
                    console.log(response);
                }
            });
        }

    });

    $(document).on('click', 'input[name="answer-radio"]', function () {

        $('#quiz-submit').prop('disabled', false);

        let answerId = $(this).parent().siblings('input[name="ans-id"]').val();
        let questionId = $(this).parent().siblings('.question-id').val();
        let isCorrect = $(this).parent().siblings('input[name="is-correct"]').val();
        userId = $('#user-id').val();

        if (isCorrect == 1) {
            let correctAns = $(this).parent('label').text();
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Correct! The right answer is "' + correctAns + '"',
                showConfirmButton: false,
                timer: 1500
            })
        }else {

            $.ajax({
                url: 'api/api/answerapi/correctanswer',
                type: 'GET',
                data: {'mode_id': modeId, 'question_id': questionId},
                success: function (data) {

                    let corrAns = data.answer;
                    Swal.fire({
                        position: 'top-end',
                        icon: 'error',
                        title: 'Sorry, you are wrong! The right answer is "' + corrAns + '"',
                        showConfirmButton: false,
                        timer: 1500
                    })
                },
                error: function (response) {
                    console.log(response);
                }
            });
        }

        $.ajax({
            url: 'api/api/useranswerapi/save',
            type: 'POST',
            data: {'quiz_id': quizId, 'question_id': questionId, 'answer_id': answerId, 'user_id': userId},
            success: function (data) {
                console.log(data);
            },
            error: function (response) {
                console.log(response);
            }
        });
    });

    $(document).on('click', '#quiz-submit', function () {

        $('#quiz-result').show();

        $.ajax({
            url: 'api/api/useranswerapi/result',
            type: 'GET',
            data: {'quiz_id': quizId, 'user_id': userId},
            success: function (data) {

                $('#question-list').hide();
                let resultHtml = renderResult(data);
                $('#quiz-result').html(resultHtml);
            },
            error: function (response) {
                console.log(response);
            }
        });

    });

    $(document).on('click', '#restart', function () {

        removeAnswers();
        $('.quizzes').prop('disabled', true);
        $('#mode').find('.form-check-input').prop('checked', false);
        $('#quiz-result').hide();
        $('#mode').show();
        $('#quiz-list').show();

    });

    function questAns(questions) {
        let questionHtml = '<ul class=\'list-group\'>\n';

        for (let i = 0; i < questions.length; i++) {

            let questionId = questions[i].quest_id;
            let question = questions[i].question;

            let answers = questions[i].ans;
            let answer_ids = questions[i].ans_id;
            let isCorrectAnswers = questions[i].is_correct;

            answers = answers.split(',');
            answer_ids = answer_ids.split(',');
            isCorrectAnswers = isCorrectAnswers.split(',');

            questionHtml = questionHtml + '<li class=\'list-group-item d-flex justify-content-between align-items-center\'>\n' +
                                            question +
                                          '</li>';

            for (let j = 0; j < answers.length; j++) {
                let answer = answers[j];
                let answer_id = answer_ids[j];
                let isCorrectAnswer = isCorrectAnswers[j];

                questionHtml = questionHtml + '<li class=\'d-flex justify-content-between align-items-center\'>' +
                                                '<div class=\'radio margin-radio\'>\n' +
                                                '<label class="label"><input type=\'radio\' name=\'answer-radio\'>' + answer + '</label>\n' +
                                                '<input type=\'hidden\' name=\'ans-id\' value="' + answer_id + '">\n' +
                                                '<input type=\'hidden\' name=\'is-correct\' value="' + isCorrectAnswer + '">\n' +
                                                '<input type="hidden" class="question-id" value="'+questionId+'">' +
                                                '</div>' +
                                              '</li>';
            }
        }

        questionHtml = questionHtml + '</ul>\n' +
            '<input type="button" class="btn btn-primary" id="quiz-submit" value="Submit" disabled>';

        return questionHtml;
    }

    function renderResult(results) {

        let sumAll = parseInt(results[0].all_checked);
        let corrAns = parseInt(results[0].correct_answers);
        let wrongAns = sumAll - corrAns;

        let resultHtml = '<ul class=\'list-group\'>\n';

        resultHtml = resultHtml + '<li class=\'list-group-item d-flex justify-content-between align-items-center\'>\n Answered on: ' +
                                    sumAll + ' Question(s)' +
                                  '</li>\n' +
                                  '<li class=\'list-group-item d-flex justify-content-between align-items-center\'>\n Correct answers: ' +
                                    corrAns +
                                  '</li>\n' +
                                  '<li class=\'list-group-item d-flex justify-content-between align-items-center\'>\n Wrong answers: ' +
                                    wrongAns +
                                  '</li>';

        resultHtml = resultHtml + '</ul>\n' +
            '<input type="button" class="btn btn-primary margin-radio" id="restart" value="Start again">';

        return resultHtml;
    }

    function removeAnswers() {
        $.ajax({
            url: 'api/api/useranswerapi/delete',
            type: 'DELETE',
            data: {'user_id': userId},
            success: function (data) {
                console.log(data);
            },
            error: function (response) {
                console.log(response);
            }
        });
    }

});