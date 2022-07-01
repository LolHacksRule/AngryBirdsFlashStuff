package §1g§
{
   import §"!2§.§>9§;
   import §&!!§.Popup;
   import §3"0§.§'&§;
   import §3"0§.§0"7§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §>!$§ extends Popup
   {
      
      private static const §+"!§:int = 4000;
       
      
      private var § !C§:§8!K§;
      
      private var §"!f§:Number = 1;
      
      private var §&!r§:§%!`§;
      
      private var §=3§:§0"7§;
      
      private var §1!g§:Vector.<§0"7§>;
      
      private var §`i§:Timer;
      
      private var §>A§:int;
      
      private var §>&§:int = 0;
      
      private var §#U§:§;!u§;
      
      private var container:§;!u§;
      
      public function §>!$§(param1:XML, param2:§`5§)
      {
         super(param1,param2);
         this.§1!g§ = new Vector.<§0"7§>();
         this.container = param2.getItemByName("Container_LevelUp") as §;!u§;
         this.§#U§ = this.container.getItemByName("Container_LevelUp_Icon") as §;!u§;
         var _loc3_:§ !F§ = this.§#U§.getItemByName("TextField_Progress_Level") as § !F§;
         _loc3_.setText((AngryBirdsFP11.§8!I§ as §>9§).newXpLevel.toString());
         var _loc4_:§%!`§ = param2.getItemByName("MovieClip_LevelUp") as §%!`§;
         this.§&!r§ = getItemByName("MovieClip_LevelUp_Glow") as §%!`§;
         §7S§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§8!K§ = §%!Z§.§if §.§"U§(§%!Z§.§if §.§"<§(this.§#U§.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§%!Z§.§,!%§),§%!Z§.§if §.§"<§(this.§&!r§.mClip,{
            "scaleX":this.§"!f§ * 2,
            "scaleY":this.§"!f§ * 2
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§%!Z§.§,!%§),§%!Z§.§if §.§"<§(_loc4_.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§%!Z§.§,!%§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§"!§();
            this.§ !C§ = §%!Z§.§if §.§9y§.apply(§%!Z§.§if §,_loc5_);
            this.§ !C§.onComplete = this.§5t§;
            this.§ !C§.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§+"!§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7_§);
         _loc2_.start();
      }
      
      protected function §7_§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §5t§() : void
      {
         var _loc1_:§8!K§ = §%!Z§.§if §.§"<§(this.§&!r§.mClip,{"rotation":360},{"rotation":0},§+"!§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§0"7§ = null;
         var _loc2_:int = getTimer() - this.§>&§;
         this.§>&§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§1!g§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §5"0§() : void
      {
         var splash:§0"7§ = null;
         if(this.§`i§)
         {
            this.§`i§.stop();
            try
            {
               this.§`i§.removeEventListener(TimerEvent.TIMER,this.§8R§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1!g§)
         {
            if(§7S§.contains(splash))
            {
               §7S§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1!g§ = new Vector.<§0"7§>();
      }
      
      private function §8!&§(param1:Number, param2:Number) : void
      {
         this.§=3§ = new §0"7§(§'N§.§ !q§,§'N§.§%"2§,param1,param2,§0"7§.§?!C§,80,0,§'&§.§=V§);
         §7S§.addChild(this.§=3§);
         this.§1!g§.push(this.§=3§);
      }
      
      private function §"!§() : void
      {
         this.§`i§ = new Timer(400);
         this.§>A§ = 0;
         this.§`i§.addEventListener(TimerEvent.TIMER,this.§8R§);
         this.§`i§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§5"0§();
      }
      
      private function §8R§(param1:TimerEvent) : void
      {
         if(this.§>A§ == 0)
         {
            this.§8!&§(this.§#U§.mClip.parent.parent.x + this.§#U§.mClip.parent.x + this.§#U§.mClip.x,this.§#U§.mClip.parent.parent.y + this.§#U§.mClip.parent.y + this.§#U§.mClip.y);
         }
         else
         {
            this.§`i§.stop();
         }
         ++this.§>A§;
      }
   }
}
