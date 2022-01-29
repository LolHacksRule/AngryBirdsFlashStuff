package §"z§
{
   import § §.§[$3§;
   import §!#C§.§4!Q§;
   import §"c§.CoinShopPopup;
   import §&!_§.§!!K§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §0!s§.§]"Y§;
   import §5" §.NonSpenderAutoSalePopup;
   import §5" §.TabbedShopPopup;
   import §6#f§.§<!M§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>z§.§#"l§;
   import §^&§.§%!#§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §%!#§
   {
      
      public static const §2]§:String = "AddCoins";
      
      private static const §&"v§:String = "SALE_BUTTON";
      
      private static var §5"m§:Boolean = false;
       
      
      private var §&!M§:§&>§;
      
      private var §=U§:MovieClip;
      
      private var §3#y§:Boolean;
      
      private var §'K§:Boolean;
      
      private var §4"P§:Boolean;
      
      private var §&#Z§:Number;
      
      private var §<7§:Number;
      
      private var §'$B§:Vector.<TextField>;
      
      private var §->§:§<!M§;
      
      public function Wallet(param1:§&>§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§"! §,this.§>#§);
         this.§->§.addEventListener(§<!M§.§'#Y§,this.§'#C§);
         if(param4)
         {
            this.§<7§ = 10;
            this.§&#Z§ = -24;
            if(!param2)
            {
               this.§<7§ = 15;
               this.§&#Z§ = -5;
            }
         }
         else
         {
            this.§&#Z§ = 0;
            this.§<7§ = 0;
         }
         this.§&!M§ = param1;
         this.§3#y§ = param3;
         this.§'K§ = param5;
         this.§4"P§ = param2;
         dataModel.§1W§.addEventListener(§]#q§.§3#g§,this.§9t§);
         this.§`"9§();
         this.§9"§();
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      private function §`"9§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§->§ && this.§->§.§!!>§() && §6$A§.§9"w§("WALLET_CAMPAIGN_" + this.§->§.§"#^§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§->§.§"#^§;
         }
         else if(§'##§.§`"H§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §'##§.§`"H§.tournamentRules.§3V§;
            if(§6$A§.§9"w§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§=U§ || this.§=U§.name != _loc1_)
         {
            if(this.§=U§)
            {
               if(this.§=U§.parent)
               {
                  this.§=U§.parent.removeChild(this.§=U§);
               }
               this.§=U§ = null;
            }
            _loc3_ = §6$A§.§1!m§(_loc1_);
            this.§=U§ = new _loc3_();
            this.§=U§.x = this.§&#Z§;
            this.§=U§.y = this.§<7§;
            this.§=U§.name = _loc1_;
            if(this.§&!M§.walletContainer)
            {
               this.§&!M§.walletContainer.addChild(this.§=U§);
            }
            this.§=U§.coinsAddButton.visible = this.§4"P§;
            this.§=U§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§;#@§);
            this.§=U§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§1W§.§<B§);
            if(this.§=U§[§&"v§])
            {
               this.§'$B§ = new Vector.<TextField>();
               _loc4_ = this.§=U§[§&"v§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§'$B§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§=U§[§&"v§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§'$B§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§=U§[§&"v§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§'$B§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§=U§[§&"v§].addEventListener(MouseEvent.CLICK,this.§3"R§);
            }
         }
         this.§@V§();
      }
      
      private function §@V§() : void
      {
         §5"m§ = false;
         if(§<!M§.§`"H§.§"#^§ != §<!M§.NON_SPENDER_AUTO_SALE || !§<!M§.§`"H§.§!!>§())
         {
            return;
         }
         if(§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§'k§(§[$3§.§?$8§) == §<!M§.§`"H§.§9s§)
         {
            return;
         }
         §5"m§ = true;
      }
      
      public function §@#e§(param1:Boolean) : void
      {
         this.§=U§.coinsAddButton.enabled = param1;
         this.§=U§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§=U§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §9"§() : void
      {
         if(this.§=U§[§&"v§])
         {
            if(this.§'K§ && this.§->§ && this.§->§.§!!>§())
            {
               this.§=U§[§&"v§].visible = true;
            }
            else
            {
               this.§=U§[§&"v§].visible = false;
            }
         }
      }
      
      public function get §+F§() : MovieClip
      {
         return this.§=U§;
      }
      
      private function §9t§(param1:§]#q§) : void
      {
         if(this.§3#y§)
         {
            this.animateGotCoins(param1.§>!2§);
         }
         this.setCoinsAmountText(param1.§!"B§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§=U§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§=U§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§=U§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§=U§.coinsTextfield.text = param1;
         }
      }
      
      private function §;#@§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§2]§));
      }
      
      public function dispose() : void
      {
         if(this.§=U§)
         {
            this.§=U§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§;#@§);
            if(this.§=U§.parent)
            {
               this.§=U§.parent.removeChild(this.§=U§);
            }
         }
         dataModel.§1W§.removeEventListener(§]#q§.§3#g§,this.§9t§);
         if(this.§->§)
         {
            this.§->§.removeEventListener(§<!M§.§'#Y§,this.§'#C§);
            this.§->§.removeEventListener(§<!M§.§"! §,this.§>#§);
            this.§->§ = null;
         }
      }
      
      private function §'#C§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§=U§)
         {
            if(this.§=U§.birdCoin.currentFrame >= this.§=U§.birdCoin.totalFrames)
            {
               this.§=U§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§->§ && this.§'K§)
         {
            _loc2_ = this.§->§.§=#7§();
            if(_loc2_ != this.§'$B§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§'$B§.length)
               {
                  if(this.§'$B§[_loc3_])
                  {
                     this.§'$B§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
         if(§5"m§)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
               §!!K§.§%#S§().§""o§(NonSpenderAutoSalePopup.ID,false);
               §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§?$8§,[§<!M§.§`"H§.§9s§],true);
               §5"m§ = false;
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         §3Z§.playSound("Get_Coins",§3Z§.§[!F§);
         var _loc2_:§"$@§ = new §"$@§(param1);
         this.§=U§.addChild(_loc2_);
         this.§=U§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §+"-§() : String
      {
         return "Wallet";
      }
      
      private function §3"R§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§->§)
         {
            return;
         }
         if(this.§->§.§"#^§ == §<!M§.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.§7=§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
            §!!K§.§%#S§().§""o§(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            _loc2_ = this.§->§.§@"i§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,"",TabbedShopPopup.§[#^§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,§+"d§.§]#_§.§1#7§,TabbedShopPopup.§[#^§));
                  §!!K§.§%#S§().§""o§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,§0$@§.SLING_SHOT_GOLDEN.§1#7§,TabbedShopPopup.§+!A§));
                  §!!K§.§%#S§().§""o§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP));
                  dispatchEvent(new Event(§2]§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,"",TabbedShopPopup.§[#^§,true));
            }
         }
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
      }
      
      private function §>#§(param1:Event) : void
      {
         this.§`"9§();
         this.§9"§();
      }
   }
}
