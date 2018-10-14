# Endpoint Scheme

### Recommended:

''''php
date() format : (Y-m-d) misal 2018-08-18
time() format : (H : m :s) misal 09:45:57
''''

1. Authentication

* POST: http://localhost/fixtudy_api/auth/register.php {_$email_user, $password_user_}->name(Register);

* POST: http://localhost/fixtudy_api/auth/login.php {_$email_user, $password_user_}->name(Login);

* GET: http://localhost/fixtudy_api/auth/logout.php ->name(Logout);


2. Profile

* GET: http://localhost/fixtudy_api/profile/view-profile.php ->name(Menampilkan biodata);

* GET: http://localhost/fixtudy_api/profile/update-profile.php ->name(Menampilkan biodata yang akan diupdate);

* POST: http://localhost/fixtudy_api/profile/update-profile-store.php {_$birthdate, $gender, $department, $study_year, $bio, $experience, $phone, $photo_url_} ->name(perbarui biodata);


3. Activity

### post

* POST: http://localhost/fixtudy_api/activity/create-post.php {_$post_} ->name(Membuat post);

* GET: http://localhost/fixtudy_api/activity/view-my-post.php ->name(Menampilkan buatan sendiri post);

* GET: http://localhost/fixtudy_api/activity/view-post.php ->name(view post and comment relations);

### comment

* GET: http://localhost/fixtudy_api/activity/create-comment.php {_$getPostId_} ->name(getting certain post to comment);

* POST: http://localhost/fixtudy_api/activity/comment-publish.php {_$id_post, $comment_} ->name(publish comment);


4. Study Class

* POST: http://localhost/fixtudy_api/study_class/create-class.php {_$class_name, $class_loc, $class_date, $class_time, $class_desc, $class_payment_} ->name(Membuat class);

* GET: http://localhost/fixtudy_api/study_class/view-myclass.php  ->name(view my class);

* GET: http://localhost/fixtudy_api/study_class/view-available-class.php  ->name(menampilkan kelas yang ada kecuali kelas buatan sendokir);

* GET: http://localhost/fixtudy_api/study_class/delete-myclass.php {_$getIdClass_} ->name(hapus class "buatan sendiri");

5. Attendies

* GET: http://localhost/fixtudy_api/study_class/attendies/join-class.php {_$getIdClass_} ->name(bergabung ke kelas);

* GET: http://localhost/fixtudy_api/study_class/attendies/joined-class.php ->name(Menampilkan kelas yang diikuti);

* GET: http://localhost/fixtudy_api/study_class/attendies/cancle-class.php {_$getIdAttendance_} ->name(Membatalkann mengikuti kelas);
