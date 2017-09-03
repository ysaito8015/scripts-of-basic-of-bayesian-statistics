
library(rstan) #�p�b�P�[�W�̓ǂݍ���

###7.1.1 ���ꐯ���1
scr <- "model711.stan" #Stan�t�@�C����
source("data711.R") #data�t�@�C����
data <- list(N=N,x=x) #data�t�@�C�����̕ϐ������X�g�`���ɂ܂Ƃ߂�
par <- c("lambda", "sqrt_lambda", "p") #�T���v�����O���ʂ��o�͂���ϐ���
war <- 5000            #�E�H�[���A�b�v��
ite <- 100000          #�J��Ԃ���
see <- 123             #�����̎�
dig <- 3               #�L������
cha <- 1               #�A���\����

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par,digits_summary=dig)                   #���ʂ̕\��


###7.1.2 �E�~�K�����
scr <- "model712.stan"
source("data712.R")
data <- list(N=N,x1=x1,x2=x2)
par <- c("lambdaA", "lambdaB", "delta", "p_delta")
war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par,digits_summary=dig)                   


###7.2 ���X�g�������
scr <- "model72.stan"
source("data72.R")
data <- list(N=N,x=x)
par <- c("lambda", "mu", "p", "P_underp")

war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par,digits_summary=dig)  


###7.3 ���ꐯ���2
scr <- "model73.stan"
source("data73.R")
data <- list(N=N,x=x)
par <- c("pred")
war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par,digits_summary=dig)


###7.4 ������t���_�A�C�X���
scr <- "model74.stan"
source("data74.R")
data <- list(N=N,x=x)
par<-c("theta", "p3", "P", "mu")
war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1
fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par, digits_summary=dig)


###7.5 �G���g���[�V�[�g���
scr <- "model75.stan"
source("data75.R")
data <- list(N=N,x=x)
par <- c("theta", "p", "pred")
war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par, digits_summary=dig)


###7.6 �������
scr <- "model76.stan"
source("data76.R")
data <- list(N=N,x=x)
par <- c("zeta", "p_450")
war <- 5000
ite <- 100000
see <- 123
dig <- 3
cha <- 1

fit <- stan(file=scr, model_name=scr, data=data, pars=par, verbose=F, 
            seed=see, chains=cha, warmup=war, iter=ite)
print(fit,pars=par, digits_summary=dig)

