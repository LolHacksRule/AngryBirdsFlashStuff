package §<M§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §#Q§.§ l§;
   import §-"e§.§[9§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §4#l§.NonSpenderAutoSalePopup;
   import §4#l§.TabbedShopPopup;
   import §4$A§.§=$5§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §<"I§.§<$B§;
   import §>#Y§.§,#b§;
   import §@!_§.§ !G§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §=$5§
   {
      
      public static const §2!M§:String = "AddCoins";
      
      private static const §`"g§:String = "SALE_BUTTON";
      
      private static var §0!X§:Boolean = false;
       
      
      private var §'o§:§;"P§;
      
      private var §+$@§:MovieClip;
      
      private var §=O§:Boolean;
      
      private var §"N§:Boolean;
      
      private var §9"=§:Boolean;
      
      private var §[$C§:Number;
      
      private var §^!'§:Number;
      
      private var §&"L§:Vector.<TextField>;
      
      private var §^!d§:§ l§;
      
      public function Wallet(param1:§;"P§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§-"i§,this.§>#q§);
         this.§^!d§.addEventListener(§ l§.§%,§,this.§<$@§);
         if(param4)
         {
            this.§^!'§ = 10;
            this.§[$C§ = -24;
            if(!param2)
            {
               this.§^!'§ = 15;
               this.§[$C§ = -5;
            }
         }
         else
         {
            this.§[$C§ = 0;
            this.§^!'§ = 0;
         }
         this.§'o§ = param1;
         this.§=O§ = param3;
         this.§"N§ = param5;
         this.§9"=§ = param2;
         dataModel.§%$;§.addEventListener(§2"B§.§9"2§,this.§1"F§);
         this.§#$>§();
         this.§]"R§();
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      private function §#$>§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§^!d§ && this.§^!d§.§7"O§() && §=@§.§8!l§("WALLET_CAMPAIGN_" + this.§^!d§.§>!`§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§^!d§.§>!`§;
         }
         else if(§5"L§.§3"1§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §5"L§.§3"1§.tournamentRules.§,d§;
            if(§=@§.§8!l§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§+$@§ || this.§+$@§.name != _loc1_)
         {
            if(this.§+$@§)
            {
               if(this.§+$@§.parent)
               {
                  this.§+$@§.parent.removeChild(this.§+$@§);
               }
               this.§+$@§ = null;
            }
            _loc3_ = §=@§.§9!x§(_loc1_);
            this.§+$@§ = new _loc3_();
            this.§+$@§.x = this.§[$C§;
            this.§+$@§.y = this.§^!'§;
            this.§+$@§.name = _loc1_;
            if(this.§'o§.walletContainer)
            {
               this.§'o§.walletContainer.addChild(this.§+$@§);
            }
            this.§+$@§.coinsAddButton.visible = this.§9"=§;
            this.§+$@§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§1!X§);
            this.§+$@§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§%$;§.§5"i§);
            if(this.§+$@§[§`"g§])
            {
               this.§&"L§ = new Vector.<TextField>();
               _loc4_ = this.§+$@§[§`"g§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§&"L§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§+$@§[§`"g§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§&"L§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§+$@§[§`"g§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§&"L§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§+$@§[§`"g§].addEventListener(MouseEvent.CLICK,this.§"#U§);
            }
         }
         this.§'"e§();
      }
      
      private function §'"e§() : void
      {
         §0!X§ = false;
         if(§ l§.§3"1§.§>!`§ != § l§.NON_SPENDER_AUTO_SALE || !§ l§.§3"1§.§7"O§())
         {
            return;
         }
         if(§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§6!D§(§ !G§.§`#%§) == § l§.§3"1§.§!"u§)
         {
            return;
         }
         §0!X§ = true;
      }
      
      public function §1#?§(param1:Boolean) : void
      {
         this.§+$@§.coinsAddButton.enabled = param1;
         this.§+$@§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§+$@§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §]"R§() : void
      {
         if(this.§+$@§[§`"g§])
         {
            if(this.§"N§ && this.§^!d§ && this.§^!d§.§7"O§())
            {
               this.§+$@§[§`"g§].visible = true;
            }
            else
            {
               this.§+$@§[§`"g§].visible = false;
            }
         }
      }
      
      public function get §6""§() : MovieClip
      {
         return this.§+$@§;
      }
      
      private function §1"F§(param1:§2"B§) : void
      {
         if(this.§=O§)
         {
            this.animateGotCoins(param1.§'&§);
         }
         this.setCoinsAmountText(param1.§7!H§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§+$@§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§+$@§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§+$@§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§+$@§.coinsTextfield.text = param1;
         }
      }
      
      private function §1!X§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§2!M§));
      }
      
      public function dispose() : void
      {
         if(this.§+$@§)
         {
            this.§+$@§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§1!X§);
            if(this.§+$@§.parent)
            {
               this.§+$@§.parent.removeChild(this.§+$@§);
            }
         }
         dataModel.§%$;§.removeEventListener(§2"B§.§9"2§,this.§1"F§);
         if(this.§^!d§)
         {
            this.§^!d§.removeEventListener(§ l§.§%,§,this.§<$@§);
            this.§^!d§.removeEventListener(§ l§.§-"i§,this.§>#q§);
            this.§^!d§ = null;
         }
      }
      
      private function §<$@§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§+$@§)
         {
            if(this.§+$@§.birdCoin.currentFrame >= this.§+$@§.birdCoin.totalFrames)
            {
               this.§+$@§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§^!d§ && this.§"N§)
         {
            _loc2_ = this.§^!d§.§&!§();
            if(_loc2_ != this.§&"L§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§&"L§.length)
               {
                  if(this.§&"L§[_loc3_])
                  {
                     this.§&"L§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
         if(§0!X§)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§-!S§.NORMAL,§## §.DEFAULT));
               §]!P§.§1!7§().§9a§(NonSpenderAutoSalePopup.ID,false);
               §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§`#%§,[§ l§.§3"1§.§!"u§],true);
               §0!X§ = false;
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         §4$4§.playSound("Get_Coins",§4$4§.§1#l§);
         var _loc2_:§0#g§ = new §0#g§(param1);
         this.§+$@§.addChild(_loc2_);
         this.§+$@§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §9M§() : String
      {
         return "Wallet";
      }
      
      private function §"#U§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§^!d§)
         {
            return;
         }
         if(this.§^!d§.§>!`§ == § l§.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.§=!P§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§-!S§.NORMAL,§## §.DEFAULT));
            §]!P§.§1!7§().§9a§(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            _loc2_ = this.§^!d§.§4!7§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT,"",TabbedShopPopup.§"5§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT,§<$B§.§0"s§.§=#@§,TabbedShopPopup.§"5§));
                  §]!P§.§1!7§().§9a§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT,§[9§.SLING_SHOT_GOLDEN.§=#@§,TabbedShopPopup.§1"d§));
                  §]!P§.§1!7§().§9a§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§-!S§.NORMAL,§## §.TOP));
                  dispatchEvent(new Event(§2!M§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT,"",TabbedShopPopup.§"5§,true));
            }
         }
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
      }
      
      private function §>#q§(param1:Event) : void
      {
         this.§#$>§();
         this.§]"R§();
      }
   }
}
