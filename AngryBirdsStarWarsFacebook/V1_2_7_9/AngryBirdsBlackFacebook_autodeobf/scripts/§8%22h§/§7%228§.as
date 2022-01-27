package §8"h§
{
   import §""d§.§,m§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §,"v§.§@§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §<"s§.TournamentUnlockedPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7"8§ extends EventDispatcher
   {
      
      public static const §3"L§:String = "badge_landed";
      
      public static const § "W§:String = "popup_opened";
      
      protected static const §&!N§:Number = 30;
      
      protected static const §7"!§:Number = 1500;
      
      protected static const §-#1§:String = "EndScreenEffectChannel";
       
      
      protected var §'"A§:§4!Q§;
      
      protected var §5&§:Boolean;
      
      protected var §5w§:Boolean;
      
      protected var §3!2§:Number;
      
      protected var §8!i§:Number;
      
      protected var §%"e§:Number = 0.0;
      
      protected var §,!z§:Number = 0.0;
      
      protected var §,r§:§,m§;
      
      protected var §4"f§:MovieClip;
      
      public function §7"8§(param1:§,m§)
      {
         super();
         this.§,r§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         this.§4"f§ = this.§,r§.getItemByName("MovieClip_TournamentUnlock").mClip;
         this.§4"f§.visible = false;
         this.§8!i§ = -1;
         this.§5&§ = false;
      }
      
      public function show() : void
      {
         this.§'"A§ = §41§.§-G§.§&#'§(this.§4"f§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§'"A§.delay = 1;
         this.§'"A§.onComplete = this.onBadgeLanded;
         this.§'"A§.§<"?§ = this.§3b§;
         this.§'"A§.play();
      }
      
      protected function §3b§() : void
      {
         this.§4"f§.visible = true;
      }
      
      public function dispose() : void
      {
         if(this.§'"A§)
         {
            this.§'"A§.stop();
            this.§'"A§ = null;
         }
         this.§8!i§ = -1;
         this.§5w§ = true;
         if(§;"@§.singleton.popupManager.isPopupOpenById(TournamentUnlockedPopup.§^"3§))
         {
            §;"@§.singleton.popupManager.§7M§(TournamentUnlockedPopup.§^"3§);
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§5&§ && !this.§5w§)
         {
            this.§3!2§ -= param1;
            if(this.§3!2§ <= 0)
            {
               this.§@"Z§();
            }
         }
         if(this.§8!i§ < 0)
         {
            return;
         }
         this.§,r§.x -= this.§%"e§;
         this.§,r§.y -= this.§,!z§;
         if(this.§8!i§ > 0)
         {
            this.§%"e§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,!z§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,r§.x += this.§%"e§;
            this.§,r§.y += this.§,!z§;
         }
         else
         {
            this.§%"e§ = 0;
            this.§,!z§ = 0;
         }
         this.§8!i§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §@§.§=Y§("Hiscore_Badge",§-#1§);
         this.§5w§ = false;
         this.§5&§ = true;
         this.§3!2§ = §7"!§;
         this.§!!6§();
         dispatchEvent(new Event(§3"L§));
      }
      
      protected function §@"Z§() : void
      {
         this.§5w§ = true;
         var _loc1_:§5!R§ = new TournamentUnlockedPopup(§0u§.§1"J§,§^T§.TOP,TournamentUnlockedPopup.§;T§);
         §;"@§.singleton.popupManager.openPopup(_loc1_,true,true,true);
         dispatchEvent(new Event(§ "W§));
      }
      
      private function §!!6§() : void
      {
         this.§%"e§ = 0;
         this.§,!z§ = 0;
         this.§8!i§ = §&!N§;
      }
   }
}
