#�x�C�Y���v�w[�����]��8�̓X�N���v�g

###8.1 �䗦�̍��E���X�N��E�I�b�Y��

library(rstan)

scr<-"model81.stan"
source("data81.R")
data <-list(N=N, n=n)

par<-c("p","d","delta_over","RR","OR")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-12345              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)


###8.2 2�Q�̑��֌W���̍��Ɋւ��鐄��

source("data82.R")
scr<-"model82.stan"
data <-list(N=N, xA=xA, xB=xB)

par<-c("rhoA","rhoB","delta_r","delta_r_over")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-1234              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)


###8.3 �Ή��̂��鑊�֌W���̍��Ɋւ��鐄��

source("data83.R")
scr<-"model83.stan"
data <-list(N=N, x=x)

par<-c("rho","delta_r2","delta_r2_over")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-12345              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)


###8.4 �ؒf�f�[�^�̑��֌W���̐���

source("data84.R")
scr<-"model84.stan"
data <-list(Ny=Ny, y=y, Nx=Nx, x=x)

par<-c("rho_truncated","rho_corrected")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-12345              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)

###8.4.3 ���S�f�[�^�̑��֌W���̐���
source("data843.R")
scr<-"model843.stan"
data <-list(Ny=Ny, y=y)

par<-c("rho_complete")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-12345              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)


###8.5-8.6 �������ցE��ʉ��\�����_

source("data85.R")
data <- list(S=S, R=R, Score=Score)

war<-15000            #�o�[���C������
ite<-50000            #�T���v����
see<-12345            #�V�[�h
dig<-3                #�L������
cha<-1                #�`�F�[���̐�

## �ϗʌ��ʃ��f��
scr<-"model85random.stan"
par <- c("mu","alpha","beta","sig2subject", "sig2rater", "sig2within","ICC21","ICC24","rho5","rho6","nine6");
fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)
print(fit,pars=par,digits_summary=dig)

## �������ʃ��f��
scr<-"model85mixed.stan"
par <- c("mu","alpha","beta","sig2subject", "sig2within","ICC31","ICC34","rho5","rho6","nine");
fit <- stan(file = scr, data = data, warm=war, iter=ite, seed=see,
	      pars=par,chains=cha)
print(fit,pars=par,digits_summary=dig)