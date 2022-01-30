package §&!P§
{
   import § !%§.§^2§;
   import §3!O§.§3"4§;
   import §3!O§.§6w§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §]J§.Popup;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §;y§ extends Popup
   {
      
      private static const §[!w§:int = 4000;
       
      
      private var §#i§:§^!#§;
      
      private var §`"§:Number = 1;
      
      private var §#!P§:§&5§;
      
      private var §[j§:§6w§;
      
      private var §>h§:Vector.<§6w§>;
      
      private var §6C§:Timer;
      
      private var §4_§:int;
      
      private var §[<§:int = 0;
      
      private var §`!+§:§>"-§;
      
      private var container:§>"-§;
      
      public function §;y§(param1:XML, param2:§7!!§)
      {
         super(param1,param2);
         this.§>h§ = new Vector.<§6w§>();
         this.container = param2.getItemByName("Container_LevelUp") as §>"-§;
         this.§`!+§ = this.container.getItemByName("Container_LevelUp_Icon") as §>"-§;
         var _loc3_:§7!N§ = this.§`!+§.getItemByName("TextField_Progress_Level") as §7!N§;
         _loc3_.setText((AngryBirdsFP11.§5!c§ as §^2§).newXpLevel.toString());
         var _loc4_:§&5§ = param2.getItemByName("MovieClip_LevelUp") as §&5§;
         this.§#!P§ = getItemByName("MovieClip_LevelUp_Glow") as §&5§;
         §%!a§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§^!#§ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(this.§`!+§.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"g§.§'!9§),§"g§.§'!o§.§while§(this.§#!P§.mClip,{
            "scaleX":this.§`"§ * 2,
            "scaleY":this.§`"§ * 2
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§"g§.§'!9§),§"g§.§'!o§.§while§(_loc4_.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§"g§.§'!9§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§=!6§();
            this.§#i§ = §"g§.§'!o§.§%l§.apply(§"g§.§'!o§,_loc5_);
            this.§#i§.onComplete = this.§6b§;
            this.§#i§.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§[!w§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§3!N§);
         _loc2_.start();
      }
      
      protected function §3!N§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §6b§() : void
      {
         var _loc1_:§^!#§ = §"g§.§'!o§.§while§(this.§#!P§.mClip,{"rotation":360},{"rotation":0},§[!w§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§6w§ = null;
         var _loc2_:int = getTimer() - this.§[<§;
         this.§[<§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§>h§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §'c§() : void
      {
         var splash:§6w§ = null;
         if(this.§6C§)
         {
            this.§6C§.stop();
            try
            {
               this.§6C§.removeEventListener(TimerEvent.TIMER,this.§5;§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>h§)
         {
            if(§%!a§.contains(splash))
            {
               §%!a§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>h§ = new Vector.<§6w§>();
      }
      
      private function §]"0§(param1:Number, param2:Number) : void
      {
         this.§[j§ = new §6w§(§1+§.§"<§,§1+§.§9%§,param1,param2,§6w§.§=j§,80,0,§3"4§.§=!P§);
         §%!a§.addChild(this.§[j§);
         this.§>h§.push(this.§[j§);
      }
      
      private function §=!6§() : void
      {
         this.§6C§ = new Timer(400);
         this.§4_§ = 0;
         this.§6C§.addEventListener(TimerEvent.TIMER,this.§5;§);
         this.§6C§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§'c§();
      }
      
      private function §5;§(param1:TimerEvent) : void
      {
         if(this.§4_§ == 0)
         {
            this.§]"0§(this.§`!+§.mClip.parent.parent.x + this.§`!+§.mClip.parent.x + this.§`!+§.mClip.x,this.§`!+§.mClip.parent.parent.y + this.§`!+§.mClip.parent.y + this.§`!+§.mClip.y);
         }
         else
         {
            this.§6C§.stop();
         }
         ++this.§4_§;
      }
   }
}
