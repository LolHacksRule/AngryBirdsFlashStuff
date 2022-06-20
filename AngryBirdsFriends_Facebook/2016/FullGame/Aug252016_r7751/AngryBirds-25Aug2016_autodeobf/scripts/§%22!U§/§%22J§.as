package §"!U§
{
   import §%$!§.§%h§;
   import §'"-§.§'§;
   import §'"-§.§`j§;
   import §5"$§.§]!m§;
   import §>!#§.§9#a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §"J§ extends § !3§
   {
      
      private static const §%v§:int = 12;
       
      
      private var §<#+§:Boolean = false;
      
      private var §`!j§:Date = null;
      
      private var §,!S§:TextFormat;
      
      private var §7W§:String = "";
      
      public function §"J§(param1:§=#V§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false, param9:Date = null)
      {
         this.§<#+§ = param8;
         this.§7W§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         this.§`!j§ = param9;
         §-#5§.active.visible = this.§<#+§;
         §-#5§.infinity.visible = false;
         §-#5§.tagForNumberOfPowerups.visible = false;
         this.§,!S§ = new TextFormat(null,§%v§,null);
         this.§,!S§.align = "center";
         §-#5§.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         §9",§.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(param1:Event) : void
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = Math.round((this.§`!j§.time - _loc2_) / 1000);
         if(_loc3_ <= 0)
         {
            §9",§["activetime"].text = "Expired";
            if(this.§<#+§)
            {
               this.§<#+§ = false;
               §9",§["active"].visible = true;
            }
         }
         else
         {
            §9",§["activetime"].text = §]!m§.§3!]§.§-!=§(_loc3_)[0];
         }
         §9",§["activetime"].setTextFormat(this.§,!S§);
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §%h§.§3!]§.§7#S§(§^$2§.id);
         var _loc2_:§'#3§ = §`j§.§8"&§(§^$2§.id);
         if(_loc1_ >= 1 || §%h§.§3!]§.§-!_§(§^$2§.id) || §%h§.§3!]§.§@!3§.§]#t§(§^$2§.id) || _loc2_ && §%h§.§3!]§.§"#k§(_loc2_.§"!E§))
         {
            this.§<#+§ = true;
            §-#5§.active.visible = this.§<#+§;
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
         §5!2§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §+k§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §9",§["price" + _loc2_];
            §9",§["amount" + _loc2_];
            §9",§["free" + _loc2_];
            _loc6_ = §9",§["icon" + _loc2_];
            _loc7_ = §9",§["active"];
            _loc8_ = §9",§["description"];
            _loc9_ = §9",§["activetime"];
            _loc10_ = §9",§["payButton"];
            _loc11_ = §9",§["title"];
            _loc7_.visible = this.§<#+§;
            _loc3_.text = § !3§.MULTIPLIER_STRING + §9#a§.§^#&§(§""Q§.getPricePoint(_loc1_).price);
            _loc9_.visible = true;
            _loc11_.text = this.§7W§;
            _loc8_.text = §6c§;
            if((_loc12_ = §9",§["MovieClip_Icon_VirtualCurrency"]) && (§""Q§.currencyID != "IVC" && §""Q§.currencyID != ""))
            {
               _loc12_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(§""Q§.getPricePoint(_loc1_).price,true,"",§""Q§.currencyID);
            }
            else if(_loc12_)
            {
               _loc12_.visible = !this.§<#+§;
            }
            _loc3_.visible = _loc10_.visible = !this.§<#+§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc12_.mouseEnabled = _loc8_.mouseEnabled = _loc10_.mouseEnabled = this.§<#+§;
            _loc6_.mouseChildren = false;
            _loc13_ = §9",§["buy" + _loc2_];
            if(!this.§<#+§)
            {
               _loc13_.addEventListener(MouseEvent.CLICK,§6!D§);
            }
            _loc13_.mouseEnabled = !this.§<#+§;
            §5!2§.push(_loc13_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(§9",§)
         {
            §9",§.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
