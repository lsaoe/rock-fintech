# coding: utf-8
module RockFintech
  module Api
    module Batch
      module BatchRepaymentB

        # 批量还款
        #
        # @param notify_url 回调地址
        # @param items [ Array ] 还款信息 (此参数传入时必须用 to_json 转化)
        #          * :out_card_no
        #          * :amount
        #          * :interest_amount
        #          * :in_card_no
        #          * :currency
        #          * :out_fee_mode
        #          * :out_fee_amount
        #          * :in_fee_mode
        #          * :in_fee_amount
        #          * :assets_no
        #          * :auth_code
        #          * :third_reserved
        #          * :serial_no
        #          * :notify_url
        #          * :reserved
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :batch_no [String] 批次号
        #       * :batch_type [String] 业务类别
        #       * :batch_count [String] 数量
        #       * :batch_date [String] 日期
        #       * :items [Array]
        #         * :result [String] 处理相应码('00': 成功, 其他为失败)
        #         * :message [String] 应答描述
        #         * :amount [String] 扣账(本金)金额
        #         * :out_card_no [String] 扣款电子账号
        #         * :interest_amount [String] 扣账利息金额
        #         * :real_amount [String] 实际扣账金额
        #         * :in_card_no [String] 转入电子账号
        #         * :currency [String] 币种
        #         * :out_fee_mode [String] 转出方手续费扣款方式 (0: 指定金额； 1: 同产品设置)
        #         * :out_fee_amount [String] 转出方手续费扣款金额
        #         * :in_fee_mode [String] 转入方手续费扣款方式 (0: 指定金额； 1: 同产品设置)
        #         * :in_fee_amount [String] 转入方手续费扣款金额
        #         * :assets_no [String] 标的编号
        #         * :serial_no [String] 投标申请流水号
        #         * :third_reserved [String] 第三方流水号
        #         * :reserved [String] 保留域
        #
        def batch_repayment_b(batch_count, batch_no, batch_type,
                              batch_date, notify_url, items, remark='')


          service = 'batch_repayment_b'

          params = {
            batch_count: batch_count,
            batch_no: batch_no,
            batch_type: batch_type,
            batch_date: batch_date,
            notify_url: notify_url,
            items: items,
            custom: remark,
          }

          res = operate_post(:operate, service, params, Http::ErrorCode.batch_repayment_b, ['RD000000'])

          res
        end

      end
    end
  end
end
