#Element step 1 create deal
titleCreateDeal = "xpath://span[text()='Tạo giảm giá']"
#search
numberTotalProduct = "xpath://span[text()='%s']"
listbox_search = "xpath://div[contains(@class,'ant-select-single')]"
select_optionSearchWithByTitle = "xpath://div[@aria-selected='true' and @title='Tên sản phẩm']" #Tên sản phẩm, SKU
txt_searchWithProductName ="xpath://input[@placeholder='Điền tên sản phẩm']"
total_numberProduct = "xpath://strong[text()='Tất cả sản phẩm']/ancestor::span"

# add product
btn_addAll = "xpath://span[text()='Chọn toàn trang']/parent::button"
btn_nextToStep2 ="xpath://span[text()='Tiếp tục']/parent::button"

#Step 2
input_price= "xpath://input[contains(@id,'discount_price_price')]"
input_pricePercent= "xpath://input[contains(@id,'discount_price_percent')]"
input_dealQty= "xpath://input[contains(@id,'deal_quantity')]"
input_limitQty= "xpath://input[contains(@id,'purchase_limit')]"
input_timeStart= "xpath://input[contains(@id,'running_period_start')]"
input_timeEnd= "xpath://input[contains(@id,'running_period_stop')]"


value_startTimePicker= "xpath://div[@class='ant-modal-footer']/following-sibling::div[contains(@style,'position')]/descendant::td[@title='2021-12-20']"
value_endTimePicker= "xpath://div[@class='ant-modal-footer']/following-sibling::div[contains(@style,'position')]/descendant::td[@title='2021-12-21']"
btn_summitPicker= "xpath://span[text()='Ok']/parent::button"

#btn deleteX= "xpath://span[text()='Xoá']/parent::button"
btn_submitDeal= "xpath://span[text()='Kích hoạt']/parent::button"
popup_error= "xpath://span[text()='Có lỗi xảy ra!']"