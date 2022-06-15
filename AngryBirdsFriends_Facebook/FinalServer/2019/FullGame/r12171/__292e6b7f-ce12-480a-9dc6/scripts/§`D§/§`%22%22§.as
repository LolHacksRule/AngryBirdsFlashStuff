package §`D§
{
   import §#"4§.§6!B§;
   import §,#,§.§]§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §`,§.§7!$§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §`""§ extends §7#+§
   {
      
      private static const §?K§:int = 12;
       
      
      private var §-!'§:Boolean = false;
      
      private var §&!&§:Date = null;
      
      private var §"#U§:TextFormat;
      
      private var §7![§:String = "";
      
      public function §`""§(param1:§2_§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§-!'§ = param8;
         this.§7![§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§&!&§ = param9;
         §2"L§.active.visible = this.§-!'§;
         §2"L§.infinity.visible = false;
         §2"L§.tagForNumberOfPowerups.visible = false;
         this.§"#U§ = new TextFormat(null,§?K§,null);
         this.§"#U§.align = "center";
         §2"L§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §>$§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§&!&§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §>$§["activetime"].text = "Expired";
            if(this.§-!'§)
            {
               this.§-!'§ = false;
               §>$§["active"].visible = true;
            }
         }
         else
         {
            §>$§["activetime"].text = §7!$§.§+!,§.§[!,§(_loc3_)[0];
         }
         §>$§["activetime"].setTextFormat(this.§"#U§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §]#0§.§+!,§.§,#k§(§@" §.id);
         var _loc2_:§!#;§ = § "T§.§ #m§(§@" §.id);
         if(_loc1_ >= 1 || §]#0§.§+!,§.§2I§(§@" §.id) || §]#0§.§+!,§.§'!u§.§%"z§(§@" §.id) || _loc2_ && §]#0§.§+!,§.§9n§(_loc2_.§8t§))
         {
            this.§-!'§ = true;
            §2"L§.active.visible = this.§-!'§;
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
         §^$!§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §98§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §>$§["price" + _loc2_];
            _loc4_ = §>$§["amount" + _loc2_];
            _loc5_ = §>$§["free" + _loc2_];
            _loc6_ = §>$§["icon" + _loc2_];
            _loc7_ = §>$§["active"];
            _loc8_ = §>$§["description"];
            _loc9_ = §>$§["activetime"];
            (_loc10_ = §>$§["payButton"]).gotoAndStop(1);
            _loc11_ = §>$§["title"];
            _loc7_.visible = this.§-!'§;
            _loc3_.text = §7#+§.MULTIPLIER_STRING + §6!B§.§^"O§(§@l§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§7![§;
            _loc8_.text = §+"@§;
            if((_loc12_ = §>$§["MovieClip_Icon_VirtualCurrency"]) && (§@l§.currencyID != "IVC" && §@l§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§@l§.getPricePoint(_loc1_).price,true,"",§@l§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§-!'§;
            }
            _loc3_.visible = _loc10_.visible = !this.§-!'§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§-!'§;
            _loc6_.mouseChildren = false;
            _loc13_ = §>$§["buy" + _loc2_];
            if(!this.§-!'§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§?#U§);
            }
            _loc13_.mouseEnabled = !this.§-!'§;
            §^$!§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§>$§)
         {
            §>$§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
