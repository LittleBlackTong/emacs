 // Source code is unavailable, and was generated by the Fernflower decompiler.
package com.weimob.rocket.prize.service;

import com.weimob.rocket.prize.domain.bo.AddToPrizeNumberResponseBO;
import com.weimob.rocket.prize.domain.bo.CreateSnCodeResponseBO;
import com.weimob.rocket.prize.domain.bo.DeletePrizesResponseBO;
import com.weimob.rocket.prize.domain.bo.EditPrizeInfoResponseBO;
import com.weimob.rocket.prize.domain.bo.GetAddPrizeInfoResponseBO;
import com.weimob.rocket.prize.domain.bo.GetAutoSnResultResponseBO;
import com.weimob.rocket.prize.domain.bo.GetCouponTemplateWithUrlResponseBO;
import com.weimob.rocket.prize.domain.bo.GetExportStatusResponseBO;
import com.weimob.rocket.prize.domain.bo.GetIsRemainNumResponseBO;
import com.weimob.rocket.prize.domain.bo.GetMemberCardWithUrlResponseBO;
import com.weimob.rocket.prize.domain.bo.GetSnCodeTemplateResponseBO;
import com.weimob.rocket.prize.domain.bo.InitDefaultPrizeResponseBO;
import com.weimob.rocket.prize.domain.bo.ListPrizeInfoByPageResponseBO;
import com.weimob.rocket.prize.domain.bo.QuerySolutionsPrizeTypeResponseBO;
import com.weimob.rocket.prize.domain.common.BaseRequest;
import com.weimob.rocket.prize.domain.dto.AddToPrizeNumberRequestDTO;
import com.weimob.rocket.prize.domain.dto.CreateSnCodeRequestDTO;
import com.weimob.rocket.prize.domain.dto.DeletePrizesRequestDTO;
import com.weimob.rocket.prize.domain.dto.EditPrizeInfoRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetAddPrizeInfoRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetAutoSnResultRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetCouponTemplateWithUrlRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetExportStatusRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetIsRemainNumRequestDTO;
import com.weimob.rocket.prize.domain.dto.GetMemberCardWithUrlRequestDTO;
import com.weimob.rocket.prize.domain.dto.InitDefaultPrizeRequestDTO;
import com.weimob.rocket.prize.domain.dto.ListPrizeInfoByPageRequestDTO;
import com.weimob.rocket.prize.domain.dto.QuerySolutionsPrizeTypeRequestDTO;
import com.weimob.rocket.prize.exception.ActivityPrizeCommonError;
import com.weimob.soa.common.response.SoaResponse;

public interface PrizeSettingExport {
   SoaResponse<QuerySolutionsPrizeTypeResponseBO, ActivityPrizeCommonError> querySolutionsPrizeTypeList(QuerySolutionsPrizeTypeRequestDTO querySolutionsPrizeTypeRequest);

   SoaResponse<QuerySolutionsPrizeTypeResponseBO, ActivityPrizeCommonError> querySolutionsPrizeTypeListV2(QuerySolutionsPrizeTypeRequestDTO querySolutionsPrizeTypeRequest);

   SoaResponse<GetSnCodeTemplateResponseBO, ActivityPrizeCommonError> getSnCodeTemplate(BaseRequest request);

   SoaResponse<CreateSnCodeResponseBO, ActivityPrizeCommonError> createSnCode(CreateSnCodeRequestDTO createSnCodeRequest);

   SoaResponse<GetAutoSnResultResponseBO, ActivityPrizeCommonError> getAutoSnCodeResult(GetAutoSnResultRequestDTO request);

   SoaResponse<GetExportStatusResponseBO, ActivityPrizeCommonError> getExportStatus(GetExportStatusRequestDTO queryExportStatusRequest);

   SoaResponse<EditPrizeInfoResponseBO, ActivityPrizeCommonError> editPrizeInfo(EditPrizeInfoRequestDTO editPrizeInfoRequest);

   SoaResponse<AddToPrizeNumberResponseBO, ActivityPrizeCommonError> addToPrizeNumber(AddToPrizeNumberRequestDTO request);

   SoaResponse<GetAddPrizeInfoResponseBO, ActivityPrizeCommonError> getAddPrizeInfoList(GetAddPrizeInfoRequestDTO getAddPrizeInfoRequest);

   SoaResponse<ListPrizeInfoByPageResponseBO, ActivityPrizeCommonError> listPrizeInfoByPage(ListPrizeInfoByPageRequestDTO listPrizeInfoByPageRequest);

   SoaResponse<GetMemberCardWithUrlResponseBO, ActivityPrizeCommonError> getMemberCardWithUrl(GetMemberCardWithUrlRequestDTO request);

   SoaResponse<GetCouponTemplateWithUrlResponseBO, ActivityPrizeCommonError> getCouponTemplateListWithUrl(GetCouponTemplateWithUrlRequestDTO request);

   SoaResponse<InitDefaultPrizeResponseBO, ActivityPrizeCommonError> initDefaultPrize(InitDefaultPrizeRequestDTO initDefaultPrizeRequest);

   SoaResponse<GetIsRemainNumResponseBO, ActivityPrizeCommonError> getIsShowRemainNum(GetIsRemainNumRequestDTO getIsRemainNumRequestDTO);

   SoaResponse<DeletePrizesResponseBO, ActivityPrizeCommonError> deletePrizes(DeletePrizesRequestDTO deletePrizesRequestDTO);
}
