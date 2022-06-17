package §,#C§
{
   import § O§.§7!S§;
   import §!!?§.NonSpenderAutoSalePopup;
   import §!!?§.TabbedShopPopup;
   import §!§.§="D§;
   import §%4§.CoinShopPopup;
   import §'#g§.§&"Y§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §-#R§.§0!w§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?§.§<$?§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §="D§
   {
      
      public static const §;#D§:String = "AddCoins";
      
      private static const §?"[§:String = "SALE_BUTTON";
      
      private static var §3"e§:Boolean = false;
       
      
      private var §8#Y§:§["b§;
      
      private var §=$§:MovieClip;
      
      private var §##e§:Boolean;
      
      private var §""-§:Boolean;
      
      private var §3"u§:Boolean;
      
      private var §`!I§:Number;
      
      private var §-#G§:Number;
      
      private var §<!;§:Vector.<TextField>;
      
      private var §<#E§:§<$?§;
      
      public function Wallet(param1:§["b§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§ !O§,this.§;8§);
         this.§<#E§.addEventListener(§<$?§.§;"I§,this.§3"N§);
         if(param4)
         {
            this.§-#G§ = 10;
            this.§`!I§ = -24;
            if(!param2)
            {
               this.§-#G§ = 15;
               this.§`!I§ = -5;
            }
         }
         else
         {
            this.§`!I§ = 0;
            this.§-#G§ = 0;
         }
         this.§8#Y§ = param1;
         this.§##e§ = param3;
         this.§""-§ = param5;
         this.§3"u§ = param2;
         dataModel.§8!8§.addEventListener(§<! §.§1#5§,this.§>#6§);
         this.§1"p§();
         this.§0$!§();
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      private function §1"p§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§<#E§ && this.§<#E§.§4u§() && §2"O§.§;#m§("WALLET_CAMPAIGN_" + this.§<#E§.§9,§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§<#E§.§9,§;
         }
         else if(§^"C§.§?q§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §^"C§.§?q§.tournamentRules.§9d§;
            if(§2"O§.§;#m§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§=$§ || this.§=$§.name != _loc1_)
         {
            if(this.§=$§)
            {
               if(this.§=$§.parent)
               {
                  this.§=$§.parent.removeChild(this.§=$§);
               }
               this.§=$§ = null;
            }
            _loc3_ = §2"O§.§`>§(_loc1_);
            this.§=$§ = new _loc3_();
            this.§=$§.x = this.§`!I§;
            this.§=$§.y = this.§-#G§;
            this.§=$§.name = _loc1_;
            if(this.§8#Y§.walletContainer)
            {
               this.§8#Y§.walletContainer.addChild(this.§=$§);
            }
            this.§=$§.coinsAddButton.visible = this.§3"u§;
            this.§=$§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§!!g§);
            this.§=$§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§8!8§.§"$6§);
            if(this.§=$§[§?"[§])
            {
               this.§<!;§ = new Vector.<TextField>();
               _loc4_ = this.§=$§[§?"[§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§<!;§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§=$§[§?"[§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§<!;§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§=$§[§?"[§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§<!;§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§=$§[§?"[§].addEventListener(MouseEvent.CLICK,this.§'!2§);
            }
         }
         this.§-"<§();
      }
      
      private function §-"<§() : void
      {
         §3"e§ = false;
         if(§<$?§.§?q§.§9,§ != §<$?§.NON_SPENDER_AUTO_SALE || !§<$?§.§?q§.§4u§())
         {
            return;
         }
         if(§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§7#Y§(§&"Y§.§[%§) == §<$?§.§?q§.§^G§)
         {
            return;
         }
         §3"e§ = true;
      }
      
      public function §8#h§(param1:Boolean) : void
      {
         this.§=$§.coinsAddButton.enabled = param1;
         this.§=$§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§=$§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §0$!§() : void
      {
         if(this.§=$§[§?"[§])
         {
            if(this.§""-§ && this.§<#E§ && this.§<#E§.§4u§())
            {
               this.§=$§[§?"[§].visible = true;
            }
            else
            {
               this.§=$§[§?"[§].visible = false;
            }
         }
      }
      
      public function get §5#k§() : MovieClip
      {
         return this.§=$§;
      }
      
      private function §>#6§(param1:§<! §) : void
      {
         if(this.§##e§)
         {
            this.animateGotCoins(param1.§%!;§);
         }
         this.setCoinsAmountText(param1.§&I§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§=$§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§=$§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§=$§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§=$§.coinsTextfield.text = param1;
         }
      }
      
      private function §!!g§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§;#D§));
      }
      
      public function dispose() : void
      {
         if(this.§=$§)
         {
            this.§=$§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§!!g§);
            if(this.§=$§.parent)
            {
               this.§=$§.parent.removeChild(this.§=$§);
            }
         }
         dataModel.§8!8§.removeEventListener(§<! §.§1#5§,this.§>#6§);
         if(this.§<#E§)
         {
            this.§<#E§.removeEventListener(§<$?§.§;"I§,this.§3"N§);
            this.§<#E§.removeEventListener(§<$?§.§ !O§,this.§;8§);
            this.§<#E§ = null;
         }
      }
      
      private function §3"N§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§=$§)
         {
            if(this.§=$§.birdCoin.currentFrame >= this.§=$§.birdCoin.totalFrames)
            {
               this.§=$§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§<#E§ && this.§""-§)
         {
            _loc2_ = this.§<#E§.§]"b§();
            if(_loc2_ != this.§<!;§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§<!;§.length)
               {
                  if(this.§<!;§[_loc3_])
                  {
                     this.§<!;§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
         if(§3"e§)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§%#§.NORMAL,§9#5§.DEFAULT));
               §+$A§.§@"i§().§2K§(NonSpenderAutoSalePopup.ID,false);
               §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§[%§,[§<$?§.§?q§.§^G§],true);
               §3"e§ = false;
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         §[#%§.playSound("Get_Coins",§[#%§.§-"I§);
         var _loc2_:§2!M§ = new §2!M§(param1);
         this.§=$§.addChild(_loc2_);
         this.§=$§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §+"n§() : String
      {
         return "Wallet";
      }
      
      private function §'!2§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§<#E§)
         {
            return;
         }
         if(this.§<#E§.§9,§ == §<$?§.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.§,$4§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§%#§.NORMAL,§9#5§.DEFAULT));
            §+$A§.§@"i§().§2K§(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            _loc2_ = this.§<#E§.§3!=§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT,"",TabbedShopPopup.§`!Q§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT,§0!w§.§2$?§.§]'§,TabbedShopPopup.§`!Q§));
                  §+$A§.§@"i§().§2K§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT,§7!S§.SLING_SHOT_GOLDEN.§]'§,TabbedShopPopup.§@$<§));
                  §+$A§.§@"i§().§2K§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP));
                  dispatchEvent(new Event(§;#D§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT,"",TabbedShopPopup.§`!Q§,true));
            }
         }
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
      }
      
      private function §;8§(param1:Event) : void
      {
         this.§1"p§();
         this.§0$!§();
      }
   }
}
