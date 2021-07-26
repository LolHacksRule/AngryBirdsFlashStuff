package §+_§
{
   import § "L§.§1"r§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §&=§.§<#V§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §-#;§.§;!t§;
   import §-#;§.§>",§;
   import §3"V§.§ b§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import §=J§.§4#"§;
   import §?Q§.ErrorPopup;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
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
      
      private static var § ]§:uint = 6;
      
      private static var §;#1§:uint = 2;
      
      private static const § #X§:uint = 0;
      
      private static const §%#W§:uint = 1;
      
      private static const §4#C§:uint = 2;
      
      private static const §'"Q§:uint = 200;
      
      private static const §&Q§:uint = 500;
      
      private static const §&#4§:int = 1500;
       
      
      private var §3#x§:uint = 0;
      
      private var §0!f§:DisplayObject;
      
      private var §=!m§:Array;
      
      private var §@$2§:§-$C§;
      
      private var §=#f§:Vector.<§1"r§>;
      
      private var §'#Z§:§@"§;
      
      private var §^#q§:int;
      
      private var §+!t§:uint = 0;
      
      private var §9!'§:uint = 0;
      
      private var §7p§:int;
      
      private var §'"G§:int;
      
      private var §2!^§:Vector.<§;!t§>;
      
      private var §,#G§:Point;
      
      private var §4$E§:Dictionary;
      
      private var §;"]§:Boolean;
      
      private var §-s§:int;
      
      private var § !;§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§=#f§ = new Vector.<§1"r§>();
         this.§4$E§ = new Dictionary();
         super(param1,param2,§false§.§4#;§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§1"r§ = null;
         super.init();
         this.§0!f§ = §;#'§.mClip.doneButton;
         this.§0!f§.addEventListener(MouseEvent.CLICK,this.§6"8§);
         this.§,#G§ = new Point(this.§0!f§.scaleX,this.§0!f§.scaleY);
         this.§0!f§.scaleY = 0;
         this.§0!f§.scaleX = 0;
         this.§ !;§ = §;#'§.mClip.tipMC;
         this.§ !;§.visible = false;
         var _loc1_:DisplayObject = §;#'§.mClip.bg;
         _loc1_.visible = false;
         this.§=!m§ = §]#0§.§+!,§.§'!u§.§?#F§(§7!$§.§6$3§);
         var _loc2_:int = 1;
         while(_loc2_ <= § ]§)
         {
            _loc3_ = §1"r§(§;#'§.getItemByName("chest" + _loc2_));
            this.§=#f§.push(_loc3_);
            _loc3_.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§=!m§ == null || this.§=!m§.length < § ]§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Rewards from " + §7!$§.§6$3§ + " does not match the chest count"));
         }
         this.§2!^§ = new Vector.<§;!t§>();
      }
      
      private function §3#§(param1:uint) : void
      {
         this.§+!t§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§^#q§ = getTimer();
         §;#'§.mClip.addEventListener(Event.ENTER_FRAME,this.§3#f§);
         this.§3#§(§%#W§);
      }
      
      private function §3#f§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§^#q§;
         this.§^#q§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§+!t§ != § #X§ && this.§+!t§ != this.§9!'§)
         {
            this.§<R§();
         }
         this.updateState(param1);
         this.§3!m§(param1);
      }
      
      private function §3!m§(param1:int) : void
      {
         var _loc3_:§;!t§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!^§.length)
         {
            _loc3_ = this.§2!^§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:§1"r§ = null;
         var _loc5_:§@"§ = null;
         var _loc6_:§@"§ = null;
         var _loc7_:§@"§ = null;
         var _loc8_:§@"§ = null;
         switch(this.§9!'§)
         {
            case §%#W§:
               if(this.§7p§ < §'"Q§)
               {
                  this.§7p§ += param1;
                  if(this.§7p§ >= §'"Q§)
                  {
                     this.§'#Z§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§=#f§.length)
                     {
                        (_loc4_ = this.§=#f§[_loc2_]).setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §;#'§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§;"]§)
               {
                  this.§-s§ += param1;
                  if(this.§-s§ >= §&#4§)
                  {
                     _loc5_ = §6"W§.§+!,§.§9!n§(this.§ !;§,{
                        "scaleX":this.§ !;§.scaleX,
                        "scaleY":this.§ !;§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§4#"§.easeOut);
                     this.§ !;§.visible = true;
                     this.§ !;§.scaleX = this.§ !;§.scaleY = 0;
                     _loc5_.play();
                     this.§;"]§ = false;
                  }
               }
               break;
            case §4#C§:
               if(this.§'"G§ < §&Q§)
               {
                  this.§'"G§ += param1;
                  if(this.§'"G§ >= §&Q§)
                  {
                     _loc6_ = §6"W§.§+!,§.§9!n§(this.§0!f§,{
                        "scaleX":this.§,#G§.x,
                        "scaleY":this.§,#G§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§ !;§.visible)
                     {
                        _loc7_ = §6"W§.§+!,§.§9!n§(this.§ !;§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§ !;§.scaleX,
                           "scaleY":this.§ !;§.scaleY
                        },0.5,§4#"§.easeOut);
                        (_loc8_ = §6"W§.§+!,§.§9S§(_loc7_,_loc6_)).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §>!b§() : void
      {
         var _loc2_:§1"r§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§@"§ = null;
         var _loc7_:§@"§ = null;
         var _loc8_:§@"§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#f§.length)
         {
            _loc2_ = this.§=#f§[_loc1_];
            _loc2_.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §6"W§.§+!,§.§9!n§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§4#"§.easeIn);
            _loc7_ = §6"W§.§+!,§.§9!n§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§4#"§.easeOut);
            (_loc8_ = §6"W§.§+!,§.§9S§(_loc6_,_loc7_)).§=!0§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§4$E§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§;"]§ = true;
         this.§-s§ = 0;
      }
      
      private function §<R§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§@"§ = null;
         var _loc4_:§@"§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§@"§ = null;
         this.§9!'§ = this.§+!t§;
         this.§+!t§ = § #X§;
         switch(this.§9!'§)
         {
            case §%#W§:
               this.§7p§ = 0;
               _loc1_ = [];
               _loc2_ = §;#'§.mClip.bg;
               _loc3_ = §6"W§.§+!,§.§9!n§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§6"W§.§4-§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < § ]§)
               {
                  _loc6_ = this.§=#f§[_loc5_].mClip;
                  _loc7_ = §6"W§.§+!,§.§9!n§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§4#"§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §6"W§.§+!,§.§8$>§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§'#Z§ = §6"W§.§+!,§.§9S§(_loc3_,_loc4_);
               this.§'#Z§.onComplete = this.§>!b§;
               break;
            case §4#C§:
               this.§'"G§ = 0;
         }
      }
      
      private function §6"8§(param1:MouseEvent) : void
      {
         this.§0!f§.removeEventListener(MouseEvent.CLICK,this.§6"8§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§@"§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§;"]§ = false;
               _loc4_ = (param3 as §1"r§).mClip;
               (param3 as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§4$E§[param3 as §1"r§]).stop();
               _loc5_.dispose();
               this.§!#>§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§3#x§);
               ++this.§3#x§;
               if(this.§3#x§ == §;#1§)
               {
                  this.§+c§();
               }
               if(this.§3#x§ == § ]§)
               {
                  this.§3#§(§4#C§);
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §!#>§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§=!m§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§;#'§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§;!t§ = new §;!t§(800,800,0,0,§;!t§.§[#4§,20,§>",§.§;3§);
         this.§2!^§.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§@"§ = §6"W§.§+!,§.§9!n§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§6"W§.§4-§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §[a§.§8#k§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§@"§ = §6"W§.§+!,§.§9!n§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§@"§ = §6"W§.§+!,§.§9!n§(shineMC,{"rotation":0},{"rotation":-360},23,§6"W§.§[X§);
         shineTween.§=!0§ = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§3#x§ % 3 + 1);
         § b§.playSound(soundName,§ b§.§;$5§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §;#'§.mClip.removeEventListener(Event.ENTER_FRAME,this.§3#f§);
         this.§@!,§();
         super.hide(param1,param2);
      }
      
      private function §@!,§() : void
      {
         var _loc2_:§;!t§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!^§.length)
         {
            _loc2_ = this.§2!^§[_loc1_];
            _loc2_.§<![§();
            _loc1_++;
         }
      }
      
      private function §+c§() : void
      {
         this.§@$2§ = new §-$C§();
         this.§@$2§.addEventListener(Event.COMPLETE,this.§%!S§);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
         this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§@$2§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §7!$§.§6$3§));
      }
      
      private function §="&§(param1:IOErrorEvent) : void
      {
         this.§@$2§.removeEventListener(Event.COMPLETE,this.§%!S§);
         this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
      }
      
      private function §%!S§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§<#V§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§=!m§)
         {
            (_loc4_ = new §<#V§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §>#g§.§=-§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§]#=§ = §3";§.§]!o§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §]#0§.§+!,§.§&$@§(param1.currentTarget.data,false,_loc2_);
         this.§@$2§.removeEventListener(Event.COMPLETE,this.§%!S§);
         this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
      }
   }
}
