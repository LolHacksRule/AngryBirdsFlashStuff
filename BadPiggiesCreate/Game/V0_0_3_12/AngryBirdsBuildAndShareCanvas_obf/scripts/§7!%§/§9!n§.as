package §7!%§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §9!y§.§+'§;
   import §9!y§.§0-§;
   import §>";§.§#§;
   import §@">§.§%!u§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §9!n§ extends Popup
   {
      
      private static const §-h§:int = 4000;
       
      
      private var § x§:§+I§;
      
      private var §2"§:Number = 1;
      
      private var §9@§:§;!P§;
      
      private var §&!D§:§0-§;
      
      private var §'v§:Vector.<§0-§>;
      
      private var §;h§:Timer;
      
      private var §1!#§:int;
      
      private var §@!g§:int = 0;
      
      private var §0!m§:§+!?§;
      
      private var container:§+!?§;
      
      public function §9!n§(param1:XML, param2:§%!u§)
      {
         super(param1,param2);
         this.§'v§ = new Vector.<§0-§>();
         this.container = param2.getItemByName("Container_LevelUp") as §+!?§;
         this.§0!m§ = this.container.getItemByName("Container_LevelUp_Icon") as §+!?§;
         var _loc3_:§6m§ = this.§0!m§.getItemByName("TextField_Progress_Level") as §6m§;
         _loc3_.setText((AngryBirdsFP11.§`!j§ as §#§).newXpLevel.toString());
         var _loc4_:§;!P§ = param2.getItemByName("MovieClip_LevelUp") as §;!P§;
         this.§9@§ = getItemByName("MovieClip_LevelUp_Glow") as §;!P§;
         §&?§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§+I§ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(this.§0!m§.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§-!M§.§ §),§-!M§.§ "!§.§+d§(this.§9@§.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§-!M§.§ §),§-!M§.§ "!§.§+d§(_loc4_.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§-!M§.§ §));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§%!y§();
            this.§ x§ = §-!M§.§ "!§.§=!1§.apply(§-!M§.§ "!§,_loc5_);
            this.§ x§.onComplete = this.§ !o§;
            this.§ x§.play();
         }
         §^k§.playSound("Sound_Star_Pig");
         §^k§.playSound("Sound_Editor_Unlock");
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§-h§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§74§);
         _loc2_.start();
      }
      
      protected function §74§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function § !o§() : void
      {
         var _loc1_:§+I§ = §-!M§.§ "!§.§+d§(this.§9@§.mClip,{"rotation":360},{"rotation":0},§-h§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§0-§ = null;
         var _loc2_:int = getTimer() - this.§@!g§;
         this.§@!g§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§'v§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §9Q§() : void
      {
         var splash:§0-§ = null;
         if(this.§;h§)
         {
            this.§;h§.stop();
            try
            {
               this.§;h§.removeEventListener(TimerEvent.TIMER,this.§`"1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'v§)
         {
            if(§&?§.contains(splash))
            {
               §&?§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'v§ = new Vector.<§0-§>();
      }
      
      private function §'x§(param1:Number, param2:Number) : void
      {
         this.§&!D§ = new §0-§(§%"$§.§0<§,§%"$§.§-!'§,param1,param2,§0-§.§-W§,80,0,§+'§.§<y§);
         §&?§.addChild(this.§&!D§);
         this.§'v§.push(this.§&!D§);
      }
      
      private function §%!y§() : void
      {
         this.§;h§ = new Timer(400);
         this.§1!#§ = 0;
         this.§;h§.addEventListener(TimerEvent.TIMER,this.§`"1§);
         this.§;h§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§9Q§();
      }
      
      private function §`"1§(param1:TimerEvent) : void
      {
         if(this.§1!#§ == 0)
         {
            this.§'x§(this.§0!m§.mClip.parent.parent.x + this.§0!m§.mClip.parent.x + this.§0!m§.mClip.x,this.§0!m§.mClip.parent.parent.y + this.§0!m§.mClip.parent.y + this.§0!m§.mClip.y);
         }
         else
         {
            this.§;h§.stop();
         }
         ++this.§1!#§;
      }
   }
}
