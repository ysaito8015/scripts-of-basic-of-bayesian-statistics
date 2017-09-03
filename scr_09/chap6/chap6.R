#�x�C�Y���v�w[HMC��]��6�̓X�N���v�g

###6.1.1 ���K���z�̕��ςɊւ��鐄��

library(rstan)

source("data611.R")
scr<-"model611.stan"
data <-list(N=N, x=x)

par<-c("mu","mu_over","mu_over2","es_over")

war<-1000               #�o�[���C������
ite<-11000              #�T���v����
see<-12345              #�V�[�h
dig<-3                  #�L������
cha<-1                  #�`�F�[���̐�

fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)

traceplot(fit,inc_warmup=F)
plot(fit)

###6.1.2 ���K���z�̕��U�Ɋւ��鐄��

source("data612.R")
scr<-"model612.stan"
data <-list(N=N, x=x)


par<-c("sigmasq","sigmasq_over","sigmasq_over2")

war<-1000              
ite<-11000            
see<-12345              
dig<-3                 
cha<-1                 

fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig)

traceplot(fit,inc_warmup=F)
plot(fit)

###6.1.3 ���K���z�̕��ʂɊւ��鐄��

source("data613.R")   
scr<-"model613.stan"  
data <-list(N=N, x=x) 


par<-c("quantile_3rd","prob_over") 

war<-1000               
ite<-11000              
see<-12345               
dig<-3                  
cha<-1                  

fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,
	      pars=par,chains=cha)

print(fit,pars=par,digits_summary=dig) 

traceplot(fit,inc_warmup=F)
plot(fit)

###6.2.1 �Ɨ���2�Q�̕��ϒl���Ɋւ��鐄��

source("data621.R")
scr<-"model621.stan"
data <-list(N1=N1, N2=N2, x1=x1, x2=x2)

par<-c("mu1","mu2","sigma1","sigma2","delta","delta_over","delta_over1")

war<-1000               
ite<-11000              
see<-1234               
dig<-3                  
cha<-1                  

fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,
	      pars=par,chains=cha)
print(fit,pars=par,digits_summary=dig)

traceplot(fit,inc_warmup=F)
plot(fit)

###6.2.2 �Ή��̂���2�Q�̕��ϒl���Ɋւ��鐄��
source("data622.R")
scr<-"model622.stan"
data <-list(N=N, x=x)

par<-c("mu","Sigma","rho","delta","delta_over","delta_over2","rho_over","rho_over05")


war<-1000              
ite<-11000              
see<-12345               
dig<-3                  
cha<-1                  


fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,
	      pars=par,chains=cha)
print(fit,pars=par,digits_summary=dig)

traceplot(fit,inc_warmup=F)
plot(fit)