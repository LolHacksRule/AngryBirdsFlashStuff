package §3!-§
{
   import §!#C§.§ $?§;
   import §!#C§.§null§;
   import §#,§.§ !>§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §-#o§.§-!w§;
   import §0!s§.AbstractPopup;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5"t§.§7"J§;
   import §5"t§.§7"Y§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>z§.ErrorPopup;
   import §`"3§.§^!Z§;
   import com.rovio.assets.§6$A§;
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
      
      private static var §#9§:uint = 6;
      
      private static var §-#P§:uint = 2;
      
      private static const §?#[§:uint = 0;
      
      private static const §<"<§:uint = 1;
      
      private static const §!"p§:uint = 2;
      
      private static const §-L§:uint = 200;
      
      private static const §#!P§:uint = 500;
      
      private static const §2">§:int = 1500;
       
      
      private var §4!C§:uint = 0;
      
      private var §+u§:DisplayObject;
      
      private var §7!t§:Array;
      
      private var §2!N§:§!!o§;
      
      private var §8#a§:Vector.<§ !>§>;
      
      private var §>y§:§0#m§;
      
      private var §?7§:int;
      
      private var §`#g§:uint = 0;
      
      private var § !h§:uint = 0;
      
      private var §1?§:int;
      
      private var §'#p§:int;
      
      private var §#! §:Vector.<§7"J§>;
      
      private var §-#V§:Point;
      
      private var §+!f§:Dictionary;
      
      private var §3$,§:Boolean;
      
      private var §,"b§:int;
      
      private var §["9§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§8#a§ = new Vector.<§ !>§>();
         this.§+!f§ = new Dictionary();
         super(param1,param2,§?l§.§3m§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§ !>§ = null;
         super.init();
         this.§+u§ = §&!M§.mClip.doneButton;
         this.§+u§.addEventListener(MouseEvent.CLICK,this.§7#W§);
         this.§-#V§ = new Point(this.§+u§.scaleX,this.§+u§.scaleY);
         this.§+u§.scaleY = 0;
         this.§+u§.scaleX = 0;
         this.§["9§ = §&!M§.mClip.tipMC;
         this.§["9§.visible = false;
         var _loc1_:DisplayObject = §&!M§.mClip.bg;
         _loc1_.visible = false;
         this.§7!t§ = § $?§.§`"H§.§>3§.§1"0§(§'##§.§&!`§);
         var _loc2_:int = 1;
         while(_loc2_ <= §#9§)
         {
            _loc3_ = § !>§(§&!M§.getItemByName("chest" + _loc2_));
            this.§8#a§.push(_loc3_);
            _loc3_.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§7!t§ == null || this.§7!t§.length < §#9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Rewards from " + §'##§.§&!`§ + " does not match the chest count"));
         }
         this.§#! § = new Vector.<§7"J§>();
      }
      
      private function §1!L§(param1:uint) : void
      {
         this.§`#g§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§?7§ = getTimer();
         §&!M§.mClip.addEventListener(Event.ENTER_FRAME,this.§6"g§);
         this.§1!L§(§<"<§);
      }
      
      private function §6"g§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§?7§;
         this.§?7§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§`#g§ != §?#[§ && this.§`#g§ != this.§ !h§)
         {
            this.§^"D§();
         }
         this.updateState(param1);
         this.§,""§(param1);
      }
      
      private function §,""§(param1:int) : void
      {
         var _loc3_:§7"J§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#! §.length)
         {
            _loc3_ = this.§#! §[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:§ !>§ = null;
         var _loc5_:§0#m§ = null;
         var _loc6_:§0#m§ = null;
         var _loc7_:§0#m§ = null;
         var _loc8_:§0#m§ = null;
         switch(this.§ !h§)
         {
            case §<"<§:
               if(this.§1?§ < §-L§)
               {
                  this.§1?§ += param1;
                  if(this.§1?§ >= §-L§)
                  {
                     this.§>y§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§8#a§.length)
                     {
                        (_loc4_ = this.§8#a§[_loc2_]).setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §&!M§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§3$,§)
               {
                  this.§,"b§ += param1;
                  if(this.§,"b§ >= §2">§)
                  {
                     _loc5_ = §"!&§.§`"H§.§1"W§(this.§["9§,{
                        "scaleX":this.§["9§.scaleX,
                        "scaleY":this.§["9§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§-!w§.easeOut);
                     this.§["9§.visible = true;
                     this.§["9§.scaleX = this.§["9§.scaleY = 0;
                     _loc5_.play();
                     this.§3$,§ = false;
                  }
               }
               break;
            case §!"p§:
               if(this.§'#p§ < §#!P§)
               {
                  this.§'#p§ += param1;
                  if(this.§'#p§ >= §#!P§)
                  {
                     _loc6_ = §"!&§.§`"H§.§1"W§(this.§+u§,{
                        "scaleX":this.§-#V§.x,
                        "scaleY":this.§-#V§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§["9§.visible)
                     {
                        _loc7_ = §"!&§.§`"H§.§1"W§(this.§["9§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§["9§.scaleX,
                           "scaleY":this.§["9§.scaleY
                        },0.5,§-!w§.easeOut);
                        (_loc8_ = §"!&§.§`"H§.§?"§(_loc7_,_loc6_)).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §7!u§() : void
      {
         var _loc2_:§ !>§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§0#m§ = null;
         var _loc7_:§0#m§ = null;
         var _loc8_:§0#m§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8#a§.length)
         {
            _loc2_ = this.§8#a§[_loc1_];
            _loc2_.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §"!&§.§`"H§.§1"W§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§-!w§.easeIn);
            _loc7_ = §"!&§.§`"H§.§1"W§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§-!w§.easeOut);
            (_loc8_ = §"!&§.§`"H§.§?"§(_loc6_,_loc7_)).§6!'§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§+!f§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§3$,§ = true;
         this.§,"b§ = 0;
      }
      
      private function §^"D§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§0#m§ = null;
         var _loc4_:§0#m§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§0#m§ = null;
         this.§ !h§ = this.§`#g§;
         this.§`#g§ = §?#[§;
         switch(this.§ !h§)
         {
            case §<"<§:
               this.§1?§ = 0;
               _loc1_ = [];
               _loc2_ = §&!M§.mClip.bg;
               _loc3_ = §"!&§.§`"H§.§1"W§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§"!&§.§6!j§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §#9§)
               {
                  _loc6_ = this.§8#a§[_loc5_].mClip;
                  _loc7_ = §"!&§.§`"H§.§1"W§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§-!w§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §"!&§.§`"H§.§;#r§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§>y§ = §"!&§.§`"H§.§?"§(_loc3_,_loc4_);
               this.§>y§.onComplete = this.§7!u§;
               break;
            case §!"p§:
               this.§'#p§ = 0;
         }
      }
      
      private function §7#W§(param1:MouseEvent) : void
      {
         this.§+u§.removeEventListener(MouseEvent.CLICK,this.§7#W§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§0#m§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§3$,§ = false;
               _loc4_ = (param3 as § !>§).mClip;
               (param3 as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§+!f§[param3 as § !>§]).stop();
               _loc5_.dispose();
               this.§@""§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§4!C§);
               ++this.§4!C§;
               if(this.§4!C§ == §-#P§)
               {
                  this.§8'§();
               }
               if(this.§4!C§ == §#9§)
               {
                  this.§1!L§(§!"p§);
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §@""§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§7!t§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§&!M§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§7"J§ = new §7"J§(800,800,0,0,§7"J§.§3@§,20,§7"Y§.§"#C§);
         this.§#! §.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§0#m§ = §"!&§.§`"H§.§1"W§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§"!&§.§6!j§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §6$A§.§1!m§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§0#m§ = §"!&§.§`"H§.§1"W§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§0#m§ = §"!&§.§`"H§.§1"W§(shineMC,{"rotation":0},{"rotation":-360},23,§"!&§.§="L§);
         shineTween.§6!'§ = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§4!C§ % 3 + 1);
         §3Z§.playSound(soundName,§3Z§.§[!F§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §&!M§.mClip.removeEventListener(Event.ENTER_FRAME,this.§6"g§);
         this.§5"w§();
         super.hide(param1,param2);
      }
      
      private function §5"w§() : void
      {
         var _loc2_:§7"J§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#! §.length)
         {
            _loc2_ = this.§#! §[_loc1_];
            _loc2_.§"#%§();
            _loc1_++;
         }
      }
      
      private function §8'§() : void
      {
         this.§2!N§ = new §!!o§();
         this.§2!N§.addEventListener(Event.COMPLETE,this.§2;§);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
         this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2!N§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §'##§.§&!`§));
      }
      
      private function §=#=§(param1:IOErrorEvent) : void
      {
         this.§2!N§.removeEventListener(Event.COMPLETE,this.§2;§);
         this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
      }
      
      private function §2;§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§^!Z§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§7!t§)
         {
            (_loc4_ = new §^!Z§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §null§.§%l§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§`"x§ = §!!K§.§+"I§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         § $?§.§`"H§.§ !t§(param1.currentTarget.data,false,_loc2_);
         this.§2!N§.removeEventListener(Event.COMPLETE,this.§2;§);
         this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
      }
   }
}
