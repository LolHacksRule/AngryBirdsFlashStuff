package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §<`§ extends Popup
   {
      
      private static const §&" §:int = 4000;
       
      
      private var §4@§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §7^§:§@u§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §1"6§:int = 0;
      
      private var §;!&§:§6W§;
      
      private var container:§6W§;
      
      public function §<`§(param1:XML, param2:§>!V§)
      {
         super(param1,param2);
         this.§!!N§ = new Vector.<§2U§>();
         this.container = param2.getItemByName("Container_LevelUp") as §6W§;
         this.§;!&§ = this.container.getItemByName("Container_LevelUp_Icon") as §6W§;
         var _loc3_:§!!]§ = this.§;!&§.getItemByName("TextField_Progress_Level") as §!!]§;
         _loc3_.setText((AngryBirdsFP11.§>!7§ as §+`§).newXpLevel.toString());
         var _loc4_:§@u§ = param2.getItemByName("MovieClip_LevelUp") as §@u§;
         this.§7^§ = getItemByName("MovieClip_LevelUp_Glow") as §@u§;
         §-^§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§=!r§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(this.§;!&§.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7I§.§;!C§),§7I§.§[E§.§ ";§(this.§7^§.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§7I§.§;!C§),§7I§.§[E§.§ ";§(_loc4_.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§7I§.§;!C§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§&D§();
            this.§4@§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc5_);
            this.§4@§.onComplete = this.§?!-§;
            this.§4@§.play();
         }
         §0"#§.§9"2§("Sound_Star_Pig");
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§&" §,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]Q§);
         _loc2_.start();
      }
      
      protected function §]Q§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §?!-§() : void
      {
         var _loc1_:§=!r§ = §7I§.§[E§.§ ";§(this.§7^§.mClip,{"rotation":360},{"rotation":0},§&" § / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         this.§1"6§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!!N§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §&V§() : void
      {
         var splash:§2U§ = null;
         if(this.§1!"§)
         {
            this.§1!"§.stop();
            try
            {
               this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!!N§)
         {
            if(§-^§.contains(splash))
            {
               §-^§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!!N§ = new Vector.<§2U§>();
      }
      
      private function §"v§(param1:Number, param2:Number) : void
      {
         this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,80,0,§@!3§.§?H§);
         §-^§.addChild(this.§@"#§);
         this.§!!N§.push(this.§@"#§);
      }
      
      private function §&D§() : void
      {
         this.§1!"§ = new Timer(400);
         this.§7!S§ = 0;
         this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
         this.§1!"§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§&V§();
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         if(this.§7!S§ == 0)
         {
            this.§"v§(this.§;!&§.mClip.parent.parent.x + this.§;!&§.mClip.parent.x + this.§;!&§.mClip.x,this.§;!&§.mClip.parent.parent.y + this.§;!&§.mClip.parent.y + this.§;!&§.mClip.y);
            §0"#§.§9"2§("Sound_Editor_Star_1");
         }
         else
         {
            this.§1!"§.stop();
         }
         ++this.§7!S§;
      }
   }
}
