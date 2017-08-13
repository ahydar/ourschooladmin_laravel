CREATE TABLE `grades` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`gradeName` VARCHAR(50) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `forms` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`grade_id` INT(10) NOT NULL,
	`formName` VARCHAR(50) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`userName` VARCHAR(191) NOT NULL,
	`firstName` VARCHAR(191) NOT NULL,
	`lastName` VARCHAR(191) NOT NULL,
	`email` VARCHAR(191),
	`usertype_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `subjects` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`subjectName` VARCHAR(191) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `formsubjects` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`form_id` INT(10) NOT NULL,
	`subject_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `assessments` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`assessName` VARCHAR(191) NOT NULL,
	`assessMark` DECIMAL(10) NOT NULL,
	`assessTermPercentage` DECIMAL(10) NOT NULL,
	`assessFinalPercentage` DECIMAL(10) NOT NULL,
	`formsubject_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `learners` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`form_id` INT NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `educators` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`user_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `educatorforms` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`eudcator_id` INT(10) NOT NULL,
	`form_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `usertypes` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`userTypeName` VARCHAR(50) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `learnersubjects` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`learner_id` INT(10) NOT NULL,
	`formsubject_id` INT(10) NOT NULL,
	`mark1` DECIMAL(10) NOT NULL,
	`mark2` DECIMAL(10) NOT NULL,
	`mark3` DECIMAL(10) NOT NULL,
	`mark4` DECIMAL(10) NOT NULL,
	`final` DECIMAL(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `learnerassessments` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`assessment_id` INT(10) NOT NULL,
	`learner_id` INT(10) NOT NULL,
	`mark` DECIMAL(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `educatorsubjects` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`educator_id` INT(10) NOT NULL,
	`formsubject_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attednances` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`day` INT(10) NOT NULL,
	`month` INT(10) NOT NULL,
	`year` INT(10) NOT NULL,
	`status` VARCHAR(191) NOT NULL,
	`reason` VARCHAR(191) NOT NULL,
	`user_id` INT(10) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `forms` ADD CONSTRAINT `forms_fk0` FOREIGN KEY (`grade_id`) REFERENCES `grades`(`id`);

ALTER TABLE `users` ADD CONSTRAINT `users_fk0` FOREIGN KEY (`usertype_id`) REFERENCES `usertypes`(`id`);

ALTER TABLE `formsubjects` ADD CONSTRAINT `formsubjects_fk0` FOREIGN KEY (`form_id`) REFERENCES `forms`(`id`);

ALTER TABLE `formsubjects` ADD CONSTRAINT `formsubjects_fk1` FOREIGN KEY (`subject_id`) REFERENCES `subjects`(`id`);

ALTER TABLE `assessments` ADD CONSTRAINT `assessments_fk0` FOREIGN KEY (`formsubject_id`) REFERENCES `formsubjects`(`id`);

ALTER TABLE `learners` ADD CONSTRAINT `learners_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `learners` ADD CONSTRAINT `learners_fk1` FOREIGN KEY (`form_id`) REFERENCES `forms`(`id`);

ALTER TABLE `educators` ADD CONSTRAINT `educators_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `educatorforms` ADD CONSTRAINT `educatorforms_fk0` FOREIGN KEY (`eudcator_id`) REFERENCES `educators`(`id`);

ALTER TABLE `educatorforms` ADD CONSTRAINT `educatorforms_fk1` FOREIGN KEY (`form_id`) REFERENCES `forms`(`id`);

ALTER TABLE `learnersubjects` ADD CONSTRAINT `learnersubjects_fk0` FOREIGN KEY (`learner_id`) REFERENCES `learners`(`id`);

ALTER TABLE `learnersubjects` ADD CONSTRAINT `learnersubjects_fk1` FOREIGN KEY (`formsubject_id`) REFERENCES `formsubjects`(`id`);

ALTER TABLE `learnerassessments` ADD CONSTRAINT `learnerassessments_fk0` FOREIGN KEY (`assessment_id`) REFERENCES `assessments`(`id`);

ALTER TABLE `learnerassessments` ADD CONSTRAINT `learnerassessments_fk1` FOREIGN KEY (`learner_id`) REFERENCES `learners`(`id`);

ALTER TABLE `educatorsubjects` ADD CONSTRAINT `educatorsubjects_fk0` FOREIGN KEY (`educator_id`) REFERENCES `educators`(`id`);

ALTER TABLE `educatorsubjects` ADD CONSTRAINT `educatorsubjects_fk1` FOREIGN KEY (`formsubject_id`) REFERENCES `formsubjects`(`id`);

ALTER TABLE `attednances` ADD CONSTRAINT `attednances_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

