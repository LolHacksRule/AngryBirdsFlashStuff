package §6#Y§
{
   import § "v§.§4$4§;
   import § h§.ErrorPopup;
   import § null§.§0!N§;
   import § null§.§5"<§;
   import §-"Y§.§,#B§;
   import §-"Y§.§9#B§;
   import §0r§.§3#G§;
   import §2$;§.§;!b§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §7!3§.§-!>§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §>#Y§.§!",§;
   import §>#Y§.§2$8§;
   import §[#A§.§&n§;
   import com.rovio.assets.§=@§;
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
      
      private static var §6"Z§:uint = 6;
      
      private static var §>!P§:uint = 2;
      
      private static const §1$ §:uint = 0;
      
      private static const §5"M§:uint = 1;
      
      private static const §>$?§:uint = 2;
      
      private static const §<$5§:uint = 200;
      
      private static const § #9§:uint = 500;
      
      private static const §`"W§:int = 1500;
       
      
      private var §1<§:uint = 0;
      
      private var §'U§:DisplayObject;
      
      private var §`"j§:Array;
      
      private var §<#G§:§5"f§;
      
      private var §"#%§:Vector.<§;!b§>;
      
      private var §8!i§:§0!N§;
      
      private var §`$7§:int;
      
      private var §0u§:uint = 0;
      
      private var §2$ §:uint = 0;
      
      private var §5!m§:int;
      
      private var §1$>§:int;
      
      private var §'!2§:Vector.<§9#B§>;
      
      private var §>"r§:Point;
      
      private var §%Z§:Dictionary;
      
      private var §0$1§:Boolean;
      
      private var §?!=§:int;
      
      private var §6K§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§"#%§ = new Vector.<§;!b§>();
         this.§%Z§ = new Dictionary();
         super(param1,param2,§&n§.§7a§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§;!b§ = null;
         super.init();
         this.§'U§ = §'o§.mClip.doneButton;
         this.§'U§.addEventListener(MouseEvent.CLICK,this.§"!N§);
         this.§>"r§ = new Point(this.§'U§.scaleX,this.§'U§.scaleY);
         this.§'U§.scaleY = 0;
         this.§'U§.scaleX = 0;
         this.§6K§ = §'o§.mClip.tipMC;
         this.§6K§.visible = false;
         var _loc1_:DisplayObject = §'o§.mClip.bg;
         _loc1_.visible = false;
         this.§`"j§ = §!",§.§3"1§.§%$7§.§1"y§(§5"L§.§<"9§);
         var _loc2_:int = 1;
         while(_loc2_ <= §6"Z§)
         {
            _loc3_ = §;!b§(§'o§.getItemByName("chest" + _loc2_));
            this.§"#%§.push(_loc3_);
            _loc3_.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§`"j§ == null || this.§`"j§.length < §6"Z§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Rewards from " + §5"L§.§<"9§ + " does not match the chest count"));
         }
         this.§'!2§ = new Vector.<§9#B§>();
      }
      
      private function §%!?§(param1:uint) : void
      {
         this.§0u§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`$7§ = getTimer();
         §'o§.mClip.addEventListener(Event.ENTER_FRAME,this.§[#B§);
         this.§%!?§(§5"M§);
      }
      
      private function §[#B§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§`$7§;
         this.§`$7§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§0u§ != §1$ § && this.§0u§ != this.§2$ §)
         {
            this.§?!i§();
         }
         this.updateState(param1);
         this.§9!+§(param1);
      }
      
      private function §9!+§(param1:int) : void
      {
         var _loc3_:§9#B§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!2§.length)
         {
            _loc3_ = this.§'!2§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc5_:§0!N§ = null;
         var _loc6_:§0!N§ = null;
         var _loc7_:§0!N§ = null;
         switch(this.§2$ §)
         {
            case §5"M§:
               if(this.§5!m§ < §<$5§)
               {
                  this.§5!m§ += param1;
                  if(this.§5!m§ >= §<$5§)
                  {
                     this.§8!i§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§"#%§.length)
                     {
                        this.§"#%§[_loc2_].setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §'o§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§0$1§)
               {
                  this.§?!=§ += param1;
                  if(this.§?!=§ >= §`"W§)
                  {
                     _loc5_ = §5"<§.§3"1§.§3#§(this.§6K§,{
                        "scaleX":this.§6K§.scaleX,
                        "scaleY":this.§6K§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§3#G§.easeOut);
                     this.§6K§.visible = true;
                     this.§6K§.scaleX = this.§6K§.scaleY = 0;
                     _loc5_.play();
                     this.§0$1§ = false;
                     break;
                  }
                  break;
               }
               break;
            case §>$?§:
               if(this.§1$>§ < § #9§)
               {
                  this.§1$>§ += param1;
                  if(this.§1$>§ >= § #9§)
                  {
                     _loc6_ = §5"<§.§3"1§.§3#§(this.§'U§,{
                        "scaleX":this.§>"r§.x,
                        "scaleY":this.§>"r§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§6K§.visible)
                     {
                        _loc7_ = §5"<§.§3"1§.§3#§(this.§6K§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§6K§.scaleX,
                           "scaleY":this.§6K§.scaleY
                        },0.5,§3#G§.easeOut);
                        §5"<§.§3"1§.§]#6§(_loc7_,_loc6_).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §%!7§() : void
      {
         var _loc2_:§;!b§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§0!N§ = null;
         var _loc7_:§0!N§ = null;
         var _loc8_:§0!N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"#%§.length)
         {
            _loc2_ = this.§"#%§[_loc1_];
            _loc2_.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §5"<§.§3"1§.§3#§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§3#G§.easeIn);
            _loc7_ = §5"<§.§3"1§.§3#§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§3#G§.easeOut);
            (_loc8_ = §5"<§.§3"1§.§]#6§(_loc6_,_loc7_)).§]!3§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§%Z§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§0$1§ = true;
         this.§?!=§ = 0;
      }
      
      private function §?!i§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§0!N§ = null;
         var _loc4_:§0!N§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§0!N§ = null;
         this.§2$ § = this.§0u§;
         this.§0u§ = §1$ §;
         switch(this.§2$ §)
         {
            case §5"M§:
               this.§5!m§ = 0;
               _loc1_ = [];
               _loc2_ = §'o§.mClip.bg;
               _loc3_ = §5"<§.§3"1§.§3#§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§5"<§.§`#3§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §6"Z§)
               {
                  _loc6_ = this.§"#%§[_loc5_].mClip;
                  _loc7_ = §5"<§.§3"1§.§3#§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§3#G§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §5"<§.§3"1§.§!"[§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§8!i§ = §5"<§.§3"1§.§]#6§(_loc3_,_loc4_);
               this.§8!i§.onComplete = this.§%!7§;
               break;
            case §>$?§:
               this.§1$>§ = 0;
         }
      }
      
      private function §"!N§(param1:MouseEvent) : void
      {
         this.§'U§.removeEventListener(MouseEvent.CLICK,this.§"!N§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§0!N§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§0$1§ = false;
               _loc4_ = (param3 as §;!b§).mClip;
               (param3 as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§%Z§[param3 as §;!b§]).stop();
               _loc5_.dispose();
               this.§""X§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§1<§);
               ++this.§1<§;
               if(this.§1<§ == §>!P§)
               {
                  this.§4G§();
               }
               if(this.§1<§ == §6"Z§)
               {
                  this.§%!?§(§>$?§);
                  break;
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §""X§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§`"j§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§'o§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§9#B§ = new §9#B§(800,800,0,0,§9#B§.§9h§,20,§,#B§.§`m§);
         this.§'!2§.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§0!N§ = §5"<§.§3"1§.§3#§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§5"<§.§`#3§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §=@§.§9!x§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§0!N§ = §5"<§.§3"1§.§3#§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§0!N§ = §5"<§.§3"1§.§3#§(shineMC,{"rotation":0},{"rotation":-360},23,§5"<§.§5!p§);
         shineTween.§]!3§ = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§1<§ % 3 + 1);
         §4$4§.playSound(soundName,§4$4§.§1#l§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §'o§.mClip.removeEventListener(Event.ENTER_FRAME,this.§[#B§);
         this.§?!c§();
         super.hide(param1,param2);
      }
      
      private function §?!c§() : void
      {
         var _loc2_:§9#B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            _loc2_ = this.§'!2§[_loc1_];
            _loc2_.§ !1§();
            _loc1_++;
         }
      }
      
      private function §4G§() : void
      {
         this.§<#G§ = new §5"f§();
         this.§<#G§.addEventListener(Event.COMPLETE,this.§,!P§);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
         this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<#G§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §5"L§.§<"9§));
      }
      
      private function §7#C§(param1:IOErrorEvent) : void
      {
         this.§<#G§.removeEventListener(Event.COMPLETE,this.§,!P§);
         this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
      }
      
      private function §,!P§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§-!>§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§`"j§)
         {
            (_loc4_ = new §-!>§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §2$8§.§,"p§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§'#w§ = §]!P§.§##y§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §!",§.§3"1§.§"#t§(param1.currentTarget.data,false,_loc2_);
         this.§<#G§.removeEventListener(Event.COMPLETE,this.§,!P§);
         this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
      }
   }
}
