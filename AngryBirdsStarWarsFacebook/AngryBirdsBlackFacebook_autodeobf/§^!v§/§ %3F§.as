package §^!v§
{
   import §!"e§.TournamentUnlockedPopup;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class § ?§ extends EventDispatcher
   {
      
      public static const §[!9§:String = "badge_landed";
      
      public static const §="<§:String = "popup_opened";
      
      protected static const §`">§:Number = 30;
      
      protected static const §?d§:Number = 1500;
      
      protected static const §`O§:String = "EndScreenEffectChannel";
       
      
      protected var §##@§:§[#R§;
      
      protected var §7#Z§:Boolean;
      
      protected var §4P§:Boolean;
      
      protected var §^#7§:Number;
      
      protected var §@1§:Number;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §^c§:§ #^§;
      
      protected var §7"o§:MovieClip;
      
      public function § ?§(param1:§ #^§)
      {
         super();
         this.§^c§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         this.§7"o§ = this.§^c§.getItemByName("MovieClip_TournamentUnlock").mClip;
         this.§7"o§.visible = false;
         this.§@1§ = -1;
         this.§7#Z§ = false;
      }
      
      public function show() : void
      {
         this.§##@§ = §-#C§.§%!E§.§^!H§(this.§7"o§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§##@§.delay = 1;
         this.§##@§.onComplete = this.onBadgeLanded;
         this.§##@§.§0!X§ = this.§8!0§;
         this.§##@§.play();
      }
      
      protected function §8!0§() : void
      {
         this.§7"o§.visible = true;
      }
      
      public function dispose() : void
      {
         if(this.§##@§)
         {
            this.§##@§.stop();
            this.§##@§ = null;
         }
         this.§@1§ = -1;
         this.§4P§ = true;
         if(§4#;§.singleton.popupManager.isPopupOpenById(TournamentUnlockedPopup.§%!h§))
         {
            §4#;§.singleton.popupManager.§,"o§(TournamentUnlockedPopup.§%!h§);
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7#Z§ && !this.§4P§)
         {
            this.§^#7§ -= param1;
            if(this.§^#7§ <= 0)
            {
               this.§`+§();
            }
         }
         if(this.§@1§ < 0)
         {
            return;
         }
         this.§^c§.x -= this.§3#S§;
         this.§^c§.y -= this.§"#Q§;
         if(this.§@1§ > 0)
         {
            this.§3#S§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§"#Q§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§^c§.x += this.§3#S§;
            this.§^c§.y += this.§"#Q§;
         }
         else
         {
            this.§3#S§ = 0;
            this.§"#Q§ = 0;
         }
         this.§@1§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §?!r§.§"#_§("Hiscore_Badge",§`O§);
         this.§4P§ = false;
         this.§7#Z§ = true;
         this.§^#7§ = §?d§;
         this.§[!?§();
         dispatchEvent(new Event(§[!9§));
      }
      
      protected function §`+§() : void
      {
         this.§4P§ = true;
         var _loc1_:§[!j§ = new TournamentUnlockedPopup(§`"W§.§+v§,§+5§.TOP,TournamentUnlockedPopup.§""l§);
         §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
         dispatchEvent(new Event(§="<§));
      }
      
      private function §[!?§() : void
      {
         this.§3#S§ = 0;
         this.§"#Q§ = 0;
         this.§@1§ = §`">§;
      }
   }
}
