package com.stock.pro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.stock.pro.entity.NoticeInfo;

public interface NoticeRepository extends JpaRepository<NoticeInfo, Integer> {

}
