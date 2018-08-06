[[ Endpoint Scheme ]]

{{
	Recommended:
	date() format : (Y-m-d) misal 2018-08-18
	time() format : (H:m:s) misal 09:45:57

}}

- Authentication

POST :: http://localhost/fixtudy_api/auth/register.php {$email_user, $password_user}->name(Register);

POST :: http://localhost/fixtudy_api/auth/login.php {$email_user, $password_user}->name(Login);

GET :: http://localhost/fixtudy_api/auth/logout.php ->name(Logout);


- Profile

GET :: http://localhost/fixtudy_api/profile/view-profile.php ->name(Menampilkan biodata);

GET :: http://localhost/fixtudy_api/profile/update-profile.php ->name(Menampilkan biodata yang akan diupdate);

POST :: http://localhost/fixtudy_api/profile/update-profile-store.php {$birthdate, $gender, $department, $study_year, $bio, $experience, $phone, $photo_url} ->name(perbarui biodata);


- Activity

#post

POST :: http://localhost/fixtudy_api/activity/create-post.php {$post} ->name(Membuat post);

GET :: http://localhost/fixtudy_api/activity/view-my-post.php ->name(Menampilkan buatan sendiri post);

GET :: http://localhost/fixtudy_api/activity/view-post.php ->name(view post and comment relations);

#comment

GET :: http://localhost/fixtudy_api/activity/create-comment.php {$getPostId} ->name(getting certain post to comment);

POST :: http://localhost/fixtudy_api/activity/comment-publish.php {$id_post, $comment} ->name(publish comment);


- Study Class

POST :: http://localhost/fixtudy_api/study_class/create-class.php {$class_name, $class_loc, $class_date, $class_time, $class_desc, $class_payment} ->name(Membuat class);

GET :: http://localhost/fixtudy_api/study_class/view-myclass.php  ->name(view my class);

GET :: http://localhost/fixtudy_api/study_class/view-available-class.php  ->name(menampilkan kelas yang ada kecuali kelas buatan sendokir);

GET :: http://localhost/fixtudy_api/study_class/delete-myclass.php {$getIdClass} ->name(hapus class "buatan sendiri");

- Attendies

GET :: http://localhost/fixtudy_api/study_class/attendies/join-class.php {$getIdClass} ->name(bergabung ke kelas);

GET :: http://localhost/fixtudy_api/study_class/attendies/joined-class.php ->name(Menampilkan kelas yang diikuti);

GET :: http://localhost/fixtudy_api/study_class/attendies/cancle-class.php {$getIdAttendance} ->name(Membatalkann mengikuti kelas);