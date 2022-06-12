package §?"R§
{
   import §"!U§.§=#V§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'"-§.§`j§;
   import §+!d§.§3§;
   import §1!@§.§&#a§;
   import §4#%§.§@#@§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §;!H§.§%"K§;
   import §;!H§.§9R§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import §^$4§.§2#I§;
   import §^$4§.§>"T§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class QuickPurchasePopup extends AbstractPopup implements §@#@§, § 1§, §@J§
   {
      
      public static const ID:String = "QuickPurchasePopup";
      
      private static const §!"_§:String = "Quick Purchase";
       
      
      private var §<!8§:String = "";
      
      private var §^p§:String = "";
      
      private var §""Q§:§=#V§;
      
      private var §#!r§:Boolean;
      
      private var §6!&§:§9R§;
      
      private var §;"3§:Timer;
      
      private var §^m§:Wallet;
      
      private var §`#n§:Number;
      
      public function QuickPurchasePopup(param1:MovieClip, param2:String, param3:§=#V§, param4:int, param5:int)
      {
         super(param4,param5,§@#`§.§#!c§.Views.PopupView_QuickPurchasePopup[0],ID);
         this.§<!8§ = param2;
         this.§""Q§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:MovieClip = null;
         super.show(param1);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§+!m§);
         (§7!j§.getItemByName("TextField_Header") as §]$!§).setText(this.§<!8§);
         (§7!j§.getItemByName("Textfield_QuickPurchase_Quantity") as §]$!§).setText("x" + this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).totalQuantity.toString());
         var _loc2_:Number = this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).campaignPrice > 0 ? Number(this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).campaignPrice) : Number(this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).price);
         var _loc3_:String = this.§""Q§.currencyID == "IVC" ? _loc2_.toString() : (AngryBirdsBase.singleton.dataModel as §+3§).currencyModel.getPriceTag(_loc2_,true,"",this.§""Q§.currencyID);
         (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).setText(_loc3_);
         (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).mClip.mouseEnabled = false;
         (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).mClip.mouseChildren = false;
         this.§#!r§ = this.§""Q§.currencyID == "IVC";
         (§7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin") as §="T§).visible = this.§#!r§;
         (§7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin") as §="T§).mClip.mouseEnabled = false;
         (§7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin") as §="T§).mClip.mouseChildren = false;
         if(this.§#!r§ && _loc2_.toString().length > 2)
         {
            §7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin").mClip.x = §7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin").mClip.x - 10;
         }
         else if(!this.§#!r§)
         {
            (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).mClip.x = (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).mClip.x - 20;
         }
         switch(this.§""Q§.id)
         {
            case §`j§.§6#z§.§"!E§:
               _loc4_ = "SuperSeedsIcon";
               break;
            case §`j§.§-"f§.§"!E§:
               _loc4_ = "KingSlingIcon";
               break;
            case §`j§.§-"5§.§"!E§:
               _loc4_ = "SlingScopeIcon";
               break;
            case §`j§.§5"j§.§"!E§:
               _loc4_ = "BirdQuakeIcon";
               break;
            case §`j§.§="-§.§"!E§:
               _loc4_ = "ExtraBirdIcon";
               break;
            case §`j§.§+"4§.§"!E§:
               _loc4_ = "MushroomIcon";
               break;
            case §`j§.§@!V§.§"!E§:
               _loc4_ = "MightyEagleIcon";
               break;
            case §3#8§.§]F§.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.§]F§.§"!E§;
               break;
            case §3#8§.§&##§.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.§&##§.§"!E§;
               break;
            case §3#8§.§=#N§.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.§=#N§.§"!E§;
               break;
            case §3#8§.SLING_SHOT_GOLDEN.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.SLING_SHOT_GOLDEN.§"!E§;
               break;
            case §3#8§.§9$"§.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.§9$"§.§"!E§;
               break;
            case §3#8§.§ "Z§.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.§ "Z§.§"!E§;
               break;
            case §3#8§.SLING_SHOT_BOUNCY.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.SLING_SHOT_BOUNCY.§"!E§;
               break;
            case §3#8§.SLING_SHOT_DIAMOND.§"!E§:
               _loc4_ = "Icon_Slingshot_" + §3#8§.SLING_SHOT_DIAMOND.§"!E§;
         }
         if(_loc4_)
         {
            _loc6_ = new §@`§.§4!i§(_loc4_)();
            _loc6_.scaleX = _loc6_.scaleY = _loc6_.scaleY * (_loc4_.indexOf("Icon_Slingshot_") != -1 ? 1.5 : 2);
            _loc6_.y -= _loc4_.indexOf("Icon_Slingshot_") != -1 ? 20 : 0;
            §7!j§.mClip.MovieClip_QuickPurchase_Icon.addChild(_loc6_);
         }
         this.§<n§();
         this.§]j§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      private function §<n§() : void
      {
         this.§%#,§(new Wallet(this,true,true));
         this.§^m§.§<c§.visible = true;
         this.§`#n§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         this.§^m§.§9"'§(this.§`#n§);
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.getItemByName("walletContainer").mClip;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §+!m§(param1:MouseEvent) : void
      {
         var _loc3_:§%"K§ = null;
         var _loc2_:* = this.§""Q§.currencyID == "IVC";
         this.§]j§(false);
         if(_loc2_)
         {
            _loc3_ = new §%"K§(this.§""Q§,this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1),ID,§>"$§.§3#'§.currentLevel.name);
            _loc3_.addEventListener(§>"T§.§>"d§,this.§[![§);
            _loc3_.addEventListener(§>"T§.§-b§,this.§9"L§);
         }
         else
         {
            if(this.§6!&§)
            {
               this.§6!&§.removeEventListeners();
               this.§6!&§ = null;
            }
            this.§6!&§ = new §9R§(this.§""Q§,this.§""Q§.getPricePoint(0),§9R§.§0",§,ID,§>"$§.§3#'§.currentLevel.name);
            this.§6!&§.addEventListener(§>"T§.§3#-§,this.§!"<§);
            this.§6!&§.addEventListener(§>"T§.§-b§,this.§2!_§);
            this.§;"3§ = new Timer(2000,1);
            this.§;"3§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
            this.§;"3§.start();
         }
      }
      
      private function §]j§(param1:Boolean) : void
      {
         if(!§7!j§)
         {
            return;
         }
         §7!j§.mClip.mouseEnabled = param1;
         §7!j§.mClip.mouseChildren = param1;
         if(this.§#!r§)
         {
            (§7!j§.getItemByName("MovieClip_QuickPurchase_BirdCoin") as §="T§).visible = param1;
         }
         (§7!j§.getItemByName("Textfield_QuickPurchase_Amount") as §]$!§).setVisibility(param1);
         §7!j§.mClip.btnOk.visible = param1;
         (§7!j§.getItemByName("MovieClip_LoadingImage") as §="T§).setVisibility(!param1);
      }
      
      protected function §9"L§(param1:§>"T§) : void
      {
         §%h§.§3!]§.§=L§();
         this.§]j§(true);
         this.§=#r§();
      }
      
      protected function §=#r§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §[![§(param1:§>"T§) : void
      {
         var _loc2_:§%"K§ = param1.currentTarget as §%"K§;
         _loc2_.removeEventListener(§>"T§.§>"d§,this.§[![§);
         §&#a§.§[!;§(_loc2_.§^$2§);
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         Number(_loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price));
         §%h§.§3!]§.§=L§();
         this.§]j§(true);
         dispatchEvent(new §2#I§(§2#I§.§-"`§,_loc2_.§^$2§.id));
         close();
      }
      
      protected function §!"<§(param1:§>"T§) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:§9R§ = param1.currentTarget as §9R§;
         _loc2_.removeEventListener(§>"T§.§3#-§,this.§!"<§);
         _loc2_.removeEventListener(§>"T§.§-b§,this.§2!_§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
         }
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §,"W§.§9!C§(_loc2_.§^$2§.id,this.§6!&§.pricePoint.totalQuantity);
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         if(_loc2_.pricePoint)
         {
            _loc4_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            {
               "product":_loc2_.§^$2§.id,
               "pricePoint":_loc4_
            };
            §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc4_ + " x",_loc4_,1,0);
         }
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
         _loc2_.removeEventListeners();
         §%h§.§3!]§.§=L§();
         dispatchEvent(new §2#I§(§2#I§.§-"`§,_loc2_.§^$2§.id));
         close();
      }
      
      protected function §2!_§(param1:§>"T§) : void
      {
         this.§=#r§(param1.errorMessage,param1.§9!]§,param1.errorCode.toString());
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
         this.§]j§(true);
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§-!+§;
      }
      
      public function §,2§() : void
      {
         this.§]j§(true);
      }
      
      private function §;#z§(param1:TimerEvent) : void
      {
         if(this.§;"3§)
         {
            this.§;"3§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
         }
         this.§]j§(true);
      }
   }
}
