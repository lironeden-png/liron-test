resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.test_it_works.id
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_administratoraccess_amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  user       = aws_iam_user.test_it_works.name
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_amazonec2fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = aws_iam_user.test_it_works.id
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.test_it_works.name
}

resource "aws_iam_user_policy_attachment" "adminnitzantest_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.adminnitzantest.name
}

resource "aws_iam_user_policy_attachment" "adminnitzantest_arn_aws_iam__aws_policy_alexaforbusinessfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AlexaForBusinessFullAccess"
  user       = aws_iam_user.adminnitzantest.id
}

resource "aws_iam_user_policy_attachment" "adminnitzantest_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.adminnitzantest.name
}

resource "aws_iam_user_policy_attachment" "adminnitzantest_arn_aws_iam__aws_policy_awsbudgetsreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBudgetsReadOnlyAccess"
  user       = aws_iam_user.adminnitzantest.name
}

resource "aws_iam_user_policy_attachment" "adminnitzantest_arn_aws_iam__aws_policy_iamfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = aws_iam_user.adminnitzantest.name
}

resource "aws_iam_user_policy_attachment" "ali_orgtree_script_arn_aws_iam__aws_policy_securityaudit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  user       = aws_iam_user.ali_orgtree_script.name
}

resource "aws_iam_user_policy_attachment" "cli_stas_test_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.cli_stas_test.name
}

resource "aws_iam_user_policy_attachment" "cli_test_dorki_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.cli_test_dorki.name
}

resource "aws_iam_user_policy_attachment" "creator_arn_aws_iam__966668471859_policy_user_creator_policy" {
  policy_arn = aws_iam_policy.arn_aws_iam__966668471859_policy_user_creator_policy.arn
  user       = aws_iam_user.creator.name
}

resource "aws_iam_user_policy_attachment" "dudu_arn_aws_iam__aws_policy_alexaforbusinessreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AlexaForBusinessReadOnlyAccess"
  user       = aws_iam_user.dudu.name
}

resource "aws_iam_user_policy_attachment" "dudu_arn_aws_iam__aws_policy_awscloudshellfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudShellFullAccess"
  user       = aws_iam_user.dudu.id
}

resource "aws_iam_user_policy_attachment" "dudu_directlyattachedpolicy_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.dudu_directlyattachedpolicy.id
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_awsssodirectoryadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryAdministrator"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_awsssodirectoryreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryReadOnly"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_awsssomasteraccountadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOMasterAccountAdministrator"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_awsssomemberaccountadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOMemberAccountAdministrator"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_awsssoreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOReadOnly"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_iamfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "dudu_terraform_c2c_arn_aws_iam__aws_policy_job_function_systemadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
  user       = aws_iam_user.dudu_terraform_c2c.name
}

resource "aws_iam_user_policy_attachment" "elad_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.elad.name
}

resource "aws_iam_user_policy_attachment" "eran_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.eran.name
}

resource "aws_iam_user_policy_attachment" "itai_arn_aws_iam__aws_policy_awscloudshellfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudShellFullAccess"
  user       = aws_iam_user.itai.name
}

resource "aws_iam_user_policy_attachment" "itai_arn_aws_iam__aws_policy_awsorganizationsreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsReadOnlyAccess"
  user       = aws_iam_user.itai.name
}

resource "aws_iam_user_policy_attachment" "jit_demo_approving_user_jamesdenman_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.jit_demo_approving_user_jamesdenman.name
}

resource "aws_iam_user_policy_attachment" "k8s_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.k8s.name
}

resource "aws_iam_user_policy_attachment" "liv1_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.liv1.name
}

resource "aws_iam_user_policy_attachment" "liv2_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.liv2.id
}

resource "aws_iam_user_policy_attachment" "maor_test_sizing_arn_aws_iam__aws_policy_amazons3readonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  user       = aws_iam_user.maor_test_sizing.name
}

resource "aws_iam_user_policy_attachment" "maor_test_sizing_arn_aws_iam__aws_policy_awsorganizationsreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsReadOnlyAccess"
  user       = aws_iam_user.maor_test_sizing.name
}

resource "aws_iam_user_policy_attachment" "maor_test_sizing_arn_aws_iam__aws_policy_iamreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  user       = aws_iam_user.maor_test_sizing.name
}

resource "aws_iam_user_policy_attachment" "michal_user_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.michal_user.name
}

resource "aws_iam_user_policy_attachment" "michalstartchain_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.michalstartchain.id
}

resource "aws_iam_user_policy_attachment" "moshenomfa_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.moshenomfa.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_alexaforbusinessfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AlexaForBusinessFullAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_amazonchimefullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonChimeFullAccess"
  user       = aws_iam_user.nitzan.id
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_amazonec2fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.nitzan.id
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_awsbackupauditaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupAuditAccess"
  user       = aws_iam_user.nitzan.id
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_awsbackupfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupFullAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_awsbackupoperatoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupOperatorAccess"
  user       = aws_iam_user.nitzan.id
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_awsbackuporganizationadminaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupOrganizationAdminAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzan_test_arn_aws_iam__aws_policy_awsbillingreadonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
  user       = aws_iam_user.nitzan.name
}

resource "aws_iam_user_policy_attachment" "nitzanfortesting_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.rJcqV.name
}

resource "aws_iam_user_policy_attachment" "nitzanfortesting_arn_aws_iam__aws_policy_amazonec2fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = aws_iam_user.rJcqV.name
}

resource "aws_iam_user_policy_attachment" "nitzanfortesting_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.rJcqV.name
}

resource "aws_iam_user_policy_attachment" "nitzanlambdauser2_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.nitzanlambdauser2.name
}

resource "aws_iam_user_policy_attachment" "nitzanlambdauser3_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.nitzanlambdauser3.name
}

resource "aws_iam_user_policy_attachment" "nitzanlambdauser_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.nitzanlambdauser.name
}

resource "aws_iam_user_policy_attachment" "no_delete_nitzan_test_user_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.omUzw.name
}

resource "aws_iam_user_policy_attachment" "noamcliadmin_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.noamcliadmin.name
}

resource "aws_iam_user_policy_attachment" "numbertestuser_arn_aws_iam__aws_policy_amazonec2fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = aws_iam_user.numbertestuser.id
}

resource "aws_iam_user_policy_attachment" "numbertestuser_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.numbertestuser.id
}

resource "aws_iam_user_policy_attachment" "numbertestuser_arn_aws_iam__aws_policy_iamfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = aws_iam_user.numbertestuser.id
}

resource "aws_iam_user_policy_attachment" "ordinaryuser_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.ordinaryuser.name
}

resource "aws_iam_user_policy_attachment" "rafitestsso_arn_aws_iam__aws_policy_awsssodirectoryreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryReadOnly"
  user       = aws_iam_user.rafitestsso.id
}

resource "aws_iam_user_policy_attachment" "rafitestsso_arn_aws_iam__aws_policy_awsssoreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOReadOnly"
  user       = aws_iam_user.rafitestsso.name
}

resource "aws_iam_user_policy_attachment" "rafitestsso_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.rafitestsso.name
}

resource "aws_iam_user_policy_attachment" "registry_arn_aws_iam__966668471859_policy_registryaccess" {
  policy_arn = aws_iam_policy.arn_aws_iam__966668471859_policy_registryaccess.arn
  user       = aws_iam_user.registry.name
}

resource "aws_iam_user_policy_attachment" "remediator_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.remediator.name
}

resource "aws_iam_user_policy_attachment" "rscdenyoneuser_arn_aws_iam__aws_policy_job_function_viewonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
  user       = aws_iam_user.rscdenyoneuser.name
}

resource "aws_iam_user_policy_attachment" "sivantestlambdaactionlevel_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.sivantestlambdaactionlevel.id
}

resource "aws_iam_user_policy_attachment" "sivantestlambdaactionlevel_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.sivantestlambdaactionlevel.id
}

resource "aws_iam_user_policy_attachment" "sivantestlambdaactionlevel_arn_aws_iam__aws_policy_awslambda_fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  user       = aws_iam_user.sivantestlambdaactionlevel.name
}

resource "aws_iam_user_policy_attachment" "sivantestlambdaactionlevel_arn_aws_iam__aws_policy_iamfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = aws_iam_user.sivantestlambdaactionlevel.name
}

resource "aws_iam_user_policy_attachment" "srebucketuser_arn_aws_iam__966668471859_policy_onebucketpolicy" {
  policy_arn = aws_iam_policy.arn_aws_iam__966668471859_policy_onebucketpolicy.arn
  user       = aws_iam_user.srebucketuser.name
}

resource "aws_iam_user_policy_attachment" "stanislavrouda_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.stanislavrouda.id
}

resource "aws_iam_user_policy_attachment" "taisiia_arn_aws_iam__966668471859_policy_user_taisiia_policy_1" {
  policy_arn = aws_iam_policy.arn_aws_iam__966668471859_policy_user_taisiia_policy_1.arn
  user       = aws_iam_user.taisiia.id
}

resource "aws_iam_user_policy_attachment" "user_ari_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.user_ari.name
}

resource "aws_iam_user_policy_attachment" "yochay_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.yochay.id
}

resource "aws_iam_user_policy_attachment" "yochayorg1admin_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.yochayorg1admin.name
}

resource "aws_iam_user_policy_attachment" "yochaysqsfullaccess_arn_aws_iam__aws_policy_amazonsqsfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  user       = aws_iam_user.yochaysqsfullaccess.name
}

resource "aws_iam_user_policy_attachment" "yochaysqsfullaccess_arn_aws_iam__aws_policy_awscloudshellfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudShellFullAccess"
  user       = aws_iam_user.yochaysqsfullaccess.id
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_awsssodirectoryadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryAdministrator"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_awsssodirectoryreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryReadOnly"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_awsssomasteraccountadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOMasterAccountAdministrator"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_awsssomemberaccountadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOMemberAccountAdministrator"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_awsssoreadonly" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSSOReadOnly"
  user       = aws_iam_user.yoel_terraform.id
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_iamfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = aws_iam_user.yoel_terraform.id
}

resource "aws_iam_user_policy_attachment" "yoel_terraform_arn_aws_iam__aws_policy_job_function_systemadministrator" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
  user       = aws_iam_user.yoel_terraform.name
}

resource "aws_iam_user_policy_attachment" "yuritheremediator_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.yuritheremediator.name
}
