#리베이스 (Rebase): 로컬 브랜치의 커밋을 원격 브랜치의 최신 커밋 위로 재배치합니다. 충돌이 발생하면 충돌을 해결하고 계속해서 git rebase --continue를 사용하여 진행합니다.
git rebase origin/[원격 브랜치 이름] 
#충돌해결 이후
git rebase --continue

## 자신이 병합할 위치인 브랜치로 이동 이후에

## [브랜치 이름]으로 지정한 브랜치를 현재 작업 중인 브랜치에 병합
git merge [브랜치 이름]

## Fast-Forward 병합: 병합 커밋을 생성하지 않고 단순히 브랜치를 이동시키는 방식
git merge --ff-only [브랜치 이름]

## 병합 커밋 메시지 수정
git merge -m "Custom merge message" [브랜치 이름]


# 충돌 해결 코드들

# <<<<<<< HEAD
# // 현재 브랜치의 변경 내용
# =======
# // 병합하려는 브랜치의 변경 내용
# >>>>>>> branch-name


## 다음과 같이 수정하면 현재 브랜치의 변경 내용 저장
// 현재 브랜치의 변경 내용




# 충돌 해결 이후에
# 충돌 해결 후
git add .
git commit -m "Resolved merge conflict"
git merge --continue

# 병합을 취소하고 이전 커밋으로 되돌리기:
git merge --abort