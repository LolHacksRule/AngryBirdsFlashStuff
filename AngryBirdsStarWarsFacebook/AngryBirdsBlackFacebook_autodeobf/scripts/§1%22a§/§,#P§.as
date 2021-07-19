package §1"a§
{
   import §!"W§.§#"[§;
   import §!"W§.§[!y§;
   import §,"N§.§<!9§;
   import §,"N§.§@#B§;
   import §="2§.§?!r§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §,#P§
   {
      
      private static const §7%§:uint = 2;
      
      private static const §5=§:uint = 1;
      
      private static const §"#C§:uint = 0;
      
      private static const §1!-§:int = 10;
      
      private static const § !3§:String = "time";
      
      private static const §?Q§:String = "energy";
      
      private static const §;"s§:String = "infinity";
       
      
      private var §!n§:int;
      
      private var §?#1§:int;
      
      protected var §4#J§:§@#B§;
      
      private var §7"P§:Number;
      
      private var §@#^§:MovieClip;
      
      private var §[§:MovieClip;
      
      private var §2t§:TextField;
      
      private var §#"m§:TextField;
      
      private var §%#&§:int;
      
      public function §,#P§(param1:MovieClip, param2:§@#B§)
      {
         super();
         this.§@#^§ = param1;
         this.§4#J§ = param2;
         this.§7"P§ = 0;
         this.§%#&§ = -1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:FrameLabel = null;
         this.§[§ = this.§@#^§.hitAreaEnergy;
         this.§2t§ = TextField(this.§@#^§.energyUpdateTime);
         this.§#"m§ = TextField(this.§@#^§.energyWrapper.energyBalance);
         var _loc1_:Array = this.§@#^§.currentLabels;
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.name == § !3§)
            {
               this.§!n§ = _loc2_.frame;
            }
            else if(_loc2_.name == §?Q§)
            {
               this.§?#1§ = _loc2_.frame;
            }
         }
         this.§4#J§.§4"Z§.addEventListener(§[!y§.§1c§,this.§=K§);
         this.§4#J§.§^"J§.addEventListener(§#"[§.§1c§,this.§8!n§);
         this.§=K§();
      }
      
      public function dispose() : void
      {
         this.§@#^§.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
         this.§4#J§.§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
         this.§4#J§.§4"Z§.removeEventListener(§[!y§.§1c§,this.§=K§);
      }
      
      private function §=K§(param1:Event = null) : void
      {
         var _loc2_:int = this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§);
         if(_loc2_ < 0)
         {
            this.§@#^§.gotoAndStop(§?Q§);
         }
         else
         {
            this.§@#^§.gotoAndStop(§;"s§);
         }
         this.§8!n§();
      }
      
      private function §8!n§(param1:Event = null) : void
      {
         var _loc2_:int = this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§);
         if(this.§4#J§.§^"J§.energy >= this.§4#J§.§^"J§.§6"g§ || _loc2_ >= 0)
         {
            this.§@#^§.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
            this.§#"m§.text = this.§4#J§.§^"J§.energy.toString();
            MovieClip(this.§@#^§.energyFiller).scaleX = 1;
            this.§2t§.text = §4#;§.singleton.§4#,§.getLocalizedString("friends_bar_energy_full");
         }
         else
         {
            this.§@#^§.addEventListener(Event.ENTER_FRAME,this.§"#5§);
            this.§#"m§.text = this.§4#J§.§^"J§.energy.toString();
            this.§3"@§();
            this.§"#5§();
         }
         if(this.§%#&§ != -1)
         {
            if(this.§4#J§.§^"J§.energy > this.§%#&§)
            {
               §?!r§.§"#_§("energy_gain");
            }
         }
         this.§%#&§ = this.§4#J§.§^"J§.energy;
      }
      
      private function §3"@§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§4#J§.§^"J§.energy / this.§4#J§.§^"J§.§6"g§;
         _loc2_ = _loc2_ > 1 ? Number(1) : (_loc2_ < 0 ? Number(0) : Number(_loc2_));
         MovieClip(this.§@#^§.energyFiller).scaleX = _loc2_;
      }
      
      private function §"#5§(param1:Event = null) : void
      {
         this.§2t§.text = this.§<#3§(this.§4#J§.§^"J§.§]"w§,§5=§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7"P§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7"P§ = §1!-§ * 1000 + _loc3_ + _loc2_;
         }
      }
      
      private function §<#3§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §7%§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §5=§ ? (param2 == §7%§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §5=§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
   }
}
