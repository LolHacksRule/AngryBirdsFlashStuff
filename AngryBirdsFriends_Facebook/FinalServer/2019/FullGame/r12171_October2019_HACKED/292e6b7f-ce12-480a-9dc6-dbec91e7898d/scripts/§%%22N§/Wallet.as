package §%"N§
{
   import § $0§.§5R§;
   import §"N§.§^!r§;
   import §#"4§.§3";§;
   import §+!Y§.§[@§;
   import §,#,§.§=#o§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §9T§.§ "T§;
   import §>#q§.§^!"§;
   import §?Q§.§@#D§;
   import §]"U§.CoinShopPopup;
   import §`,§.§7!$§;
   import §`D§.NonSpenderAutoSalePopup;
   import §`D§.TabbedShopPopup;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §1k§
   {
      
      public static const §7#P§:String = "AddCoins";
      
      private static const §9"#§:String = "SALE_BUTTON";
      
      private static var §!#N§:Boolean = false;
       
      
      private var §;#'§:§+#?§;
      
      private var §&!>§:MovieClip;
      
      private var §,H§:Boolean;
      
      private var §["Y§:Boolean;
      
      private var §0"f§:Boolean;
      
      private var §,t§:Number;
      
      private var §#"m§:Number;
      
      private var §]!0§:Vector.<TextField>;
      
      private var §`#0§:§^!r§;
      
      public function Wallet(param1:§+#?§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§0!A§,this.§3!=§);
         this.§`#0§.addEventListener(§^!r§.§>^§,this.§0$D§);
         if(param4)
         {
            this.§#"m§ = 10;
            this.§,t§ = -24;
            if(!param2)
            {
               this.§#"m§ = 15;
               this.§,t§ = -5;
            }
         }
         else
         {
            this.§,t§ = 0;
            this.§#"m§ = 0;
         }
         this.§;#'§ = param1;
         this.§,H§ = param3;
         this.§["Y§ = param5;
         this.§0"f§ = param2;
         dataModel.§1q§.addEventListener(§5#z§.§?"P§,this.§1#i§);
         this.§5k§();
         this.§;!r§();
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      private function §5k§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§`#0§ && this.§`#0§.§+'§() && §[a§.§]$'§("WALLET_CAMPAIGN_" + this.§`#0§.§7S§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§`#0§.§7S§;
         }
         else if(§7!$§.§+!,§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §7!$§.§+!,§.tournamentRules.§"">§;
            if(§[a§.§]$'§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§&!>§ || this.§&!>§.name != _loc1_)
         {
            if(this.§&!>§)
            {
               if(this.§&!>§.parent)
               {
                  this.§&!>§.parent.removeChild(this.§&!>§);
               }
               this.§&!>§ = null;
            }
            _loc3_ = §[a§.§8#k§(_loc1_);
            this.§&!>§ = new _loc3_();
            this.§&!>§.x = this.§,t§;
            this.§&!>§.y = this.§#"m§;
            this.§&!>§.name = _loc1_;
            if(this.§;#'§.walletContainer)
            {
               this.§;#'§.walletContainer.addChild(this.§&!>§);
            }
            this.§&!>§.coinsAddButton.visible = this.§0"f§;
            this.§&!>§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§"$9§);
            this.§&!>§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§1q§.§#"+§);
            if(this.§&!>§[§9"#§])
            {
               this.§]!0§ = new Vector.<TextField>();
               _loc4_ = this.§&!>§[§9"#§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§]!0§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§&!>§[§9"#§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§]!0§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§&!>§[§9"#§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§]!0§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§&!>§[§9"#§].addEventListener(MouseEvent.CLICK,this.§=#M§);
            }
         }
         this.§;"I§();
      }
      
      private function §;"I§() : void
      {
         §!#N§ = false;
         if(§^!r§.§+!,§.§7S§ != §^!r§.NON_SPENDER_AUTO_SALE || !§^!r§.§+!,§.§+'§())
         {
            return;
         }
         if(§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§<"%§(§^!"§.§<"]§) == §^!r§.§+!,§.§?#m§)
         {
            return;
         }
         §!#N§ = true;
      }
      
      public function §!u§(param1:Boolean) : void
      {
         this.§&!>§.coinsAddButton.enabled = param1;
         this.§&!>§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§&!>§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §;!r§() : void
      {
         if(this.§&!>§[§9"#§])
         {
            if(this.§["Y§ && this.§`#0§ && this.§`#0§.§+'§())
            {
               this.§&!>§[§9"#§].visible = true;
            }
            else
            {
               this.§&!>§[§9"#§].visible = false;
            }
         }
      }
      
      public function get §`#8§() : MovieClip
      {
         return this.§&!>§;
      }
      
      private function §1#i§(param1:§5#z§) : void
      {
         if(this.§,H§)
         {
            this.animateGotCoins(param1.§;#t§);
         }
         this.setCoinsAmountText(param1.§5$&§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§&!>§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§&!>§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§&!>§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§&!>§.coinsTextfield.text = param1;
         }
      }
      
      private function §"$9§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§7#P§));
      }
      
      public function dispose() : void
      {
         if(this.§&!>§)
         {
            this.§&!>§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§"$9§);
            if(this.§&!>§.parent)
            {
               this.§&!>§.parent.removeChild(this.§&!>§);
            }
         }
         dataModel.§1q§.removeEventListener(§5#z§.§?"P§,this.§1#i§);
         if(this.§`#0§)
         {
            this.§`#0§.removeEventListener(§^!r§.§>^§,this.§0$D§);
            this.§`#0§.removeEventListener(§^!r§.§0!A§,this.§3!=§);
            this.§`#0§ = null;
         }
      }
      
      private function §0$D§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§&!>§)
         {
            if(this.§&!>§.birdCoin.currentFrame >= this.§&!>§.birdCoin.totalFrames)
            {
               this.§&!>§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§`#0§ && this.§["Y§)
         {
            _loc2_ = this.§`#0§.§^#J§();
            if(_loc2_ != this.§]!0§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§]!0§.length)
               {
                  if(this.§]!0§[_loc3_])
                  {
                     this.§]!0§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
         if(§!#N§)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§@#D§.NORMAL,§5R§.DEFAULT));
               §3";§.§#"'§().§0#P§(NonSpenderAutoSalePopup.ID,false);
               §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§<"]§,[§^!r§.§+!,§.§?#m§],true);
               §!#N§ = false;
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         § b§.playSound("Get_Coins",§ b§.§;$5§);
         var _loc2_:§%"C§ = new §%"C§(param1);
         this.§&!>§.addChild(_loc2_);
         this.§&!>§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §6#n§() : String
      {
         return "Wallet";
      }
      
      private function §=#M§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§`#0§)
         {
            return;
         }
         if(this.§`#0§.§7S§ == §^!r§.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.§=#A§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§@#D§.NORMAL,§5R§.DEFAULT));
            §3";§.§#"'§().§0#P§(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            _loc2_ = this.§`#0§.§;G§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT,"",TabbedShopPopup.§"#$§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT,§ "T§.§7z§.§8t§,TabbedShopPopup.§"#$§));
                  §3";§.§#"'§().§0#P§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT,§[@§.SLING_SHOT_GOLDEN.§8t§,TabbedShopPopup.§!!6§));
                  §3";§.§#"'§().§0#P§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP));
                  dispatchEvent(new Event(§7#P§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT,"",TabbedShopPopup.§"#$§,true));
            }
         }
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§5k§();
         this.§;!r§();
      }
   }
}
