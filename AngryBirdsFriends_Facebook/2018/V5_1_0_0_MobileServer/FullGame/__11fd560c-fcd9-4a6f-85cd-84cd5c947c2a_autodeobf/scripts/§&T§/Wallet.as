package §&T§
{
   import §&"`§.NonSpenderAutoSalePopup;
   import §&"`§.TabbedShopPopup;
   import §&$!§.§%#k§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §1"N§.§4#G§;
   import §2G§.§#"8§;
   import §4"R§.§4"c§;
   import §4#V§.CoinShopPopup;
   import §8#!§.§5`§;
   import §=!,§.§1!l§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §8#§
   {
      
      public static const §?"w§:String = "AddCoins";
      
      private static const §[#7§:String = "SALE_BUTTON";
      
      private static var §>z§:Boolean = false;
       
      
      private var §,#2§:§9#a§;
      
      private var §`#`§:MovieClip;
      
      private var §@t§:Boolean;
      
      private var §8#r§:Boolean;
      
      private var §?"[§:Boolean;
      
      private var §2!0§:Number;
      
      private var §0!i§:Number;
      
      private var §-$7§:Vector.<TextField>;
      
      private var §@!e§:§1!l§;
      
      public function Wallet(param1:§9#a§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§>#,§,this.§'"r§);
         this.§@!e§.addEventListener(§1!l§.§ "[§,this.§5"@§);
         if(param4)
         {
            this.§0!i§ = 10;
            this.§2!0§ = -24;
            if(!param2)
            {
               this.§0!i§ = 15;
               this.§2!0§ = -5;
            }
         }
         else
         {
            this.§2!0§ = 0;
            this.§0!i§ = 0;
         }
         this.§,#2§ = param1;
         this.§@t§ = param3;
         this.§8#r§ = param5;
         this.§?"[§ = param2;
         dataModel.§""[§.addEventListener(§>#Q§.§,!d§,this.§1V§);
         this.§<#g§();
         this.§'#&§();
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      private function §<#g§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§@!e§ && this.§@!e§.§-<§() && §!"f§.§?"G§("WALLET_CAMPAIGN_" + this.§@!e§.§3$!§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§@!e§.§3$!§;
         }
         else if(§5`§.§6!§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §5`§.§6!§.tournamentRules.§7"4§;
            if(§!"f§.§?"G§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§`#`§ || this.§`#`§.name != _loc1_)
         {
            if(this.§`#`§)
            {
               if(this.§`#`§.parent)
               {
                  this.§`#`§.parent.removeChild(this.§`#`§);
               }
               this.§`#`§ = null;
            }
            _loc3_ = §!"f§.§##?§(_loc1_);
            this.§`#`§ = new _loc3_();
            this.§`#`§.x = this.§2!0§;
            this.§`#`§.y = this.§0!i§;
            this.§`#`§.name = _loc1_;
            if(this.§,#2§.walletContainer)
            {
               this.§,#2§.walletContainer.addChild(this.§`#`§);
            }
            this.§`#`§.coinsAddButton.visible = this.§?"[§;
            this.§`#`§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§[8§);
            this.§`#`§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§""[§.§##!§);
            if(this.§`#`§[§[#7§])
            {
               this.§-$7§ = new Vector.<TextField>();
               _loc4_ = this.§`#`§[§[#7§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§-$7§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§`#`§[§[#7§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§-$7§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§`#`§[§[#7§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§-$7§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§`#`§[§[#7§].addEventListener(MouseEvent.CLICK,this.§##E§);
            }
         }
         this.§["l§();
      }
      
      private function §["l§() : void
      {
         §>z§ = false;
         if(§1!l§.§6!§.§3$!§ != §1!l§.NON_SPENDER_AUTO_SALE || !§1!l§.§6!§.§-<§())
         {
            return;
         }
         if(§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§ ""§(§4#G§.§?6§) == §1!l§.§6!§.§?!#§)
         {
            return;
         }
         §>z§ = true;
      }
      
      public function §`$3§(param1:Boolean) : void
      {
         this.§`#`§.coinsAddButton.enabled = param1;
         this.§`#`§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§`#`§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §'#&§() : void
      {
         if(this.§`#`§[§[#7§])
         {
            if(this.§8#r§ && this.§@!e§ && this.§@!e§.§-<§())
            {
               this.§`#`§[§[#7§].visible = true;
            }
            else
            {
               this.§`#`§[§[#7§].visible = false;
            }
         }
      }
      
      public function get §=#-§() : MovieClip
      {
         return this.§`#`§;
      }
      
      private function §1V§(param1:§>#Q§) : void
      {
         if(this.§@t§)
         {
            this.animateGotCoins(param1.§%"z§);
         }
         this.setCoinsAmountText(param1.§4"@§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§`#`§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§`#`§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§`#`§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§`#`§.coinsTextfield.text = param1;
         }
      }
      
      private function §[8§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§?"w§));
      }
      
      public function dispose() : void
      {
         if(this.§`#`§)
         {
            this.§`#`§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§[8§);
            if(this.§`#`§.parent)
            {
               this.§`#`§.parent.removeChild(this.§`#`§);
            }
         }
         dataModel.§""[§.removeEventListener(§>#Q§.§,!d§,this.§1V§);
         if(this.§@!e§)
         {
            this.§@!e§.removeEventListener(§1!l§.§ "[§,this.§5"@§);
            this.§@!e§.removeEventListener(§1!l§.§>#,§,this.§'"r§);
            this.§@!e§ = null;
         }
      }
      
      private function §5"@§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§`#`§)
         {
            if(this.§`#`§.birdCoin.currentFrame >= this.§`#`§.birdCoin.totalFrames)
            {
               this.§`#`§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§@!e§ && this.§8#r§)
         {
            _loc2_ = this.§@!e§.§ d§();
            if(_loc2_ != this.§-$7§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§-$7§.length)
               {
                  if(this.§-$7§[_loc3_])
                  {
                     this.§-$7§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
         if(§>z§)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§]"$§.NORMAL,§^"U§.DEFAULT));
               § try§.§!!t§().§%"?§(NonSpenderAutoSalePopup.ID,false);
               §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§?6§,[§1!l§.§6!§.§?!#§],true);
               §>z§ = false;
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         §!"p§.playSound("Get_Coins",§!"p§.§+!;§);
         var _loc2_:§ #q§ = new § #q§(param1);
         this.§`#`§.addChild(_loc2_);
         this.§`#`§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §+#k§() : String
      {
         return "Wallet";
      }
      
      private function §##E§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§@!e§)
         {
            return;
         }
         if(this.§@!e§.§3$!§ == §1!l§.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.§5!4§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(§]"$§.NORMAL,§^"U§.DEFAULT));
            § try§.§!!t§().§%"?§(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            _loc2_ = this.§@!e§.§0$7§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT,"",TabbedShopPopup.§!"e§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT,§%#k§.§6"t§.§5"g§,TabbedShopPopup.§!"e§));
                  § try§.§!!t§().§%"?§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT,§4"c§.SLING_SHOT_GOLDEN.§5"g§,TabbedShopPopup.§?#-§));
                  § try§.§!!t§().§%"?§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP));
                  dispatchEvent(new Event(§?"w§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT,"",TabbedShopPopup.§!"e§,true));
            }
         }
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
      }
      
      private function §'"r§(param1:Event) : void
      {
         this.§<#g§();
         this.§'#&§();
      }
   }
}
