package §5" §
{
   import §!#C§.§ $?§;
   import §&!_§.§9#%§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §<!r§.§'##§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7!'§ extends §2$0§
   {
      
      private static const § "+§:int = 12;
       
      
      private var §1!#§:Boolean = false;
      
      private var §'#V§:Date = null;
      
      private var §&!G§:TextFormat;
      
      private var §0?§:String = "";
      
      public function §7!'§(param1:§=n§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§1!#§ = param8;
         this.§0?§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§'#V§ = param9;
         §8#q§.active.visible = this.§1!#§;
         §8#q§.infinity.visible = false;
         §8#q§.tagForNumberOfPowerups.visible = false;
         this.§&!G§ = new TextFormat(null,§ "+§,null);
         this.§&!G§.align = "center";
         §8#q§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §'"+§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§'#V§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §'"+§["activetime"].text = "Expired";
            if(this.§1!#§)
            {
               this.§1!#§ = false;
               §'"+§["active"].visible = true;
            }
         }
         else
         {
            §'"+§["activetime"].text = §'##§.§`"H§.§@!e§(_loc3_)[0];
         }
         §'"+§["activetime"].setTextFormat(this.§&!G§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = § $?§.§`"H§.§0#s§(§6!-§.id);
         var _loc2_:§<K§ = §+"d§.§ !^§(§6!-§.id);
         if(_loc1_ >= 1 || § $?§.§`"H§.§3#c§(§6!-§.id) || § $?§.§`"H§.§>3§.§""!§(§6!-§.id) || _loc2_ && § $?§.§`"H§.§2"g§(_loc2_.§1#7§))
         {
            this.§1!#§ = true;
            §8#q§.active.visible = this.§1!#§;
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
         §-"6§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §1h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §'"+§["price" + _loc2_];
            _loc4_ = §'"+§["amount" + _loc2_];
            _loc5_ = §'"+§["free" + _loc2_];
            _loc6_ = §'"+§["icon" + _loc2_];
            _loc7_ = §'"+§["active"];
            _loc8_ = §'"+§["description"];
            _loc9_ = §'"+§["activetime"];
            (_loc10_ = §'"+§["payButton"]).gotoAndStop(1);
            _loc11_ = §'"+§["title"];
            _loc7_.visible = this.§1!#§;
            _loc3_.text = §2$0§.MULTIPLIER_STRING + §9#%§.§##W§(§3$@§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§0?§;
            _loc8_.text = §,"w§;
            if((_loc12_ = §'"+§["MovieClip_Icon_VirtualCurrency"]) && (§3$@§.currencyID != "IVC" && §3$@§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§3$@§.getPricePoint(_loc1_).price,true,"",§3$@§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§1!#§;
            }
            _loc3_.visible = _loc10_.visible = !this.§1!#§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§1!#§;
            _loc6_.mouseChildren = false;
            _loc13_ = §'"+§["buy" + _loc2_];
            if(!this.§1!#§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§^0§);
            }
            _loc13_.mouseEnabled = !this.§1!#§;
            §-"6§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§'"+§)
         {
            §'"+§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
