package app.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import app.bbs.vo.BbsVO;
import app.bbs.vo.FileVO;
import app.bbs.vo.PageVO;

@Mapper
public interface BbsMapper {

  // 게시글 개수
  public int count() throws Exception;

  // 페이징 처리
  public List<BbsVO> listPage(PageVO pageVO) throws Exception;

  // 게시글 목록
  public List<BbsVO> list() throws Exception;

  // 게시글 읽기
  public BbsVO read(int idx) throws Exception;

  // 조회수 증가
  public int updateCount(int idx) throws Exception;

  // 게시글 작성
  public int write(BbsVO board) throws Exception;

  // 게시글 수정
  public int update(BbsVO board) throws Exception;

  // 게시글 삭제
  public int delete(int idx) throws Exception;

  // 파일 업로드
  public int upload(FileVO file) throws Exception;

  // 파일 다운로드
  public FileVO download(int bbs_idx) throws Exception;
}