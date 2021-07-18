package §"!U§
{
   import §%$!§.§%h§;
   import §+!d§.§3§;
   import §5"$§.§]!m§;
   import §>!#§.§9#a§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §4#b§ extends § !3§
   {
      
      private static const §""U§:int = -90;
      
      private static const §5s§:int = 175;
       
      
      private var §<#+§:Boolean = false;
      
      private var §7W§:String = "";
      
      public function §4#b§(param1:§=#V§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§<#+§ = param8;
         this.§7W§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §-#5§.owned.visible = this.§<#+§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc1_:int = §%h§.§3!]§.§7#S§(§^$2§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§<#+§)
            {
               this.§<#+§ = true;
            }
            §-#5§.owned.visible = this.§<#+§;
            _loc2_ = 0;
            while(_loc2_ < §-#5§.numChildren)
            {
               _loc3_ = §-#5§.getChildAt(_loc2_) as MovieClip;
               if(_loc3_ && _loc3_.name == "Sale")
               {
                  _loc3_.parent.removeChild(_loc3_);
                  break;
               }
               _loc2_++;
            }
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         null;
         null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Number = NaN;
         var _loc12_:MovieClip = null;
         var _loc13_:SimpleButton = null;
         null;
         var _loc15_:MovieClip = null;
         var _loc16_:int = 0;
         §5!2§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §+k§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §9",§["price" + _loc2_];
            §9",§["amount" + _loc2_];
            §9",§["free" + _loc2_];
            _loc6_ = §9",§["icon" + _loc2_];
            _loc7_ = §9",§["description"];
            _loc8_ = §9",§["title"];
            _loc9_ = §9",§["owned"];
            (_loc10_ = §9",§["payButton"]).gotoAndStop(1);
            _loc9_.visible = this.§<#+§;
            _loc8_.text = this.§7W§;
            _loc7_.text = §6c§;
            if(§""Q§.isOnSale)
            {
               _loc11_ = §""Q§.getPricePoint(_loc1_).campaignPrice;
            }
            else
            {
               _loc11_ = §""Q§.getPricePoint(_loc1_).price;
            }
            _loc3_.text = § !3§.MULTIPLIER_STRING + §9#a§.§^#&§(_loc11_);
            if((_loc12_ = §9",§["MovieClip_Icon_VirtualCurrency"]) && §""Q§.currencyID != "IVC")
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc11_,true,"",§""Q§.currencyID);
            }
            else
            {
               _loc12_.visible = !this.§<#+§;
            }
            _loc3_.visible = _loc10_.visible = !this.§<#+§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc7_.mouseEnabled = this.§<#+§;
            _loc6_.mouseChildren = false;
            (_loc13_ = §9",§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§<#+§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§6!D§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§="D§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"M§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§##f§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§@"1§,false,0,true);
            }
            §5!2§.push(_loc13_);
            if(!this.§<#+§ && §""Q§.isOnSale)
            {
               _loc15_ = new §@`§.§4!i§("Tag_Sale_30percent")();
               _loc16_ = §""Q§.getPricePoint(_loc1_).campaignSalePercentage;
               if(§]!m§.§3!]§.§?q§.indexOf("XMAS_2014") != -1 && §""Q§.id == §3#8§.SLING_SHOT_GOLDEN.§"!E§)
               {
                  _loc16_ = 30;
               }
               (_loc15_.getChildByName("Percentage") as TextField).text = "-" + _loc16_ + "%";
               _loc15_.x = §""U§;
               _loc15_.y = §5s§;
               §9",§.addChild(_loc15_);
            }
            _loc1_++;
         }
      }
      
      public function §"D§() : Boolean
      {
         return this.§<#+§;
      }
      
      private function §="D§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §%"M§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §##f§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §@"1§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
