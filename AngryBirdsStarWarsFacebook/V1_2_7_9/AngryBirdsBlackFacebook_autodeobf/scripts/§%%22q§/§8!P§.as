package §%"q§
{
   import §,"v§.§@§;
   import §1!o§.§?!f§;
   import §1!o§.§^!#§;
   import §`"8§.§-!w§;
   import §`"8§.§^x§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §8!P§
   {
      
      private static const §1A§:uint = 2;
      
      private static const §!"E§:uint = 1;
      
      private static const §`!k§:uint = 0;
      
      private static const §>!k§:int = 10;
      
      private static const §>"D§:String = "time";
      
      private static const §`"x§:String = "energy";
      
      private static const §<!i§:String = "infinity";
       
      
      private var §^!Q§:int;
      
      private var §+r§:int;
      
      protected var §]S§:§-!w§;
      
      private var §7E§:Number;
      
      private var §<E§:MovieClip;
      
      private var §="`§:MovieClip;
      
      private var §""9§:TextField;
      
      private var § "t§:TextField;
      
      private var §6#%§:int;
      
      public function §8!P§(param1:MovieClip, param2:§-!w§)
      {
         super();
         this.§<E§ = param1;
         this.§]S§ = param2;
         this.§7E§ = 0;
         this.§6#%§ = -1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:FrameLabel = null;
         this.§="`§ = this.§<E§.hitAreaEnergy;
         this.§""9§ = TextField(this.§<E§.energyUpdateTime);
         this.§ "t§ = TextField(this.§<E§.energyWrapper.energyBalance);
         var _loc1_:Array = this.§<E§.currentLabels;
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.name == §>"D§)
            {
               this.§^!Q§ = _loc2_.frame;
            }
            else if(_loc2_.name == §`"x§)
            {
               this.§+r§ = _loc2_.frame;
            }
         }
         this.§]S§.§?v§.addEventListener(§?!f§.§4f§,this.§0!5§);
         this.§]S§.§`!§.addEventListener(§^!#§.§4f§,this.§ "]§);
         this.§0!5§();
      }
      
      public function dispose() : void
      {
         this.§<E§.removeEventListener(Event.ENTER_FRAME,this.§-!>§);
         this.§]S§.§`!§.removeEventListener(§^!#§.§4f§,this.§ "]§);
         this.§]S§.§?v§.removeEventListener(§?!f§.§4f§,this.§0!5§);
      }
      
      private function §0!5§(param1:Event = null) : void
      {
         var _loc2_:int = this.§]S§.§?v§.§-o§(§^x§.§,!%§);
         if(_loc2_ < 0)
         {
            this.§<E§.gotoAndStop(§`"x§);
         }
         else
         {
            this.§<E§.gotoAndStop(§<!i§);
         }
         this.§ "]§();
      }
      
      private function § "]§(param1:Event = null) : void
      {
         var _loc2_:int = this.§]S§.§?v§.§-o§(§^x§.§,!%§);
         if(this.§]S§.§`!§.energy >= this.§]S§.§`!§.§2!k§ || _loc2_ >= 0)
         {
            this.§<E§.removeEventListener(Event.ENTER_FRAME,this.§-!>§);
            this.§ "t§.text = this.§]S§.§`!§.energy.toString();
            MovieClip(this.§<E§.energyFiller).scaleX = 1;
            this.§""9§.text = §;"@§.singleton.§!# §.getLocalizedString("friends_bar_energy_full");
         }
         else
         {
            this.§<E§.addEventListener(Event.ENTER_FRAME,this.§-!>§);
            this.§ "t§.text = this.§]S§.§`!§.energy.toString();
            this.§?=§();
            this.§-!>§();
         }
         if(this.§6#%§ != -1)
         {
            if(this.§]S§.§`!§.energy > this.§6#%§)
            {
               §@§.§=Y§("energy_gain");
            }
         }
         this.§6#%§ = this.§]S§.§`!§.energy;
      }
      
      private function §?=§(param1:Event = null) : void
      {
         var _loc2_:Number = this.§]S§.§`!§.energy / this.§]S§.§`!§.§2!k§;
         _loc2_ = _loc2_ > 1 ? Number(1) : (_loc2_ < 0 ? Number(0) : Number(_loc2_));
         MovieClip(this.§<E§.energyFiller).scaleX = _loc2_;
      }
      
      private function §-!>§(param1:Event = null) : void
      {
         this.§""9§.text = this.§9"0§(this.§]S§.§`!§.§5"#§,§!"E§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7E§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7E§ = §>!k§ * 1000 + _loc3_ + _loc2_;
         }
      }
      
      private function §9"0§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §1A§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §!"E§ ? (param2 == §1A§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §!"E§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
   }
}
