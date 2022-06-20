package §#!s§
{
   import §%$!§.§+3§;
   import §3!T§.§5"8§;
   import §4#%§.§@#@§;
   import §8§.§#$+§;
   import §>!#§.§-#A§;
   import §>!#§.§9#a§;
   import §>q§.CoinShopPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class Wallet extends EventDispatcher implements §@#@§
   {
      
      public static const §?u§:String = "AddCoins";
       
      
      private var §7!j§:§@J§;
      
      private var §1f§:MovieClip;
      
      private var §=#;§:Boolean;
      
      public function Wallet(param1:§@J§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         var _loc6_:Class = null;
         super();
         if(param5)
         {
            _loc6_ = §@`§.§4!i§("VirtualCoinWallet_small");
         }
         else
         {
            _loc6_ = §@`§.§4!i§("VirtualCoinWallet");
         }
         this.§1f§ = new _loc6_();
         if(param4)
         {
            this.§1f§.y = 10;
            this.§1f§.x = -24;
            if(!param2)
            {
               this.§1f§.y = 15;
               this.§1f§.x = -5;
            }
         }
         param1.walletContainer.addChild(this.§1f§);
         this.§=#;§ = param3;
         this.§7!j§ = param1;
         this.§1f§.coinsAddButton.visible = param2;
         this.§1f§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§#[§);
         this.§1f§.birdCoin.gotoAndStop("Normal");
         dataModel.§<$&§.addEventListener(§0G§.§ !&§,this.§3!=§);
         this.§9"'§(dataModel.§<$&§.§[#u§);
         this.§?#R§();
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      public function §<!x§(param1:Boolean) : void
      {
         this.§1f§.coinsAddButton.enabled = param1;
         this.§1f§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§1f§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §?#R§() : void
      {
         var _loc1_:Boolean = this.§1f§.coinsAddButton.visible && §+3§(AngryBirdsBase.singleton.dataModel).§`#B§;
         this.§1f§.Tag_Sale_Wallet.visible = _loc1_;
         this.§1f§.Tag_Sale_Wallet.enabled = false;
         this.§0$7§();
      }
      
      public function §0$7§() : void
      {
         var _loc1_:Boolean = this.§1f§.coinsAddButton.visible && §+3§(AngryBirdsBase.singleton.dataModel).§5`§.length > 0;
         this.§1f§.Tag_New_Wallet.visible = _loc1_;
         this.§1f§.Tag_New_Wallet.enabled = false;
      }
      
      public function get §<c§() : MovieClip
      {
         return this.§1f§;
      }
      
      private function §3!=§(param1:§0G§) : void
      {
         if(this.§=#;§)
         {
            this.§ true§(param1.§6#>§);
         }
         this.§9"'§(param1.§`!"§);
      }
      
      public function §9"'§(param1:*) : void
      {
         this.§1f§.coinsTextfield.text = §9#a§.§^#&§(param1);
      }
      
      private function §#[§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§?u§));
         §-#A§.§6$2§().§ "V§("SHOP_VC");
      }
      
      public function dispose() : void
      {
         if(this.§1f§)
         {
            this.§1f§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§#[§);
         }
         §>"$§.§<_§.removeEventListener(§5"8§.§>#x§,this.onEnterFrame);
         dataModel.§<$&§.removeEventListener(§0G§.§ !&§,this.§3!=§);
         if(this.§7!j§ && this.§7!j§.walletContainer)
         {
            if(this.§7!j§.walletContainer.contains(this.§1f§))
            {
               this.§7!j§.walletContainer.removeChild(this.§1f§);
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1f§)
         {
            if(this.§1f§.birdCoin.currentFrame >= this.§1f§.birdCoin.totalFrames)
            {
               this.§1f§.birdCoin.gotoAndStop("Normal");
               §>"$§.§<_§.removeEventListener(§5"8§.§>#x§,this.onEnterFrame);
            }
         }
      }
      
      public function § true§(param1:int) : void
      {
         §#$+§.playSound("Get_Coins",§#$+§.§'!o§);
         var _loc2_:§5z§ = new §5z§(param1);
         this.§1f§.addChild(_loc2_);
         this.§1f§.birdCoin.gotoAndPlay("GetCoins");
         §>"$§.§<_§.addEventListener(§5"8§.§>#x§,this.onEnterFrame);
      }
      
      public function §<$#§() : String
      {
         return "Wallet";
      }
   }
}
