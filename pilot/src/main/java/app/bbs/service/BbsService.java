package app.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.bbs.mapper.BbsMapper;
import app.bbs.vo.BbsVO;
import app.bbs.vo.FileVO;
import app.bbs.vo.PageVO;

@Service
public class BbsService {

  @Autowired
  BbsMapper bbsMapper;

  public int countService() throws Exception {
    return bbsMapper.count();
  }

  public List<BbsVO> listPageService(PageVO pageVO) throws Exception {
    return bbsMapper.listPage(pageVO);
  }

  public List<BbsVO> listService() throws Exception {
    return bbsMapper.list();
  }

  public BbsVO readService(int idx) throws Exception {
    return bbsMapper.read(idx);
  }

  public int updateCountService(int idx) throws Exception {
    return bbsMapper.updateCount(idx);
  }

  public int writeService(BbsVO bbs) throws Exception {
    return bbsMapper.write(bbs);
  }

  public int updateService(BbsVO bbs) throws Exception {
    return bbsMapper.update(bbs);
  }

  public int deleteService(int idx) throws Exception {
    return bbsMapper.delete(idx);
  }

  public int uploadService(FileVO file) throws Exception {
    return bbsMapper.upload(file);
  }

  public FileVO downloadService(int bbs_idx) throws Exception {
    return bbsMapper.download(bbs_idx);
  }
}