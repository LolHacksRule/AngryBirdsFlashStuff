package §!!?§
{
   import §+"u§.§^"C§;
   import §+#B§.§""D§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §]"'§.§#$D§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §'M§ extends §&#+§
   {
      
      private static const §["m§:int = 12;
       
      
      private var §&!c§:Boolean = false;
      
      private var §9!v§:Date = null;
      
      private var §-$,§:TextFormat;
      
      private var §,§:String = "";
      
      public function §'M§(param1:§,!K§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§&!c§ = param8;
         this.§,§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§9!v§ = param9;
         §-!?§.active.visible = this.§&!c§;
         §-!?§.infinity.visible = false;
         §-!?§.tagForNumberOfPowerups.visible = false;
         this.§-$,§ = new TextFormat(null,§["m§,null);
         this.§-$,§.align = "center";
         §-!?§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §^"#§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§9!v§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §^"#§["activetime"].text = "Expired";
            if(this.§&!c§)
            {
               this.§&!c§ = false;
               §^"#§["active"].visible = true;
            }
         }
         else
         {
            §^"#§["activetime"].text = §^"C§.§?q§.§!"X§(_loc3_)[0];
         }
         §^"#§["activetime"].setTextFormat(this.§-$,§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §#$D§.§?q§.§<"M§(§4">§.id);
         var _loc2_:§4"p§ = §0!w§.§ _§(§4">§.id);
         if(_loc1_ >= 1 || §#$D§.§?q§.§ #,§(§4">§.id) || §#$D§.§?q§.§;p§.§`W§(§4">§.id) || _loc2_ && §#$D§.§?q§.§if§(_loc2_.§]'§))
         {
            this.§&!c§ = true;
            §-!?§.active.visible = this.§&!c§;
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
         §"!y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §^$9§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §^"#§["price" + _loc2_];
            §^"#§["amount" + _loc2_];
            §^"#§["free" + _loc2_];
            _loc6_ = §^"#§["icon" + _loc2_];
            _loc7_ = §^"#§["active"];
            _loc8_ = §^"#§["description"];
            _loc9_ = §^"#§["activetime"];
            (_loc10_ = §^"#§["payButton"]).gotoAndStop(1);
            _loc11_ = §^"#§["title"];
            _loc7_.visible = this.§&!c§;
            _loc3_.text = §&#+§.MULTIPLIER_STRING + §""D§.§"k§(§'$$§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§,§;
            _loc8_.text = §`E§;
            if((_loc12_ = §^"#§["MovieClip_Icon_VirtualCurrency"]) && (§'$$§.currencyID != "IVC" && §'$$§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§'$$§.getPricePoint(_loc1_).price,true,"",§'$$§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§&!c§;
            }
            _loc3_.visible = _loc10_.visible = !this.§&!c§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§&!c§;
            _loc6_.mouseChildren = false;
            _loc13_ = §^"#§["buy" + _loc2_];
            if(!this.§&!c§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§0T§);
            }
            _loc13_.mouseEnabled = !this.§&!c§;
            §"!y§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§^"#§)
         {
            §^"#§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
