package §1!5§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§<"-§;
   import §""§.Popup;
   import §-!H§.§0!]§;
   import §0!C§.§=!]§;
   import §1"1§.§;]§;
   import §1"1§.§`&§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §7!P§ extends Popup
   {
      
      private static const §3""§:int = 4000;
       
      
      private var §`9§:§-!m§;
      
      private var §#"0§:Number = 1;
      
      private var §9h§:§%!7§;
      
      private var §=!j§:§;]§;
      
      private var §!""§:Vector.<§;]§>;
      
      private var §5c§:Timer;
      
      private var §!X§:int;
      
      private var §?"+§:int = 0;
      
      private var §^v§:§1H§;
      
      private var container:§1H§;
      
      public function §7!P§(param1:XML, param2:§=!]§)
      {
         super(param1,param2);
         this.§!""§ = new Vector.<§;]§>();
         this.container = param2.getItemByName("Container_LevelUp") as §1H§;
         this.§^v§ = this.container.getItemByName("Container_LevelUp_Icon") as §1H§;
         var _loc3_:§<"-§ = this.§^v§.getItemByName("TextField_Progress_Level") as §<"-§;
         _loc3_.setText((AngryBirdsFP11.§"!c§ as §0!]§).newXpLevel.toString());
         var _loc4_:§%!7§ = param2.getItemByName("MovieClip_LevelUp") as §%!7§;
         this.§9h§ = getItemByName("MovieClip_LevelUp_Glow") as §%!7§;
         §4!+§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§-!m§ = §"L§.§7!?§.§#!x§(§"L§.§7!?§.§4!P§(this.§^v§.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"L§.§@v§),§"L§.§7!?§.§4!P§(this.§9h§.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§"L§.§@v§),§"L§.§7!?§.§4!P§(_loc4_.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§"L§.§@v§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§^E§();
            this.§`9§ = §"L§.§7!?§.§@!H§.apply(§"L§.§7!?§,_loc5_);
            this.§`9§.onComplete = this.§!t§;
            this.§`9§.play();
         }
         §5;§.playSound("Sound_Star_Pig");
         §5;§.playSound("Sound_Editor_Unlock");
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§3""§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§0U§);
         _loc2_.start();
      }
      
      protected function §0U§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §!t§() : void
      {
         var _loc1_:§-!m§ = §"L§.§7!?§.§4!P§(this.§9h§.mClip,{"rotation":360},{"rotation":0},§3""§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§;]§ = null;
         var _loc2_:int = getTimer() - this.§?"+§;
         this.§?"+§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!""§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §4!-§() : void
      {
         var splash:§;]§ = null;
         if(this.§5c§)
         {
            this.§5c§.stop();
            try
            {
               this.§5c§.removeEventListener(TimerEvent.TIMER,this.§8!%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!""§)
         {
            if(§4!+§.contains(splash))
            {
               §4!+§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!""§ = new Vector.<§;]§>();
      }
      
      private function §#N§(param1:Number, param2:Number) : void
      {
         this.§=!j§ = new §;]§(§@=§.§`!_§,§@=§.§?_§,param1,param2,§;]§.§3!1§,80,0,§`&§.§0"7§);
         §4!+§.addChild(this.§=!j§);
         this.§!""§.push(this.§=!j§);
      }
      
      private function §^E§() : void
      {
         this.§5c§ = new Timer(400);
         this.§!X§ = 0;
         this.§5c§.addEventListener(TimerEvent.TIMER,this.§8!%§);
         this.§5c§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§4!-§();
      }
      
      private function §8!%§(param1:TimerEvent) : void
      {
         if(this.§!X§ == 0)
         {
            this.§#N§(this.§^v§.mClip.parent.parent.x + this.§^v§.mClip.parent.x + this.§^v§.mClip.x,this.§^v§.mClip.parent.parent.y + this.§^v§.mClip.parent.y + this.§^v§.mClip.y);
         }
         else
         {
            this.§5c§.stop();
         }
         ++this.§!X§;
      }
   }
}
