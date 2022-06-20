package §%y§
{
   import § o§.§%"!§;
   import §!@§.§,!z§;
   import §&"J§.§`]§;
   import §1#W§.§!#&§;
   import §6V§.§?!=§;
   import §7",§.TabbedShopPopup;
   import §7",§.§^#d§;
   import §9"0§.CoinShopPopup;
   import §;P§.§super§;
   import §<#m§.§^#o§;
   import §=#C§.§7"G§;
   import §[!E§.§>#`§;
   import §[§.§]"w§;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements §]"w§
   {
      
      public static const §,#Q§:String = "AddCoins";
      
      private static const §5P§:String = "SALE_BUTTON";
       
      
      private var §1"6§:§8[§;
      
      private var §+"H§:MovieClip;
      
      private var §6!§:Boolean;
      
      private var §2"j§:Boolean;
      
      private var §#$2§:Boolean;
      
      private var §<!y§:Number;
      
      private var §&"c§:Number;
      
      private var § set§:Vector.<TextField>;
      
      private var §&"t§:§>#`§;
      
      public function Wallet(param1:§8[§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§0!D§,this.§2"#§);
         this.§&"t§.addEventListener(§>#`§.§,"U§,this.§0$7§);
         if(param4)
         {
            this.§&"c§ = 10;
            this.§<!y§ = -24;
            if(!param2)
            {
               this.§&"c§ = 15;
               this.§<!y§ = -5;
            }
         }
         else
         {
            this.§<!y§ = 0;
            this.§&"c§ = 0;
         }
         this.§1"6§ = param1;
         this.§6!§ = param3;
         this.§2"j§ = param5;
         this.§#$2§ = param2;
         dataModel.§>p§.addEventListener(§,"M§.§6#x§,this.§[#B§);
         this.§4#E§();
         this.§7$1§();
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      private function §4#E§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:int = 0;
         var _loc1_:String = "WALLET";
         if(this.§&"t§ && this.§&"t§.§+"]§() && §+$#§.§1!X§("WALLET_CAMPAIGN_" + this.§&"t§.§&"A§))
         {
            _loc1_ = "WALLET_CAMPAIGN_" + this.§&"t§.§&"A§;
         }
         else if(§-!t§.§ "D§.tournamentRules)
         {
            _loc2_ = "WALLET_" + §-!t§.§ "D§.tournamentRules.§@!l§;
            if(§+$#§.§1!X§(_loc2_))
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§+"H§ || this.§+"H§.name != _loc1_)
         {
            if(this.§+"H§)
            {
               if(this.§+"H§.parent)
               {
                  this.§+"H§.parent.removeChild(this.§+"H§);
               }
               this.§+"H§ = null;
            }
            _loc3_ = §+$#§.§["`§(_loc1_);
            this.§+"H§ = new _loc3_();
            this.§+"H§.x = this.§<!y§;
            this.§+"H§.y = this.§&"c§;
            this.§+"H§.name = _loc1_;
            if(this.§1"6§.walletContainer)
            {
               this.§1"6§.walletContainer.addChild(this.§+"H§);
            }
            this.§+"H§.coinsAddButton.visible = this.§#$2§;
            this.§+"H§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§4`§);
            this.§+"H§.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.§>p§.§5##§);
            if(this.§+"H§[§5P§])
            {
               this.§ set§ = new Vector.<TextField>();
               _loc4_ = this.§+"H§[§5P§].upState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§ set§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§+"H§[§5P§].overState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§ set§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               _loc4_ = this.§+"H§[§5P§].downState as DisplayObjectContainer;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.numChildren)
               {
                  if(_loc4_.getChildAt(_loc5_) is TextField)
                  {
                     this.§ set§.push(_loc4_.getChildAt(_loc5_));
                     break;
                  }
                  _loc5_++;
               }
               this.§+"H§[§5P§].addEventListener(MouseEvent.CLICK,this.§-#z§);
            }
         }
         this.§ !q§();
      }
      
      private function § !q§() : void
      {
         if(§>#`§.§ "D§.§&"A§ != §>#`§.NON_SPENDER_AUTO_SALE || !§>#`§.§ "D§.§+"]§())
         {
            return;
         }
         if(§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§@;§(§,!z§.§!$ §) == §>#`§.§ "D§.§'!#§)
         {
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new §^#d§(§%"!§.NORMAL,§^#o§.DEFAULT));
         §?!=§.§3!q§().§]f§(§^#d§.ID,false);
         §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§!$ §,[§>#`§.§ "D§.§'!#§],true);
      }
      
      public function §;&§(param1:Boolean) : void
      {
         this.§+"H§.coinsAddButton.enabled = param1;
         this.§+"H§.coinsAddButton.alpha = !!param1 ? 1 : 0.5;
         this.§+"H§.coinsAddButton.mouseEnabled = param1;
      }
      
      public function §7$1§() : void
      {
         if(this.§+"H§[§5P§])
         {
            if(this.§2"j§ && this.§&"t§ && this.§&"t§.§+"]§())
            {
               this.§+"H§[§5P§].visible = true;
            }
            else
            {
               this.§+"H§[§5P§].visible = false;
            }
         }
      }
      
      public function get §[!R§() : MovieClip
      {
         return this.§+"H§;
      }
      
      private function §[#B§(param1:§,"M§) : void
      {
         if(this.§6!§)
         {
            this.animateGotCoins(param1.§4"c§);
         }
         this.setCoinsAmountText(param1.§'"2§);
      }
      
      public function setCoinsAmountText(param1:Number) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         if(param1 >= 100000)
         {
            _loc2_.size = 24;
            this.§+"H§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§+"H§.coinsTextfield.text = "99999+";
         }
         else
         {
            _loc2_.size = 26;
            this.§+"H§.coinsTextfield.defaultTextFormat = _loc2_;
            this.§+"H§.coinsTextfield.text = param1;
         }
      }
      
      private function §4`§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm");
         var _loc2_:CoinShopPopup = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         dispatchEvent(new Event(§,#Q§));
      }
      
      public function dispose() : void
      {
         if(this.§+"H§)
         {
            this.§+"H§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§4`§);
            if(this.§+"H§.parent)
            {
               this.§+"H§.parent.removeChild(this.§+"H§);
            }
         }
         dataModel.§>p§.removeEventListener(§,"M§.§6#x§,this.§[#B§);
         if(this.§&"t§)
         {
            this.§&"t§.removeEventListener(§>#`§.§,"U§,this.§0$7§);
            this.§&"t§.removeEventListener(§>#`§.§0!D§,this.§2"#§);
            this.§&"t§ = null;
         }
      }
      
      private function §0$7§(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(this.§+"H§)
         {
            if(this.§+"H§.birdCoin.currentFrame >= this.§+"H§.birdCoin.totalFrames)
            {
               this.§+"H§.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.§&"t§ && this.§2"j§)
         {
            _loc2_ = this.§&"t§.§ Q§();
            if(_loc2_ != this.§ set§[0].text)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§ set§.length)
               {
                  if(this.§ set§[_loc3_])
                  {
                     this.§ set§[_loc3_].text = _loc2_;
                  }
                  _loc3_++;
               }
            }
         }
      }
      
      public function animateGotCoins(param1:int) : void
      {
         §!#&§.playSound("Get_Coins",§!#&§.§6#h§);
         var _loc2_:§=!B§ = new §=!B§(param1);
         this.§+"H§.addChild(_loc2_);
         this.§+"H§.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function §-"K§() : String
      {
         return "Wallet";
      }
      
      private function §-#z§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         if(!this.§&"t§)
         {
            return;
         }
         if(this.§&"t§.§&"A§ == §>#`§.NON_SPENDER_AUTO_SALE)
         {
            if(!§^#d§.§6#5§())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new §^#d§(§%"!§.NORMAL,§^#o§.DEFAULT));
            §?!=§.§3!q§().§]f§(§^#d§.ID,true);
         }
         else
         {
            _loc2_ = this.§&"t§.§ $=§();
            if(_loc2_)
            {
               if(_loc2_.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT,"",TabbedShopPopup.§>$>§,true));
               }
               else if(_loc2_[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT,§super§.§#"[§.§?"9§,TabbedShopPopup.§>$>§));
                  §?!=§.§3!q§().§]f§("SHOP_POWERUPS",true);
               }
               else if(_loc2_[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT,§7"G§.SLING_SHOT_GOLDEN.§?"9§,TabbedShopPopup.§+6§));
                  §?!=§.§3!q§().§]f§("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP));
                  dispatchEvent(new Event(§,#Q§));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT,"",TabbedShopPopup.§>$>§,true));
            }
         }
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
      }
      
      private function §2"#§(param1:Event) : void
      {
         this.§4#E§();
         this.§7$1§();
      }
   }
}
