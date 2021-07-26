package §0#f§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§7Y§;
   import §"!!§.§+"0§;
   import §##C§.§'!'§;
   import §##C§.§5_§;
   import §##C§.§=i§;
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §-!S§.§##>§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§5$4§;
   import §8#!§.§5`§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.effects.easing.Back;
   
   public class QualifierInterruptedPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierInterruptedPopUp";
      
      private static const §[5§:uint = 0;
      
      private static const §3"c§:uint = 1;
      
      private static const §7"w§:uint = 2;
      
      private static const §@#O§:uint = 3;
      
      private static const §%!u§:uint = 4;
      
      private static const §`]§:uint = 5;
      
      private static const §;c§:uint = 6;
      
      private static const §;"e§:uint = 7;
      
      private static const §8h§:uint = 8;
      
      private static const §`!3§:uint = 9;
      
      private static const §9"H§:uint = 10;
      
      private static const §7!f§:uint = 7;
      
      private static const §?$=§:uint = 3;
      
      private static const §1!g§:int = 2;
      
      private static var §7#2§:Array;
      
      private static const §-!;§:uint = 6;
      
      private static var §2#?§:Boolean = false;
      
      private static var §5"$§:Boolean = false;
      
      private static var §@#,§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §#"$§:Boolean = false;
       
      
      private var §2"E§:DisplayObject;
      
      private var §=!D§:int;
      
      private var §5#'§:DisplayObjectContainer;
      
      private var §%!b§:Sprite;
      
      private var §""'§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §0"1§:Number;
      
      private var §default§:Number;
      
      private var §'"Z§:int;
      
      private var §3"e§:int;
      
      private var §4!P§:int;
      
      private var §=#k§:uint = 0;
      
      private var §!"%§:uint = 0;
      
      private var §@#Q§:Array;
      
      private var §&!e§:Number;
      
      private var §9$"§:Number;
      
      private var §,0§:DisplayObject;
      
      private var §9p§:DisplayObject;
      
      private var §<#S§:Number;
      
      private var § #8§:Number;
      
      private var §!#[§:Array;
      
      private var §4$+§:DisplayObject;
      
      private var §^#0§:DisplayObjectContainer;
      
      private var §`O§:Boolean = false;
      
      private var §[!P§:Array;
      
      private var §9"o§:int = 30;
      
      private var §"#I§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §,"t§:DisplayObjectContainer;
      
      private var §9"j§:§&"H§;
      
      private var §5#R§:int;
      
      private var §&!U§:Boolean;
      
      private var §;"%§:Boolean;
      
      private var §4"6§:int;
      
      private var §extends§:Boolean;
      
      private var §&!Z§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§@#Q§ = [];
         this.§!#[§ = [];
         this.§[!P§ = [];
         super(param1,param2,§1Q§.§5T§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §9#x§(param1:Array) : void
      {
         var _loc2_:§##>§ = null;
         var _loc3_:§5$4§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§5$4§ = null;
         if(!§2#?§)
         {
            §7#2§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§6"X§ != "QUALIFIER")
               {
                  §7#2§.push(_loc3_);
               }
            }
            _loc4_ = §-!;§ - §7#2§.length;
            _loc5_ = 0;
            while(_loc5_ < §+"0§.§]#6§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §+"0§.§]#6§[_loc5_];
               if(§+"0§.§@#`§.indexOf(_loc6_.userId) == -1 && _loc6_.§6"X§ != "QUALIFIER")
               {
                  §7#2§.push(§+"0§.§]#6§[_loc5_]);
               }
               _loc5_++;
            }
            §2#?§ = true;
         }
      }
      
      override protected function init() : void
      {
         var _loc4_:DisplayObject = null;
         §#"$§ = true;
         super.init();
         §!"p§.§5#4§("leagues_channel",10,1);
         this.§9"j§ = §&"H§.§6!§;
         this.§=!D§ = §5`§.§6!§.§'$<§;
         var _loc1_:MovieClip = §,#2§.mClip;
         this.§2"E§ = _loc1_.yellowBar;
         this.§5#'§ = _loc1_.weeklyTournamentMC;
         this.§""'§ = _loc1_.leaguesMC;
         this.§,0§ = _loc1_.rewardChest;
         this.§9p§ = _loc1_.btnClaim;
         this.§4$+§ = _loc1_.rankUpMC;
         this.§^#0§ = _loc1_.PlayerAvatar;
         this.§0>§();
         var _loc2_:int = 1;
         while(_loc2_ <= §7!f§)
         {
            this.§!#[§.push(this.§""'§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §?$=§)
         {
            (_loc4_ = this.§""'§.getChildByName("QualifierStar" + (_loc3_ + 1))).visible = false;
            _loc3_++;
         }
         this.§<#S§ = this.§2"E§.x - (this.§2"E§.width >> 1);
         this.§ #8§ = this.§2"E§.y - (this.§2"E§.height >> 1);
         this.§0"1§ = this.§2"E§.scaleX;
         this.§default§ = this.§2"E§.scaleY;
         this.§5#'§.visible = false;
         this.§""'§.visible = false;
         this.§,0§.visible = false;
         this.§9p§.visible = false;
         this.§4$+§.visible = false;
         this.§,"t§.visible = false;
         this.§^#0§.visible = false;
         this.§9p§.addEventListener(MouseEvent.CLICK,this.§]#o§);
         this.§!"h§(_loc1_);
         this.§7#`§();
      }
      
      private function §0>§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§5#'§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§5#'§.getChildByName("FriendAvatarsGroup2"));
         this.§,"t§ = DisplayObjectContainer(this.§5#'§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §-!;§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§["k§();
         this.§>S§();
      }
      
      private function §!"h§(param1:MovieClip) : void
      {
         switch(this.§=!D§)
         {
            case 1:
               this.§2"E§.scaleX = 0.8;
               break;
            case 2:
               this.§2"E§.scaleX = 1.1;
               break;
            case 3:
               this.§2"E§.scaleX = 1;
               break;
            case 4:
               this.§2"E§.scaleX = 1.1;
         }
         this.§`?§();
         var _loc2_:MovieClip = this.§@#Q§[this.§=!D§ - 1];
         if(this.§=!D§ < 5)
         {
            this.§5#'§.x = _loc2_.x + _loc2_.mc.width + (this.§5#'§.width >> 1) + 60;
         }
         this.§^#0§.x = _loc2_.x + (_loc2_.mc.width * §1!g§ - this.§^#0§.width >> 1);
         this.§^#0§.y = _loc2_.y - (_loc2_.mc.height * §1!g§ >> 1) - this.§^#0§.height;
      }
      
      private function §`?§() : void
      {
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §,#2§.mClip;
         var _loc2_:Number = this.§2"E§.x - (this.§2"E§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§=!D§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§=!D§)
         {
            (_loc6_ = new (_loc5_ = §!"f§.§##?§(_loc3_))()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§2"E§.y - (this.§2"E§.height >> 1) + (this.§2"E§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§@#Q§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§'"Z§ = getTimer();
         §,#2§.mClip.addEventListener(Event.ENTER_FRAME,this.§>"<§);
         if(this.§=!D§ > 1)
         {
            this.§1"h§(§3"c§);
         }
         else
         {
            this.§1"h§(§7"w§);
         }
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
            this.§3"e§ += param1;
            if(this.§3"e§ >= this.§4!P§)
            {
               this.§&$7§();
            }
         }
         this.updateState(param1);
         if(!§5"$§)
         {
            if(§2#?§)
            {
               this.§>S§();
               §5"$§ = true;
            }
         }
      }
      
      private function updateState(param1:int) : void
      {
         var roundMc:MovieClip = null;
         var soundNum:uint = 0;
         var soundStr:String = null;
         var fn:Function = null;
         var starMC:DisplayObject = null;
         var leagueMC:DisplayObject = null;
         var soundName:String = null;
         var dt:int = param1;
         switch(this.§!"%§)
         {
            case §`]§:
               if(this.§`O§)
               {
                  if(this.index < this.§[!P§.length - 1)
                  {
                     this.§^#0§.x = this.§[!P§[this.index].x;
                     this.§^#0§.y = this.§[!P§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§`O§ = false;
                     this.§^#0§.visible = false;
                     this.§,"t§.visible = true;
                     this.§1"h§(§;c§,1000);
                  }
               }
               break;
            case §3"c§:
               if(!this.§&!U§)
               {
                  roundMc = this.§@#Q§[this.§5#R§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§5#R§ > 2 ? uint(3) : uint(this.§5#R§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §!"p§.playSound(soundStr,§!"p§.§+!;§);
                     fn = function():void
                     {
                        §!"p§.playSound("Checkmark",§!"p§.§+!;§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§5#R§ < this.§=!D§ - 2)
                     {
                        ++this.§5#R§;
                     }
                     else
                     {
                        this.§&!U§ = true;
                     }
                  }
               }
               break;
            case §8h§:
               if(!this.§;"%§)
               {
                  if(this.§4"6§ > §?$=§ - 1)
                  {
                     this.§;"%§ = true;
                  }
                  else
                  {
                     starMC = this.§""'§.getChildByName("QualifierStar" + (this.§4"6§ + 1));
                     if(starMC && starMC.scaleX >= 0.5)
                     {
                        §!"p§.playSound("league_promotion_star",§!"p§.§+!;§);
                        ++this.§4"6§;
                     }
                  }
               }
               break;
            case §;"e§:
               if(!this.§extends§)
               {
                  if(this.§&!Z§ > §7!f§ - 1)
                  {
                     this.§extends§ = true;
                  }
                  else
                  {
                     leagueMC = this.§!#[§[this.§&!Z§];
                     if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                     {
                        soundName = §@#,§[this.§&!Z§];
                        §!"p§.playSound(soundName,"leagues_channel");
                        ++this.§&!Z§;
                     }
                  }
               }
         }
      }
      
      private function §&$7§() : void
      {
         this.§!"%§ = this.§=#k§;
         this.§=#k§ = §[5§;
         switch(this.§!"%§)
         {
            case §3"c§:
               this.§,s§();
               break;
            case §7"w§:
               this.§+!?§();
               break;
            case §@#O§:
               this.§,"s§();
               break;
            case §%!u§:
               this.§`#-§();
               break;
            case §`]§:
               this.§1"z§();
               break;
            case §;c§:
               this.§@"i§();
               break;
            case §;"e§:
               this.§2!v§();
               break;
            case §8h§:
               this.§]"b§();
               break;
            case §9"H§:
               this.§1"1§();
               break;
            case §`!3§:
               this.§8"Q§();
         }
      }
      
      private function §8"Q§() : void
      {
         var rankUpTween:§7Y§ = this.§9"j§.§6C§(this.§4$+§,{
            "scaleX":this.§4$+§.scaleX,
            "scaleY":this.§4$+§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§'!'§.easeIn);
         this.§4$+§.visible = true;
         this.§4$+§.scaleY = 0;
         this.§4$+§.scaleX = 0;
         rankUpTween.play();
         §!"p§.playSound("Congratulations_text_appear",§!"p§.§+!;§);
         rankUpTween.onComplete = function fn():void
         {
            §1"h§(§9"H§,300);
         };
      }
      
      private function §]"b§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§;"%§ = false;
         this.§4"6§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §?$=§)
         {
            starMC = this.§""'§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§9"j§.§6C§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§5_§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§7Y§ = this.§9"j§.§'"c§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §1"h§(§`!3§);
         };
      }
      
      private function §1"1§() : void
      {
         var _loc1_:§7Y§ = this.§9"j§.§6C§(this.§9p§,{
            "scaleX":this.§9p§.scaleX,
            "scaleY":this.§9p§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§5_§.easeOut);
         _loc1_.play();
         this.§9p§.visible = true;
         this.§9p§.scaleY = 0;
         this.§9p§.scaleX = 0;
         §!"p§.playSound("button_appear");
      }
      
      private function §,s§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§7Y§ = null;
         this.§5#R§ = 0;
         this.§&!U§ = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§@#Q§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§@#Q§.length - 1 - i));
            roundMc = this.§@#Q§[i];
            tween = this.§9"j§.§6C§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§'!'§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§7Y§ = this.§9"j§.§'"c§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §1"h§(§7"w§,500);
         };
      }
      
      private function §1"z§() : void
      {
         var lastRoundMC:MovieClip = this.§@#Q§[this.§=!D§ - 1];
         var lastRoundCompTween:§7Y§ = this.§9"j§.§6C§(lastRoundMC,{
            "scaleX":this.§&!e§,
            "scaleY":this.§9$"§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§'!'§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §`O§ = true;
            §!"p§.playSound("Congratulation_ambient");
         };
      }
      
      private function §`#-§() : void
      {
         var chestTween:§7Y§ = this.§9"j§.§6C§(this.§,0§,{
            "scaleX":this.§,0§.scaleX,
            "scaleY":this.§,0§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§5_§.easeOut);
         this.§,0§.visible = true;
         this.§,0§.scaleY = 0;
         this.§,0§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §1"h§(§`]§,500);
         };
         chestTween.play();
      }
      
      private function §+!?§() : void
      {
         var lRoundMC:MovieClip = this.§@#Q§[this.§=!D§ - 1];
         this.§&!e§ = lRoundMC.scaleX;
         this.§9$"§ = lRoundMC.scaleY;
         var tween1:§7Y§ = this.§9"j§.§6C§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §1!g§,
            "scaleY":lRoundMC.scaleY * §1!g§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§'!'§.easeIn);
         var tween2:§7Y§ = this.§9"j§.§6C§(this.§^#0§,{"alpha":this.§^#0§.alpha},{"alpha":0},0.3,§'!'§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§7Y§ = this.§9"j§.§6C§(shineMC,{"rotation":0},{"rotation":-360},5,§&"H§.§-t§);
         shineTween.§"$ § = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§^#0§.alpha = 0;
         this.§^#0§.visible = true;
         var tween:§7Y§ = this.§9"j§.§5!j§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §!"p§.§%!R§("element_appear_3",§!"p§.§+!;§);
            §!"p§.playSound("Checkmark",§!"p§.§+!;§);
            §1"h§(§@#O§,500);
         };
         tween.play();
      }
      
      private function §,"s§() : void
      {
         this.§5#'§.visible = true;
         var tween2:§7Y§ = this.§9"j§.§6C§(this.§5#'§,{
            "scaleX":this.§5#'§.scaleX,
            "scaleY":this.§5#'§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§'!'§.easeIn);
         this.§5#'§.scaleY = 0;
         this.§5#'§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §!"p§.playSound("Weekly_tournament_element",§!"p§.§+!;§);
            §1"h§(§%!u§,1000);
         };
         tween2.play();
      }
      
      private function §2!v§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§7Y§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§7Y§ = null;
         var iconTween2:§7Y§ = null;
         var pulsateTween:§7Y§ = null;
         this.§extends§ = false;
         this.§&!Z§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§!#[§.length)
         {
            leagueMC = this.§!#[§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§9"j§.§6C§(shineMC,{"rotation":0},{"rotation":-360},5,§&"H§.§-t§);
               shineTween.§"$ § = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§9"j§.§6C§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§'!'§.easeOut);
               iconTween2 = this.§9"j§.§6C§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§'!'§.easeOut,0.5);
               pulsateTween = this.§9"j§.§>##§(iconTween1,iconTween2);
               pulsateTween.§"$ § = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§!#[§.length - i));
            delay = 0;
            if(i > this.§!#[§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§9"j§.§6C§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§'!'§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§""'§.visible = true;
         var leagueOpeningTween:§7Y§ = this.§9"j§.§'"c§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §1"h§(§8h§,300);
         };
      }
      
      private function §@"i§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§7Y§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§@#Q§.length)
         {
            roundMc = this.§@#Q§[i];
            tween = this.§9"j§.§6C§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§'!'§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§7Y§ = this.§9"j§.§'!K§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§7Y§ = §9"j§.§6C§(§2"E§,{"scaleX":§0"1§},{"scaleX":§2"E§.scaleX},0.5,§=i§.easeIn);
            var slideTween:§7Y§ = §9"j§.§6C§(§5#'§,{"x":§""'§.x - (§5#'§.width >> 1) - 20},{"x":§5#'§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §,"t§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §,"t§.scaleY * 1.2;
            var playerAvatartween:§7Y§ = §9"j§.§6C§(§,"t§,{
               "x":-(§,"t§.width + (playerAvatarFinalScaleX - §,"t§.scaleX) * §,"t§.width >> 1),
               "y":§,"t§.y - (playerAvatarFinalScaleY - §,"t§.scaleY) * §,"t§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§,"t§.x,
               "y":§,"t§.y,
               "scaleX":§,"t§.scaleX,
               "scaleY":§,"t§.scaleY
            },0.6,§=i§.easeIn);
            var friendsSet1Tween:§7Y§ = §9"j§.§6C§(mFriendAvatarsGrp1MC,{"x":-(§5#'§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§=i§.easeIn);
            var friendsSet2Tween:§7Y§ = §9"j§.§6C§(mFriendAvatarsGrp2MC,{"x":(§5#'§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§=i§.easeIn);
            var weeklyTournamentTween:§7Y§ = §9"j§.§5!j§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §!"p§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               §!"p§.playSound("ui_ingame_scorebox_gain_position",§!"p§.§+!;§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §1"h§(§;"e§);
            };
         };
      }
      
      private function §1"h§(param1:uint, param2:int = 0) : void
      {
         this.§=#k§ = param1;
         this.§4!P§ = param2;
         this.§3"e§ = 0;
      }
      
      private function §]#o§(param1:MouseEvent) : void
      {
         §!"p§.playSound("chest_open_special",§!"p§.§+!;§);
         §,#2§.mClip.removeEventListener(Event.ENTER_FRAME,this.§>"<§);
         §,#2§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§]#o§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§]"$§.NORMAL,§^"U§.DEFAULT));
      }
      
      private function §7#`§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§[!P§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§^#0§.x;
         var _loc9_:Number = this.§^#0§.y;
         var _loc10_:Number = this.§,"t§.localToGlobal(new Point(§,#2§.mClip.x,§,#2§.mClip.y)).x;
         var _loc11_:Number = this.§,"t§.localToGlobal(new Point(§,#2§.mClip.x,§,#2§.mClip.y)).y;
         var _loc12_:Number = this.§^#0§.x + 30;
         var _loc13_:Number = this.§^#0§.y - 100;
         if(AngryBirdsBase.singleton.§`$<§())
         {
            _loc12_ += 30;
            _loc13_ -= 150;
         }
         while(_loc1_ <= 1)
         {
            _loc2_ = 1 - _loc1_;
            _loc3_ = _loc2_ * _loc2_;
            _loc4_ = _loc1_ * _loc1_;
            _loc5_ = 2 * _loc1_ * _loc2_;
            _loc6_ = _loc3_ * _loc8_ + _loc5_ * _loc12_ + _loc4_ * _loc10_;
            _loc7_ = _loc3_ * _loc9_ + _loc5_ * _loc13_ + _loc4_ * _loc11_;
            this.§[!P§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§9"o§;
         }
         var _loc14_:int = this.§[!P§.length - 1;
         var _loc15_:int = this.§[!P§.length - 2;
         this.§"#I§ = Math.atan2(this.§[!P§[_loc14_].y - this.§[!P§[_loc15_].y,this.§[!P§[_loc14_].x - this.§[!P§[_loc15_].x);
      }
      
      private function §["k§() : void
      {
         var _loc1_:§##>§ = AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
         var _loc2_:§=#>§ = new §=#>§(_loc1_.userID,"",true,§4!+§.NORMAL,"",true);
         var _loc3_:§=#>§ = new §=#>§(_loc1_.userID,"",true,§4!+§.NORMAL,"",true);
         this.§^#0§.addChild(_loc2_);
         this.§,"t§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §>S§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§5$4§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§=#>§ = null;
         if(§7#2§ != null)
         {
            _loc1_ = Math.min(§-!;§,§7#2§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §7#2§[_loc4_];
               _loc6_ = _loc4_ % 2 == 0 ? this.mFriendAvatarsGrp1MC : this.mFriendAvatarsGrp2MC;
               if(_loc4_ % 2 == 0)
               {
                  _loc2_++;
                  _loc7_ = DisplayObjectContainer(_loc6_.getChildByName("FriendAvatar" + _loc2_));
               }
               else
               {
                  _loc3_++;
                  _loc7_ = DisplayObjectContainer(_loc6_.getChildByName("FriendAvatar" + _loc3_));
               }
               _loc8_ = new §=#>§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
               _loc8_.scaleY = 1.1;
               _loc8_.scaleX = 1.1;
               _loc8_.x += 3;
               _loc8_.y += 3;
               _loc7_.addChild(_loc8_);
               _loc7_.visible = true;
               _loc4_++;
            }
         }
      }
   }
}
