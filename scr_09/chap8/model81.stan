data{
	int<lower=0> N[2];
	int n[2,2];
}
parameters{
	simplex[2] p[2];
}
model{
	for(i in 1:2){
		for(j in 1:2){
			n[i,j] ~ binomial(N[j], p[j][i]);
		}
	}
}
generated quantities{
	real d;
	real delta_over;
	real p11;
	real p10;
	real p01;
	real p00;
	real RR;
	real OR;
	p11 <- p[1][1];
	p10 <- p[1][2];
	p01 <- p[2][1];
	p00 <- p[2][2];

	d <- p11 - p01; #�䗦�̍�
	delta_over <- if_else(d > 0,1,0);
	RR <- p11/p01; #���X�N��
	OR <- (p11/p10) / (p01/p00); #�I�b�Y��
}