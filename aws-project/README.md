# 프로젝트 소개 
AWS 인프라 구성 실습 프로젝트입니다. 
Cloud9을 활용하여 빠르게 환경을 구성하고, EC2, S3, ALB, RDS 등을 연동하여 전체 서비스를 구성하였습니다.

# 사용 기술 스택 
- Infra: ALB, EKS, Route53, RDS
- Tool: Cloud9, Docker, ArgoCD, Github
- Monitoring: CloudWatch








# 프로젝트 구성도 
![aws-project_시방서](https://github.com/user-attachments/assets/9af59d70-5fff-45eb-bf86-b80e1339882f)
![image](https://github.com/user-attachments/assets/1b8789e2-34ba-4c4e-b327-0eed72892bf4)



# 내 역할 및 기여 
- Dockerfile 작성
- 웹 애플리케이션 개발: nginx 및 tomcat 환경에서 실행될 HTML/JSP 파일을 개발
- 클라우드 환경 구축: AWS EKS 클러스터 및 ALB 설치
- PPT 작성 및 발표


# 트러블슈팅 경험 


# 실행 결과 
![image](https://github.com/user-attachments/assets/3c335536-4e7e-4896-a7f9-2e360fc21ebc)
![image](https://github.com/user-attachments/assets/9391583d-ccf0-420c-9e86-e0d8809f438a)
![image](https://github.com/user-attachments/assets/aba36ed3-041b-4687-becf-db3f1459759d)

- CloudWatch
![image](https://github.com/user-attachments/assets/39dab914-9793-4558-9b40-009b05654395)
![image](https://github.com/user-attachments/assets/55c50d68-84a0-436f-bdbf-cda69f83218f)
![image](https://github.com/user-attachments/assets/0af2f948-c5fd-4685-bf4a-020e300ef999)



# 보완할 점 
- ArgoCD의 AppProject의 권한을 더 제한적으로 설정하기

- Cloudwatch의 경보 기능을 설정하기 
- hpa의 버전 업그레이드(25년 현재 autoscaling/v2 사용 해야함)
> 참고:
> https://catalog.us-east-1.prod.workshops.aws/workshops/9c0aa9ab-90a9-44a6-abe1-8dff360ae428/ko-KR/50-eks-cluster/100-launch-cluster
