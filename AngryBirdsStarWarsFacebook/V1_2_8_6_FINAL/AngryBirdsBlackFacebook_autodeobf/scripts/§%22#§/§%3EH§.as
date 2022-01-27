package §"#§
{
   import §+"Y§.TournamentUnlockedPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>H§ extends EventDispatcher
   {
      
      public static const §"k§:String = "badge_landed";
      
      public static const §[#0§:String = "popup_opened";
      
      protected static const §[!'§:Number = 30;
      
      protected static const §,#"§:Number = 1500;
      
      protected static const §2"n§:String = "EndScreenEffectChannel";
       
      
      protected var §-Q§:§%b§;
      
      protected var §-"0§:Boolean;
      
      protected var §1"I§:Boolean;
      
      protected var §+"L§:Number;
      
      protected var §3"I§:Number;
      
      protected var §!!Y§:Number = 0.0;
      
      protected var §=1§:Number = 0.0;
      
      protected var §[#,§:§@!8§;
      
      protected var §+"8§:MovieClip;
      
      public function §>H§(param1:§@!8§)
      {
         super();
         this.§[#,§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         this.§+"8§ = this.§[#,§.getItemByName("MovieClip_TournamentUnlock").mClip;
         this.§+"8§.visible = false;
         this.§3"I§ = -1;
         this.§-"0§ = false;
      }
      
      public function show() : void
      {
         this.§-Q§ = §5!%§.§!6§.§4!M§(this.§+"8§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§-Q§.delay = 1;
         this.§-Q§.onComplete = this.onBadgeLanded;
         this.§-Q§.§<"V§ = this.§,Q§;
         this.§-Q§.play();
      }
      
      protected function §,Q§() : void
      {
         this.§+"8§.visible = true;
      }
      
      public function dispose() : void
      {
         if(this.§-Q§)
         {
            this.§-Q§.stop();
            this.§-Q§ = null;
         }
         this.§3"I§ = -1;
         this.§1"I§ = true;
         if(§4"#§.singleton.popupManager.isPopupOpenById(TournamentUnlockedPopup.§-"§))
         {
            §4"#§.singleton.popupManager.§6!u§(TournamentUnlockedPopup.§-"§);
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§-"0§ && !this.§1"I§)
         {
            this.§+"L§ -= param1;
            if(this.§+"L§ <= 0)
            {
               this.§#@§();
            }
         }
         if(this.§3"I§ < 0)
         {
            return;
         }
         this.§[#,§.x -= this.§!!Y§;
         this.§[#,§.y -= this.§=1§;
         if(this.§3"I§ > 0)
         {
            this.§!!Y§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§=1§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§[#,§.x += this.§!!Y§;
            this.§[#,§.y += this.§=1§;
         }
         else
         {
            this.§!!Y§ = 0;
            this.§=1§ = 0;
         }
         this.§3"I§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §=Q§.§`!A§("Hiscore_Badge",§2"n§);
         this.§1"I§ = false;
         this.§-"0§ = true;
         this.§+"L§ = §,#"§;
         this.§%#$§();
         dispatchEvent(new Event(§"k§));
      }
      
      protected function §#@§() : void
      {
         this.§1"I§ = true;
         var _loc1_:§3!§ = new TournamentUnlockedPopup(§^!S§.§'"c§,§2!s§.TOP,TournamentUnlockedPopup.§1#$§);
         §4"#§.singleton.popupManager.openPopup(_loc1_,true,true,true);
         dispatchEvent(new Event(§[#0§));
      }
      
      private function §%#$§() : void
      {
         this.§!!Y§ = 0;
         this.§=1§ = 0;
         this.§3"I§ = §[!'§;
      }
   }
}
