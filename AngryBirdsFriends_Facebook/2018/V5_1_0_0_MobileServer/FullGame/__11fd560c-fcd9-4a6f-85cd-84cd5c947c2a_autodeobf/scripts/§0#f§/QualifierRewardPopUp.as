package §0#f§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§7Y§;
   import §##C§.§'!'§;
   import §'",§.§8$7§;
   import §'",§.§@#e§;
   import §1!=§.AbstractPopup;
   import §2G§.§"G§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5"7§.§+$"§;
   import §8#!§.§5`§;
   import §<h§.§>"0§;
   import §?P§.ErrorPopup;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.effects.easing.Back;
   
   public class QualifierRewardPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierRewardPopUp";
      
      private static var §1#M§:uint = 6;
      
      private static var § $§:uint = 2;
      
      private static const §[5§:uint = 0;
      
      private static const §2!i§:uint = 1;
      
      private static const §#"H§:uint = 2;
      
      private static const §+!>§:uint = 200;
      
      private static const §=f§:uint = 500;
      
      private static const §%r§:int = 1500;
       
      
      private var §1#P§:uint = 0;
      
      private var §!#h§:DisplayObject;
      
      private var §"!H§:Array;
      
      private var §>v§:§1"V§;
      
      private var §!"Z§:Vector.<§>"0§>;
      
      private var § "O§:§7Y§;
      
      private var §'"Z§:int;
      
      private var §=#k§:uint = 0;
      
      private var §!"%§:uint = 0;
      
      private var §["D§:int;
      
      private var §7$>§:int;
      
      private var §;!g§:Vector.<§8$7§>;
      
      private var §5O§:Point;
      
      private var §4#z§:Dictionary;
      
      private var §="c§:Boolean;
      
      private var §8#V§:int;
      
      private var §>W§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§!"Z§ = new Vector.<§>"0§>();
         this.§4#z§ = new Dictionary();
         super(param1,param2,§1Q§.§5T§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§>"0§ = null;
         super.init();
         this.§!#h§ = §,#2§.mClip.doneButton;
         this.§!#h§.addEventListener(MouseEvent.CLICK,this.§ A§);
         this.§5O§ = new Point(this.§!#h§.scaleX,this.§!#h§.scaleY);
         this.§!#h§.scaleY = 0;
         this.§!#h§.scaleX = 0;
         this.§>W§ = §,#2§.mClip.tipMC;
         this.§>W§.visible = false;
         var _loc1_:DisplayObject = §,#2§.mClip.bg;
         _loc1_.visible = false;
         this.§"!H§ = §-#+§.§6!§.§0!,§.§5!v§(§5`§.§0#c§);
         var _loc2_:int = 1;
         while(_loc2_ <= §1#M§)
         {
            _loc3_ = §>"0§(§,#2§.getItemByName("chest" + _loc2_));
            this.§!"Z§.push(_loc3_);
            _loc3_.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§"!H§ == null || this.§"!H§.length < §1#M§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Rewards from " + §5`§.§0#c§ + " does not match the chest count"));
         }
         this.§;!g§ = new Vector.<§8$7§>();
      }
      
      private function §1"h§(param1:uint) : void
      {
         this.§=#k§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§'"Z§ = getTimer();
         §,#2§.mClip.addEventListener(Event.ENTER_FRAME,this.§>"<§);
         this.§1"h§(§2!i§);
      }
      
      private function §>"<§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§'"Z§;
         this.§'"Z§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§=#k§ != §[5§ && this.§=#k§ != this.§!"%§)
         {
            this.§&$7§();
         }
         this.updateState(param1);
         this.§7"7§(param1);
      }
      
      private function §7"7§(param1:int) : void
      {
         var _loc3_:§8$7§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!g§.length)
         {
            _loc3_ = this.§;!g§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:§>"0§ = null;
         var _loc5_:§7Y§ = null;
         var _loc6_:§7Y§ = null;
         var _loc7_:§7Y§ = null;
         var _loc8_:§7Y§ = null;
         switch(this.§!"%§)
         {
            case §2!i§:
               if(this.§["D§ < §+!>§)
               {
                  this.§["D§ += param1;
                  if(this.§["D§ >= §+!>§)
                  {
                     this.§ "O§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§!"Z§.length)
                     {
                        (_loc4_ = this.§!"Z§[_loc2_]).setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §,#2§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§="c§)
               {
                  this.§8#V§ += param1;
                  if(this.§8#V§ >= §%r§)
                  {
                     _loc5_ = §&"H§.§6!§.§6C§(this.§>W§,{
                        "scaleX":this.§>W§.scaleX,
                        "scaleY":this.§>W§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§'!'§.easeOut);
                     this.§>W§.visible = true;
                     this.§>W§.scaleX = this.§>W§.scaleY = 0;
                     _loc5_.play();
                     this.§="c§ = false;
                  }
               }
               break;
            case §#"H§:
               if(this.§7$>§ < §=f§)
               {
                  this.§7$>§ += param1;
                  if(this.§7$>§ >= §=f§)
                  {
                     _loc6_ = §&"H§.§6!§.§6C§(this.§!#h§,{
                        "scaleX":this.§5O§.x,
                        "scaleY":this.§5O§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§>W§.visible)
                     {
                        _loc7_ = §&"H§.§6!§.§6C§(this.§>W§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§>W§.scaleX,
                           "scaleY":this.§>W§.scaleY
                        },0.5,§'!'§.easeOut);
                        (_loc8_ = §&"H§.§6!§.§>##§(_loc7_,_loc6_)).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §!$&§() : void
      {
         var _loc2_:§>"0§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§7Y§ = null;
         var _loc7_:§7Y§ = null;
         var _loc8_:§7Y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!"Z§.length)
         {
            _loc2_ = this.§!"Z§[_loc1_];
            _loc2_.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §&"H§.§6!§.§6C§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§'!'§.easeIn);
            _loc7_ = §&"H§.§6!§.§6C§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§'!'§.easeOut);
            (_loc8_ = §&"H§.§6!§.§>##§(_loc6_,_loc7_)).§"$ § = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§4#z§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§="c§ = true;
         this.§8#V§ = 0;
      }
      
      private function §&$7§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§7Y§ = null;
         var _loc4_:§7Y§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§7Y§ = null;
         this.§!"%§ = this.§=#k§;
         this.§=#k§ = §[5§;
         switch(this.§!"%§)
         {
            case §2!i§:
               this.§["D§ = 0;
               _loc1_ = [];
               _loc2_ = §,#2§.mClip.bg;
               _loc3_ = §&"H§.§6!§.§6C§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§&"H§.§;a§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §1#M§)
               {
                  _loc6_ = this.§!"Z§[_loc5_].mClip;
                  _loc7_ = §&"H§.§6!§.§6C§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§'!'§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §&"H§.§6!§.§5!j§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§ "O§ = §&"H§.§6!§.§>##§(_loc3_,_loc4_);
               this.§ "O§.onComplete = this.§!$&§;
               break;
            case §#"H§:
               this.§7$>§ = 0;
         }
      }
      
      private function § A§(param1:MouseEvent) : void
      {
         this.§!#h§.removeEventListener(MouseEvent.CLICK,this.§ A§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§7Y§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§="c§ = false;
               _loc4_ = (param3 as §>"0§).mClip;
               (param3 as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§4#z§[param3 as §>"0§]).stop();
               _loc5_.dispose();
               this.§@#"§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§1#P§);
               ++this.§1#P§;
               if(this.§1#P§ == § $§)
               {
                  this.§%!d§();
               }
               if(this.§1#P§ == §1#M§)
               {
                  this.§1"h§(§#"H§);
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §@#"§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§"!H§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§,#2§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§8$7§ = new §8$7§(800,800,0,0,§8$7§.§-"4§,20,§@#e§.§1"o§);
         this.§;!g§.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§7Y§ = §&"H§.§6!§.§6C§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§&"H§.§;a§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §!"f§.§##?§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§7Y§ = §&"H§.§6!§.§6C§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§7Y§ = §&"H§.§6!§.§6C§(shineMC,{"rotation":0},{"rotation":-360},23,§&"H§.§-t§);
         shineTween.§"$ § = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§1#P§ % 3 + 1);
         §!"p§.playSound(soundName,§!"p§.§+!;§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §,#2§.mClip.removeEventListener(Event.ENTER_FRAME,this.§>"<§);
         this.§<#=§();
         super.hide(param1,param2);
      }
      
      private function §<#=§() : void
      {
         var _loc2_:§8$7§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!g§.length)
         {
            _loc2_ = this.§;!g§[_loc1_];
            _loc2_.§,"I§();
            _loc1_++;
         }
      }
      
      private function §%!d§() : void
      {
         this.§>v§ = new §1"V§();
         this.§>v§.addEventListener(Event.COMPLETE,this.§!"U§);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
         this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§>v§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §5`§.§0#c§));
      }
      
      private function §4S§(param1:IOErrorEvent) : void
      {
         this.§>v§.removeEventListener(Event.COMPLETE,this.§!"U§);
         this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
      }
      
      private function §!"U§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§+$"§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§"!H§)
         {
            (_loc4_ = new §+$"§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §"G§.§6!@§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§2>§ = § try§.§]!R§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §-#+§.§6!§.§,"0§(param1.currentTarget.data,false,_loc2_);
         this.§>v§.removeEventListener(Event.COMPLETE,this.§!"U§);
         this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
      }
   }
}
