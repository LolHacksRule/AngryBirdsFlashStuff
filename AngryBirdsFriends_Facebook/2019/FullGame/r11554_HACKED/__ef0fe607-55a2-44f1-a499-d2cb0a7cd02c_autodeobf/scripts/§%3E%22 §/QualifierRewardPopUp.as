package §>" §
{
   import §%#v§.§0"j§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §-!"§.§7z§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §6§.§'#n§;
   import §6§.§6$'§;
   import §9#^§.§"$ §;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>#O§.§'##§;
   import §>#O§.§]u§;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import §]"'§.§>I§;
   import com.rovio.assets.§2"O§;
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
      
      private static var §;!>§:uint = 6;
      
      private static var §6#Z§:uint = 2;
      
      private static const §>"S§:uint = 0;
      
      private static const §%"g§:uint = 1;
      
      private static const §1#P§:uint = 2;
      
      private static const §!K§:uint = 200;
      
      private static const §7$A§:uint = 500;
      
      private static const § #-§:int = 1500;
       
      
      private var §&"6§:uint = 0;
      
      private var §4#r§:DisplayObject;
      
      private var §2M§:Array;
      
      private var §&![§:§'!n§;
      
      private var §7"R§:Vector.<§"S§>;
      
      private var §0"`§:§6$'§;
      
      private var §`"Q§:int;
      
      private var §9;§:uint = 0;
      
      private var §^w§:uint = 0;
      
      private var § !,§:int;
      
      private var §##K§:int;
      
      private var §"#e§:Vector.<§]u§>;
      
      private var §3$,§:Point;
      
      private var §0"a§:Dictionary;
      
      private var §5"o§:Boolean;
      
      private var §"#T§:int;
      
      private var §6$+§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§7"R§ = new Vector.<§"S§>();
         this.§0"a§ = new Dictionary();
         super(param1,param2,§0"j§.§-i§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§"S§ = null;
         super.init();
         this.§4#r§ = §8#Y§.mClip.doneButton;
         this.§4#r§.addEventListener(MouseEvent.CLICK,this.§&!%§);
         this.§3$,§ = new Point(this.§4#r§.scaleX,this.§4#r§.scaleY);
         this.§4#r§.scaleY = 0;
         this.§4#r§.scaleX = 0;
         this.§6$+§ = §8#Y§.mClip.tipMC;
         this.§6$+§.visible = false;
         var _loc1_:DisplayObject = §8#Y§.mClip.bg;
         _loc1_.visible = false;
         this.§2M§ = §#$D§.§?q§.§;p§.§="d§(§^"C§.§3"'§);
         var _loc2_:int = 1;
         while(_loc2_ <= §;!>§)
         {
            _loc3_ = §"S§(§8#Y§.getItemByName("chest" + _loc2_));
            this.§7"R§.push(_loc3_);
            _loc3_.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§2M§ == null || this.§2M§.length < §;!>§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Rewards from " + §^"C§.§3"'§ + " does not match the chest count"));
         }
         this.§"#e§ = new Vector.<§]u§>();
      }
      
      private function §%D§(param1:uint) : void
      {
         this.§9;§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`"Q§ = getTimer();
         §8#Y§.mClip.addEventListener(Event.ENTER_FRAME,this.§`!s§);
         this.§%D§(§%"g§);
      }
      
      private function §`!s§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§`"Q§;
         this.§`"Q§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§9;§ != §>"S§ && this.§9;§ != this.§^w§)
         {
            this.§,D§();
         }
         this.updateState(param1);
         this.§%#R§(param1);
      }
      
      private function §%#R§(param1:int) : void
      {
         var _loc3_:§]u§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"#e§.length)
         {
            _loc3_ = this.§"#e§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc5_:§6$'§ = null;
         var _loc6_:§6$'§ = null;
         var _loc7_:§6$'§ = null;
         switch(this.§^w§)
         {
            case §%"g§:
               if(this.§ !,§ < §!K§)
               {
                  this.§ !,§ += param1;
                  if(this.§ !,§ >= §!K§)
                  {
                     this.§0"`§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§7"R§.length)
                     {
                        this.§7"R§[_loc2_].setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §8#Y§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§5"o§)
               {
                  this.§"#T§ += param1;
                  if(this.§"#T§ >= § #-§)
                  {
                     _loc5_ = §'#n§.§?q§.§9!N§(this.§6$+§,{
                        "scaleX":this.§6$+§.scaleX,
                        "scaleY":this.§6$+§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§"$ §.easeOut);
                     this.§6$+§.visible = true;
                     this.§6$+§.scaleX = this.§6$+§.scaleY = 0;
                     _loc5_.play();
                     this.§5"o§ = false;
                     break;
                  }
                  break;
               }
               break;
            case §1#P§:
               if(this.§##K§ < §7$A§)
               {
                  this.§##K§ += param1;
                  if(this.§##K§ >= §7$A§)
                  {
                     _loc6_ = §'#n§.§?q§.§9!N§(this.§4#r§,{
                        "scaleX":this.§3$,§.x,
                        "scaleY":this.§3$,§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§6$+§.visible)
                     {
                        _loc7_ = §'#n§.§?q§.§9!N§(this.§6$+§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§6$+§.scaleX,
                           "scaleY":this.§6$+§.scaleY
                        },0.5,§"$ §.easeOut);
                        §'#n§.§?q§.§[#F§(_loc7_,_loc6_).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §0z§() : void
      {
         var _loc2_:§"S§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§6$'§ = null;
         var _loc7_:§6$'§ = null;
         var _loc8_:§6$'§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7"R§.length)
         {
            _loc2_ = this.§7"R§[_loc1_];
            _loc2_.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §'#n§.§?q§.§9!N§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§"$ §.easeIn);
            _loc7_ = §'#n§.§?q§.§9!N§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§"$ §.easeOut);
            (_loc8_ = §'#n§.§?q§.§[#F§(_loc6_,_loc7_)).§#$0§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§0"a§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§5"o§ = true;
         this.§"#T§ = 0;
      }
      
      private function §,D§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§6$'§ = null;
         var _loc4_:§6$'§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§6$'§ = null;
         this.§^w§ = this.§9;§;
         this.§9;§ = §>"S§;
         switch(this.§^w§)
         {
            case §%"g§:
               this.§ !,§ = 0;
               _loc1_ = [];
               _loc2_ = §8#Y§.mClip.bg;
               _loc3_ = §'#n§.§?q§.§9!N§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§'#n§.§`"E§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §;!>§)
               {
                  _loc6_ = this.§7"R§[_loc5_].mClip;
                  _loc7_ = §'#n§.§?q§.§9!N§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§"$ §.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §'#n§.§?q§.§set §(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§0"`§ = §'#n§.§?q§.§[#F§(_loc3_,_loc4_);
               this.§0"`§.onComplete = this.§0z§;
               break;
            case §1#P§:
               this.§##K§ = 0;
         }
      }
      
      private function §&!%§(param1:MouseEvent) : void
      {
         this.§4#r§.removeEventListener(MouseEvent.CLICK,this.§&!%§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§6$'§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§5"o§ = false;
               _loc4_ = (param3 as §"S§).mClip;
               (param3 as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§0"a§[param3 as §"S§]).stop();
               _loc5_.dispose();
               this.§7"$§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§&"6§);
               ++this.§&"6§;
               if(this.§&"6§ == §6#Z§)
               {
                  this.§@#a§();
               }
               if(this.§&"6§ == §;!>§)
               {
                  this.§%D§(§1#P§);
                  break;
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §7"$§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§2M§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§8#Y§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§]u§ = new §]u§(800,800,0,0,§]u§.§?!q§,20,§'##§.§=!k§);
         this.§"#e§.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§6$'§ = §'#n§.§?q§.§9!N§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§'#n§.§`"E§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §2"O§.§`>§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§6$'§ = §'#n§.§?q§.§9!N§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§6$'§ = §'#n§.§?q§.§9!N§(shineMC,{"rotation":0},{"rotation":-360},23,§'#n§.§-#o§);
         shineTween.§#$0§ = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§&"6§ % 3 + 1);
         §[#%§.playSound(soundName,§[#%§.§-"I§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §8#Y§.mClip.removeEventListener(Event.ENTER_FRAME,this.§`!s§);
         this.§[!i§();
         super.hide(param1,param2);
      }
      
      private function §[!i§() : void
      {
         var _loc2_:§]u§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"#e§.length)
         {
            _loc2_ = this.§"#e§[_loc1_];
            _loc2_.§4#y§();
            _loc1_++;
         }
      }
      
      private function §@#a§() : void
      {
         this.§&![§ = new §'!n§();
         this.§&![§.addEventListener(Event.COMPLETE,this.§&1§);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
         this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&![§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §^"C§.§3"'§));
      }
      
      private function §#O§(param1:IOErrorEvent) : void
      {
         this.§&![§.removeEventListener(Event.COMPLETE,this.§&1§);
         this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
      }
      
      private function §&1§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§7z§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§2M§)
         {
            (_loc4_ = new §7z§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §>I§.§ !C§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§+#;§ = §+$A§.§"#t§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §#$D§.§?q§.§["a§(param1.currentTarget.data,false,_loc2_);
         this.§&![§.removeEventListener(Event.COMPLETE,this.§&1§);
         this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
      }
   }
}
