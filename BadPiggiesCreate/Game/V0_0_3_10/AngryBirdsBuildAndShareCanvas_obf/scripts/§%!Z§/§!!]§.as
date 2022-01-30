package §%!Z§
{
   import §,"$§.Popup;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§`G§;
   import §1!p§.§`!#§;
   import §4!t§.§=p§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §@""§.§&S§;
   import §@""§.§'!R§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §!!]§ extends Popup
   {
      
      private static const §+"+§:int = 4000;
       
      
      private var §9! §:§^F§;
      
      private var §5N§:Number = 1;
      
      private var §`" §:§%!9§;
      
      private var §3!Y§:§&S§;
      
      private var §1F§:Vector.<§&S§>;
      
      private var §!f§:Timer;
      
      private var §3q§:int;
      
      private var §"!?§:int = 0;
      
      private var §>!5§:§7!a§;
      
      private var container:§7!a§;
      
      public function §!!]§(param1:XML, param2:§=p§)
      {
         super(param1,param2);
         this.§1F§ = new Vector.<§&S§>();
         this.container = param2.getItemByName("Container_LevelUp") as §7!a§;
         this.§>!5§ = this.container.getItemByName("Container_LevelUp_Icon") as §7!a§;
         var _loc3_:§`G§ = this.§>!5§.getItemByName("TextField_Progress_Level") as §`G§;
         _loc3_.setText((AngryBirdsFP11.§<U§ as §`!#§).newXpLevel.toString());
         var _loc4_:§%!9§ = param2.getItemByName("MovieClip_LevelUp") as §%!9§;
         this.§`" § = getItemByName("MovieClip_LevelUp_Glow") as §%!9§;
         §?>§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc5_:Array = new Array();
         var _loc6_:§^F§ = §<y§.§,l§.§'!^§(§<y§.§,l§.§]!C§(this.§>!5§.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§<y§.§9!=§),§<y§.§,l§.§]!C§(this.§`" §.mClip,{
            "scaleX":this.§5N§ * 2,
            "scaleY":this.§5N§ * 2
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§<y§.§9!=§),§<y§.§,l§.§]!C§(_loc4_.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.4,§<y§.§9!=§));
         _loc5_.push(_loc6_);
         if(_loc5_.length > 0)
         {
            this.§ !7§();
            this.§9! § = §<y§.§,l§.§=!D§.apply(§<y§.§,l§,_loc5_);
            this.§9! §.onComplete = this.§1!I§;
            this.§9! §.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         var _loc2_:Timer = new Timer(§+"+§,1);
         _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7T§);
         _loc2_.start();
      }
      
      protected function §7T§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §1!I§() : void
      {
         var _loc1_:§^F§ = §<y§.§,l§.§]!C§(this.§`" §.mClip,{"rotation":360},{"rotation":0},§+"+§ / 1000);
         _loc1_.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§&S§ = null;
         var _loc2_:int = getTimer() - this.§"!?§;
         this.§"!?§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§1F§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §?!<§() : void
      {
         var splash:§&S§ = null;
         if(this.§!f§)
         {
            this.§!f§.stop();
            try
            {
               this.§!f§.removeEventListener(TimerEvent.TIMER,this.§3r§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1F§)
         {
            if(§?>§.contains(splash))
            {
               §?>§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1F§ = new Vector.<§&S§>();
      }
      
      private function §'J§(param1:Number, param2:Number) : void
      {
         this.§3!Y§ = new §&S§(§7"$§.§<!8§,§7"$§.§[V§,param1,param2,§&S§.§>A§,80,0,§'!R§.§?-§);
         §?>§.addChild(this.§3!Y§);
         this.§1F§.push(this.§3!Y§);
      }
      
      private function § !7§() : void
      {
         this.§!f§ = new Timer(400);
         this.§3q§ = 0;
         this.§!f§.addEventListener(TimerEvent.TIMER,this.§3r§);
         this.§!f§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§?!<§();
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         if(this.§3q§ == 0)
         {
            this.§'J§(this.§>!5§.mClip.parent.parent.x + this.§>!5§.mClip.parent.x + this.§>!5§.mClip.x,this.§>!5§.mClip.parent.parent.y + this.§>!5§.mClip.parent.y + this.§>!5§.mClip.y);
         }
         else
         {
            this.§!f§.stop();
         }
         ++this.§3q§;
      }
   }
}
