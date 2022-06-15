package §!"D§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §-!q§.§=p§;
   import §3!7§.§>,§;
   import §3!7§.§?!F§;
   import §7-§.§,!C§;
   import §<a§.§+!B§;
   import §[!K§.§-k§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.utils.Timer;
   
   public class §6!X§ extends Popup
   {
      
      public static const §#!G§:String = "ExtraBirdSubscription";
      
      public static const §=X§:String = "TournamentLevelUnlockAll";
      
      public static const §"V§:String = "Halloween2012Bundle";
      
      public static const §<!6§:String = "Halloween2012AvatarPack";
       
      
      private var §;y§:Boolean = false;
      
      private var §?7§:Timer;
      
      private var §%!%§:String = "";
      
      private var §?!=§:Boolean = false;
      
      public function §6!X§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         super(§ "A§.§4[§.Views.PopupTournamentShopPopupBranded[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.HalloweenUnlockBundleButton.addEventListener(MouseEvent.CLICK,this.§%"3§);
         mClip.HalloweenUnlockLevelsButton.addEventListener(MouseEvent.CLICK,this.§5"C§);
         mClip.HalloweenUnlockVanHelsingButton.addEventListener(MouseEvent.CLICK,this.§!r§);
         mClip.HalloweenUnlockAvatarPackButton.addEventListener(MouseEvent.CLICK,this.§]!w§);
         mClip.addEventListener(Event.ENTER_FRAME,this.§6g§);
         this.§?7§ = new Timer(2000,1);
         var _loc3_:Boolean = true;
         for each(_loc4_ in §,!C§.§;"§.§-&§)
         {
            _loc3_ = _loc3_ && §,!C§.§;"§.isLevelOpen(_loc4_);
         }
         _loc5_ = false;
         if(§?!F§.§;"§.§9K§(§>,§.§," §.§]6§) > 0)
         {
            _loc5_ = true;
         }
         var _loc6_:Boolean = false;
         if(§?!F§.§;"§.§2!h§.§2! §(§<!6§) || §?!F§.§;"§.§2!h§.§2! §(§"V§))
         {
            _loc6_ = true;
         }
         mClip.HalloweenUnlockLevelsButton.visible = !_loc3_;
         mClip.HalloweenUnlockVanHelsingButton.visible = !_loc5_;
         mClip.HalloweenUnlockAvatarPackButton.visible = !_loc6_;
         var _loc7_:int = 0;
         if(_loc3_)
         {
            _loc7_++;
         }
         if(_loc5_)
         {
            _loc7_++;
         }
         if(_loc6_)
         {
            _loc7_++;
         }
         if(_loc7_ >= 2)
         {
            mClip.HalloweenUnlockBundleButton.visible = false;
         }
         else
         {
            mClip.HalloweenUnlockBundleButton.visible = true;
         }
      }
      
      private function §6g§(param1:Event) : void
      {
         var _loc2_:Array = §,!C§.§;"§.§0!V§();
         var _loc3_:String = (_loc2_[0] as String).replace(" Left","");
         mClip.Textfield_ShopTimer.text.text = _loc3_;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@!]§.addCallback("purchaseComplete",this.§+!s§);
         §@!]§.addCallback("purchaseFailed",this.§4!G§);
      }
      
      private function §%"3§(param1:MouseEvent) : void
      {
         this.§?!m§(§"V§);
      }
      
      private function §5"C§(param1:MouseEvent) : void
      {
         this.§?!m§(§=X§);
      }
      
      private function §!r§(param1:MouseEvent) : void
      {
         this.§?!=§ = true;
         this.§?!m§(§#!G§);
      }
      
      private function §]!w§(param1:MouseEvent) : void
      {
         this.§?!m§(§<!6§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §@!]§.§[">§("purchaseComplete",this.§+!s§);
         §@!]§.§[">§("purchaseFailed",this.§4!G§);
         if(this.§;y§)
         {
            this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
            this.§;y§ = false;
         }
         if(this.§?!=§)
         {
            this.§?!=§ = false;
            §?!F§.§;"§.§-Y§();
         }
      }
      
      private function §?!m§(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            if(!this.§;y§)
            {
               AngryBirdsFP11.§@<§.§#m§();
               §@!]§.§9"'§("placeOrder",param1);
               this.§;y§ = true;
               this.§%!%§ = param1;
               this.§?7§.reset();
               this.§?7§.start();
               this.§?7§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
               §+!B§.§1n§(param1,1);
            }
         }
      }
      
      private function §]!#§(param1:TimerEvent) : void
      {
         this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
         this.§;y§ = false;
      }
      
      private function §4!G§() : void
      {
         this.§%!%§ = "";
      }
      
      private function §+!s§() : void
      {
         this.§?!=§ = false;
         if(this.§%!%§)
         {
            switch(this.§%!%§)
            {
               case §=X§:
                  if(§3T§.§67§.§>k§() is §=p§)
                  {
                     this.§8![§();
                  }
                  else
                  {
                     §3T§.§67§.§=!w§(§-k§.STATE_NAME);
                  }
                  break;
               case §"V§:
                  if(§3T§.§67§.§>k§() is §=p§)
                  {
                     this.§8![§();
                  }
                  else
                  {
                     §3T§.§67§.§=!w§(§-k§.STATE_NAME);
                  }
                  break;
               case §#!G§:
                  if(§3T§.§67§.§>k§() is §=p§)
                  {
                     this.§8![§();
                  }
                  break;
               case §<!6§:
                  §%?§.§9$§("CATEGORYBOTTOM");
            }
            §+!B§.§,Z§(this.§%!%§,1);
            this.§%!%§ = "";
         }
         this.close();
      }
      
      private function §8![§() : void
      {
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         mClip.removeEventListener(Event.ENTER_FRAME,this.§6g§);
         super.close();
      }
   }
}
