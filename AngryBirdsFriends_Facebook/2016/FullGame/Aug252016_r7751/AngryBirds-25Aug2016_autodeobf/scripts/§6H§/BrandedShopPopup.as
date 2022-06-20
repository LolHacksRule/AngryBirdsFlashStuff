package §6H§
{
   import §%$!§.§%h§;
   import §'"-§.§`j§;
   import §+!u§.§"#B§;
   import §+"%§.§6X§;
   import §-"i§.§%!'§;
   import §4#%§.§@#@§;
   import §5"$§.§]!m§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §?"R§.AvatarCreatorPopup;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.utils.Timer;
   
   public class BrandedShopPopup extends AbstractPopup implements § 1§, §@#@§
   {
      
      public static const ID:String = "BrandedShopPopup";
      
      public static const §2!%§:String = "ExtraBirdSubscription";
      
      public static const §=2§:String = "TournamentLevelUnlockAll";
      
      public static const §+"g§:String = "Halloween2012Bundle";
      
      public static const §0#`§:String = "Halloween2012AvatarPack";
      
      private static const §!"_§:String = "In-app Shop Branded";
       
      
      private var §8# §:Boolean = false;
      
      private var § E§:Timer;
      
      private var §""g§:String = "";
      
      private var §2!v§:Boolean = false;
      
      public function BrandedShopPopup(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupTournamentShopPopupBranded[0],ID);
      }
      
      public static function §<!d§(param1:Class, param2:String) : void
      {
         §,"W§.§1w§(param2);
         if(param1 is § 1§)
         {
            §,"W§.trackPageView(param1 as § 1§);
         }
         §,!J§(param1);
      }
      
      public static function §,!J§(param1:Class) : void
      {
         var _loc2_:AbstractPopup = new param1(§[W§.NORMAL,§<d§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override protected function init() : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         §7!j§.mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.HalloweenUnlockBundleButton.addEventListener(MouseEvent.CLICK,this.§["R§);
         §7!j§.mClip.HalloweenUnlockLevelsButton.addEventListener(MouseEvent.CLICK,this.§>#H§);
         §7!j§.mClip.HalloweenUnlockVanHelsingButton.addEventListener(MouseEvent.CLICK,this.§,"L§);
         §7!j§.mClip.HalloweenUnlockAvatarPackButton.addEventListener(MouseEvent.CLICK,this.§"M§);
         §7!j§.mClip.addEventListener(Event.ENTER_FRAME,this.§0"z§);
         this.§ E§ = new Timer(2000,1);
         var _loc1_:Boolean = true;
         for each(_loc2_ in §]!m§.§3!]§.levelIDs)
         {
            _loc1_ = _loc1_ && §]!m§.§3!]§.isLevelOpen(_loc2_);
         }
         _loc3_ = false;
         if(§%h§.§3!]§.§"#k§(§`j§.§="-§.§"!E§) > 0)
         {
            _loc3_ = true;
         }
         §7!j§.mClip.HalloweenUnlockLevelsButton.visible = !_loc1_;
         §7!j§.mClip.HalloweenUnlockVanHelsingButton.visible = !_loc3_;
         §7!j§.mClip.HalloweenUnlockAvatarPackButton.visible = true;
         var _loc5_:int = 0;
         if(_loc1_)
         {
            _loc5_++;
         }
         if(_loc3_)
         {
            _loc5_++;
         }
         if(_loc5_ >= 2)
         {
            §7!j§.mClip.HalloweenUnlockBundleButton.visible = false;
         }
         else
         {
            §7!j§.mClip.HalloweenUnlockBundleButton.visible = true;
         }
      }
      
      private function §0"z§(param1:Event) : void
      {
         var _loc2_:Array = §]!m§.§3!]§.§=>§();
         var _loc3_:String = (_loc2_[0] as String).replace(" Left","");
         §7!j§.mClip.Textfield_ShopTimer.text.text = _loc3_;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §6X§.addCallback("purchaseComplete",this.§2!i§);
         §6X§.addCallback("purchaseFailed",this.§@g§);
         §,"W§.trackPageView(this);
      }
      
      private function §["R§(param1:MouseEvent) : void
      {
         this.buyItem(§+"g§);
      }
      
      private function §>#H§(param1:MouseEvent) : void
      {
         this.buyItem(§=2§);
      }
      
      private function §,"L§(param1:MouseEvent) : void
      {
         this.§2!v§ = true;
         this.buyItem(§2!%§);
      }
      
      private function §"M§(param1:MouseEvent) : void
      {
         this.buyItem(§0#`§);
      }
      
      override public function dispose() : void
      {
         §6X§.§5!3§("purchaseComplete",this.§2!i§);
         §6X§.§5!3§("purchaseFailed",this.§@g§);
         §7!j§.mClip.removeEventListener(Event.ENTER_FRAME,this.§0"z§);
         if(this.§8# §)
         {
            this.§ E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
            this.§8# § = false;
         }
         if(this.§2!v§)
         {
            this.§2!v§ = false;
            §%h§.§3!]§.§=L§();
         }
         super.dispose();
      }
      
      private function buyItem(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            if(!this.§8# §)
            {
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.§3U§("placeOrder",param1);
               this.§8# § = true;
               this.§""g§ = param1;
               this.§ E§.reset();
               this.§ E§.start();
               this.§ E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
               §,"W§.§8`§(param1,1);
            }
         }
      }
      
      private function §;#z§(param1:TimerEvent) : void
      {
         this.§ E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
         this.§8# § = false;
      }
      
      private function §@g§() : void
      {
         this.§""g§ = "";
      }
      
      private function §2!i§(param1:String, param2:Number) : void
      {
         var _loc3_:AvatarCreatorPopup = null;
         this.§2!v§ = false;
         if(this.§""g§)
         {
            switch(this.§""g§)
            {
               case §=2§:
                  if(AngryBirdsBase.singleton.§ "-§() is §"#B§)
                  {
                     this.§+#B§();
                  }
                  else
                  {
                     AngryBirdsBase.singleton.§7P§(§%!'§.STATE_NAME);
                  }
                  break;
               case §+"g§:
                  if(AngryBirdsBase.singleton.§ "-§() is §"#B§)
                  {
                     this.§+#B§();
                  }
                  else
                  {
                     AngryBirdsBase.singleton.§7P§(§%!'§.STATE_NAME);
                  }
                  break;
               case §2!%§:
                  if(AngryBirdsBase.singleton.§ "-§() is §"#B§)
                  {
                     this.§+#B§();
                     break;
                  }
                  break;
               case §0#`§:
                  _loc3_ = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.DEFAULT,"CATEGORYBOTTOM");
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            §,"W§.§9!C§(this.§""g§,1);
            §,"W§.trackPageView(this,§,"W§.§=!b§);
            §,"W§.trackTransaction(param1,§!"_§,this.§""g§,this.§""g§,this.§""g§,param2,1,0);
            this.§""g§ = "";
         }
         close();
      }
      
      private function §+#B§() : void
      {
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§]f§;
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
   }
}
