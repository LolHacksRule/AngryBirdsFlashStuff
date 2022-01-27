package §=!G§
{
   import §9"U§.§!!K§;
   import §9"U§.§7"1§;
   import §?!u§.§&"J§;
   import §?!u§.§?!m§;
   import §`"1§.§=Q§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §2#&§
   {
      
      private static const §<"7§:uint = 2;
      
      private static const §4"l§:uint = 1;
      
      private static const §"j§:uint = 0;
      
      private static const §2!J§:int = 10;
      
      private static const §="g§:String = "time";
      
      private static const §]!e§:String = "energy";
      
      private static const §"7§:String = "infinity";
       
      
      private var §5'§:int;
      
      private var §9"s§:int;
      
      protected var §?!$§:§7"1§;
      
      private var §2"R§:Number;
      
      private var §,"B§:MovieClip;
      
      private var §[!e§:MovieClip;
      
      private var §]N§:TextField;
      
      private var §]#-§:TextField;
      
      private var §?!f§:int;
      
      public function §2#&§(param1:MovieClip, param2:§7"1§)
      {
         super();
         this.§,"B§ = param1;
         this.§?!$§ = param2;
         this.§2"R§ = 0;
         this.§?!f§ = -1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:FrameLabel = null;
         this.§[!e§ = this.§,"B§.hitAreaEnergy;
         this.§]N§ = TextField(this.§,"B§.energyUpdateTime);
         this.§]#-§ = TextField(this.§,"B§.energyWrapper.energyBalance);
         var _loc1_:Array = this.§,"B§.currentLabels;
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.name == §="g§)
            {
               this.§5'§ = _loc2_.frame;
            }
            else if(_loc2_.name == §]!e§)
            {
               this.§9"s§ = _loc2_.frame;
            }
         }
         this.§?!$§.§4"-§.addEventListener(§?!m§.§6,§,this.§0" §);
         this.§?!$§.§9"$§.addEventListener(§&"J§.§6,§,this.§+M§);
         this.§0" §();
      }
      
      public function dispose() : void
      {
         this.§,"B§.removeEventListener(Event.ENTER_FRAME,this.§;!t§);
         this.§?!$§.§9"$§.removeEventListener(§&"J§.§6,§,this.§+M§);
         this.§?!$§.§4"-§.removeEventListener(§?!m§.§6,§,this.§0" §);
      }
      
      private function §0" §(param1:Event = null) : void
      {
         var _loc2_:int = this.§?!$§.§4"-§.§-"w§(§!!K§.§7!;§);
         if(_loc2_ < 0)
         {
            this.§,"B§.gotoAndStop(§]!e§);
         }
         else
         {
            this.§,"B§.gotoAndStop(§"7§);
         }
         this.§+M§();
      }
      
      private function §+M§(param1:Event = null) : void
      {
         var _loc2_:int = this.§?!$§.§4"-§.§-"w§(§!!K§.§7!;§);
         if(this.§?!$§.§9"$§.energy >= this.§?!$§.§9"$§.§>@§ || _loc2_ >= 0)
         {
            this.§,"B§.removeEventListener(Event.ENTER_FRAME,this.§;!t§);
            this.§]#-§.text = this.§?!$§.§9"$§.energy.toString();
            MovieClip(this.§,"B§.energyFiller).scaleX = 1;
            this.§]N§.text = §4"#§.singleton.§1!L§.getLocalizedString("friends_bar_energy_full");
         }
         else
         {
            this.§,"B§.addEventListener(Event.ENTER_FRAME,this.§;!t§);
            this.§]#-§.text = this.§?!$§.§9"$§.energy.toString();
            this.§>"X§();
            this.§;!t§();
         }
         if(this.§?!f§ != -1)
         {
            if(this.§?!$§.§9"$§.energy > this.§?!f§)
            {
               §=Q§.§`!A§("energy_gain");
            }
         }
         this.§?!f§ = this.§?!$§.§9"$§.energy;
      }
      
      private function §>"X§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§?!$§.§9"$§.energy / this.§?!$§.§9"$§.§>@§;
         _loc2_ = _loc2_ > 1 ? Number(1) : (_loc2_ < 0 ? Number(0) : Number(_loc2_));
         MovieClip(this.§,"B§.energyFiller).scaleX = _loc2_;
      }
      
      private function §;!t§(param1:Event = null) : void
      {
         this.§]N§.text = this.§`"#§(this.§?!$§.§9"$§.§-=§,§4"l§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§2"R§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§2"R§ = §2!J§ * 1000 + _loc3_ + _loc2_;
         }
      }
      
      private function §`"#§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §<"7§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §4"l§ ? (param2 == §<"7§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §4"l§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
   }
}
