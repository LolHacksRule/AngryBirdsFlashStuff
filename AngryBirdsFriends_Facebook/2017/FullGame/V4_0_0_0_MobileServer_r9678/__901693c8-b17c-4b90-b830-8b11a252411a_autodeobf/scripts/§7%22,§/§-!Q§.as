package §7",§
{
   import §&"J§.§4"W§;
   import §6V§.§^">§;
   import §;P§.§-#b§;
   import §;P§.§super§;
   import §];§.§-!t§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §-!Q§ extends §"$8§
   {
      
      private static const §+#V§:int = 12;
       
      
      private var §="r§:Boolean = false;
      
      private var §>$&§:Date = null;
      
      private var §,#b§:TextFormat;
      
      private var §<"a§:String = "";
      
      public function §-!Q§(param1:§2#i§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§="r§ = param8;
         this.§<"a§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§>$&§ = param9;
         §1!'§.active.visible = this.§="r§;
         §1!'§.infinity.visible = false;
         §1!'§.tagForNumberOfPowerups.visible = false;
         this.§,#b§ = new TextFormat(null,§+#V§,null);
         this.§,#b§.align = "center";
         §1!'§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §6d§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§>$&§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §6d§["activetime"].text = "Expired";
            if(this.§="r§)
            {
               this.§="r§ = false;
               §6d§["active"].visible = true;
            }
         }
         else
         {
            §6d§["activetime"].text = §-!t§.§ "D§.§]N§(_loc3_)[0];
         }
         §6d§["activetime"].setTextFormat(this.§,#b§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §4"W§.§ "D§.§04§(§in§.id);
         var _loc2_:§-#b§ = §super§.§0!h§(§in§.id);
         if(_loc1_ >= 1 || §4"W§.§ "D§.§]O§(§in§.id) || §4"W§.§ "D§.§^$!§.§ "'§(§in§.id) || _loc2_ && §4"W§.§ "D§.§@^§(_loc2_.§?"9§))
         {
            this.§="r§ = true;
            §1!'§.active.visible = this.§="r§;
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
         var _loc7_:MovieClip = null;
         var _loc8_:TextField = null;
         var _loc9_:TextField = null;
         var _loc10_:MovieClip = null;
         var _loc11_:TextField = null;
         var _loc12_:MovieClip = null;
         var _loc13_:SimpleButton = null;
         §"!M§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §#"X§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §6d§["price" + _loc2_];
            _loc4_ = §6d§["amount" + _loc2_];
            _loc5_ = §6d§["free" + _loc2_];
            _loc6_ = §6d§["icon" + _loc2_];
            _loc7_ = §6d§["active"];
            _loc8_ = §6d§["description"];
            _loc9_ = §6d§["activetime"];
            _loc10_ = §6d§["payButton"];
            _loc11_ = §6d§["title"];
            _loc7_.visible = this.§="r§;
            _loc3_.text = §"$8§.MULTIPLIER_STRING + §^">§.§?"Y§(§]#+§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§<"a§;
            _loc8_.text = §'$>§;
            if((_loc12_ = §6d§["MovieClip_Icon_VirtualCurrency"]) && (§]#+§.currencyID != "IVC" && §]#+§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§]#+§.getPricePoint(_loc1_).price,true,"",§]#+§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§="r§;
            }
            _loc3_.visible = _loc10_.visible = !this.§="r§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§="r§;
            _loc6_.mouseChildren = false;
            _loc13_ = §6d§["buy" + _loc2_];
            if(!this.§="r§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§=#,§);
            }
            _loc13_.mouseEnabled = !this.§="r§;
            §"!M§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§6d§)
         {
            §6d§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
