package §&"`§
{
   import §2G§.§-#+§;
   import §`7§.§!"b§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §&!Y§ extends §<7§
   {
      
      private static const §]#`§:int = -90;
      
      private static const §5#N§:int = 175;
       
      
      private var §`#l§:Boolean = false;
      
      private var §&2§:String = "";
      
      public function §&!Y§(param1:§"#x§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§`#l§ = param8;
         this.§&2§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §3!5§.owned.visible = this.§`#l§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §-#+§.§6!§.§=b§(§2"X§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§`#l§)
            {
               this.§`#l§ = true;
            }
            §3!5§.owned.visible = this.§`#l§;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Number = NaN;
         var _loc13_:MovieClip = null;
         var _loc14_:SimpleButton = null;
         var _loc15_:Class = null;
         var _loc16_:MovieClip = null;
         var _loc17_:int = 0;
         §%!w§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §;#h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §4#@§["price" + _loc2_];
            _loc4_ = §4#@§["amount" + _loc2_];
            _loc5_ = §4#@§["free" + _loc2_];
            _loc6_ = §4#@§["icon" + _loc2_];
            _loc7_ = §4#@§["description"];
            _loc8_ = §4#@§["title"];
            _loc9_ = §4#@§["owned"];
            _loc10_ = §4#@§["payButton"];
            _loc11_ = §4#@§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§`#l§;
            _loc8_.text = this.§&2§;
            _loc7_.text = §'#o§;
            if(§!!b§.isOnSale)
            {
               _loc12_ = §!!b§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §!!b§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §!!b§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §<7§.MULTIPLIER_STRING + §!"b§.§@]§(_loc12_);
            if((_loc13_ = §4#@§["MovieClip_Icon_VirtualCurrency"]) && §!!b§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§!!b§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§`#l§;
            }
            _loc3_.visible = _loc10_.visible = !this.§`#l§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§`#l§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §4#@§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§`#l§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§^#]§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§>x§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§&$%§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§0$$§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§4"k§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §%!w§.push(_loc14_);
            if(!this.§`#l§ && §!!b§.isOnSale)
            {
               _loc16_ = new (_loc15_ = §!"f§.§##?§("Tag_Sale_30percent"))();
               _loc17_ = §!!b§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §]#`§;
               _loc16_.y = §5#N§;
               §4#@§.addChild(_loc16_);
            }
            else if((_loc16_ = §4#@§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §;S§() : Boolean
      {
         return this.§`#l§;
      }
      
      private function §>x§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §&$%§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §0$$§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §4"k§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
