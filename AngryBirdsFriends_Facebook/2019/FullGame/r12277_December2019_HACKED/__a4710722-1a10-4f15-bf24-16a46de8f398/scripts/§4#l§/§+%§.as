package §4#l§
{
   import §2E§.§,!8§;
   import §4#$§.§5"L§;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §>#Y§.§!",§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §+%§ extends §='§
   {
      
      private static const § !]§:int = 12;
       
      
      private var §?"a§:Boolean = false;
      
      private var §<"k§:Date = null;
      
      private var §8"<§:TextFormat;
      
      private var §%!5§:String = "";
      
      public function §+%§(param1:§8#E§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§?"a§ = param8;
         this.§%!5§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§<"k§ = param9;
         §&+§.active.visible = this.§?"a§;
         §&+§.infinity.visible = false;
         §&+§.tagForNumberOfPowerups.visible = false;
         this.§8"<§ = new TextFormat(null,§ !]§,null);
         this.§8"<§.align = "center";
         §&+§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §'$1§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§<"k§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §'$1§["activetime"].text = "Expired";
            if(this.§?"a§)
            {
               this.§?"a§ = false;
               §'$1§["active"].visible = true;
            }
         }
         else
         {
            §'$1§["activetime"].text = §5"L§.§3"1§.§>#`§(_loc3_)[0];
         }
         §'$1§["activetime"].setTextFormat(this.§8"<§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §!",§.§3"1§.§2![§(§"^§.id);
         var _loc2_:§1!^§ = §<$B§.§3#&§(§"^§.id);
         if(_loc1_ >= 1 || §!",§.§3"1§.§=#P§(§"^§.id) || §!",§.§3"1§.§%$7§.§!$1§(§"^§.id) || _loc2_ && §!",§.§3"1§.§4#<§(_loc2_.§=#@§))
         {
            this.§?"a§ = true;
            §&+§.active.visible = this.§?"a§;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc8_:TextField = null;
         var _loc9_:TextField = null;
         var _loc10_:MovieClip = null;
         var _loc11_:TextField = null;
         var _loc12_:MovieClip = null;
         var _loc13_:SimpleButton = null;
         §%"y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §>"a§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §'$1§["price" + _loc2_];
            §'$1§["amount" + _loc2_];
            §'$1§["free" + _loc2_];
            _loc6_ = §'$1§["icon" + _loc2_];
            _loc7_ = §'$1§["active"];
            _loc8_ = §'$1§["description"];
            _loc9_ = §'$1§["activetime"];
            (_loc10_ = §'$1§["payButton"]).gotoAndStop(1);
            _loc11_ = §'$1§["title"];
            _loc7_.visible = this.§?"a§;
            _loc3_.text = §='§.MULTIPLIER_STRING + §,!8§.§1"h§(§=#Q§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§%!5§;
            _loc8_.text = §7!O§;
            if((_loc12_ = §'$1§["MovieClip_Icon_VirtualCurrency"]) && (§=#Q§.currencyID != "IVC" && §=#Q§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§=#Q§.getPricePoint(_loc1_).price,true,"",§=#Q§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§?"a§;
            }
            _loc3_.visible = _loc10_.visible = !this.§?"a§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§?"a§;
            _loc6_.mouseChildren = false;
            _loc13_ = §'$1§["buy" + _loc2_];
            if(!this.§?"a§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§]!,§);
            }
            _loc13_.mouseEnabled = !this.§?"a§;
            §%"y§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§'$1§)
         {
            §'$1§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
