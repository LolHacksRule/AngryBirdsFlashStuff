package §2H§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§%+§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §>X§.§;!&§;
   import §>X§.§@!I§;
   import §^!y§.§'"#§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §7q§ extends Popup
   {
      
      private static const §^W§:int = 4000;
       
      
      private var static:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §2j§:§%+§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §7!3§:int = 0;
      
      private var §%!L§:§`!T§;
      
      private var container:§`!T§;
      
      public function §7q§(param1:XML, param2:§'s§)
      {
         super(param1,param2);
         this.§ !Q§ = new Vector.<§@!I§>();
         this.container = param2.getItemByName("Container_LevelUp") as §`!T§;
         this.§%!L§ = this.container.getItemByName("Container_LevelUp_Icon") as §`!T§;
         var _loc3_:§`!<§ = this.§%!L§.getItemByName("TextField_Progress_Level") as §`!<§;
         _loc3_.setText((AngryBirdsFP11.§>" § as §'"#§).newXpLevel.toString());
         var _loc4_:§%+§ = param2.getItemByName("MovieClip_LevelUp") as §%+§;
         this.§2j§ = getItemByName("MovieClip_LevelUp_Glow") as §%+§;
         §&!D§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§3^§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(this.§%!L§.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(this.§2j§.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc4_.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§7!E§.§8""§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§!_§();
            this.static = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc5_);
            this.static.onComplete = this.§'!r§;
            this.static.play();
         }
         §5!U§.playSound("Sound_Star_Pig");
         §5!U§.playSound("Sound_Editor_Unlock");
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§^W§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!v§);
         _loc2_.start();
      }
      
      protected function §!!v§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §'!r§() : void
      {
         var _loc1_:§3^§ = §7!E§.§2=§.§<!C§(this.§2j§.mClip,{"rotation":360},{"rotation":0},§^W§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         this.§7!3§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§ !Q§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §#!x§() : void
      {
         var splash:§@!I§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ !Q§)
         {
            if(§&!D§.contains(splash))
            {
               §&!D§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ !Q§ = new Vector.<§@!I§>();
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,80,0,§;!&§.§3!O§);
         §&!D§.addChild(this.§7d§);
         this.§ !Q§.push(this.§7d§);
      }
      
      private function §!_§() : void
      {
         this.§^K§ = new Timer(400);
         this.§@!6§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
         this.§^K§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§#!x§();
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         if(this.§@!6§ == 0)
         {
            this.§0,§(this.§%!L§.mClip.parent.parent.x + this.§%!L§.mClip.parent.x + this.§%!L§.mClip.x,this.§%!L§.mClip.parent.parent.y + this.§%!L§.mClip.parent.y + this.§%!L§.mClip.y);
         }
         else
         {
            this.§^K§.stop();
         }
         ++this.§@!6§;
      }
   }
}
