package §9$8§
{
   import § §.§%!h§;
   import § §.§7#L§;
   import § §.§7M§;
   import §%$!§.§8!t§;
   import §&#S§.§""Z§;
   import §&#S§.§^#[§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §8§.§#$+§;
   import §;4§.§2!]§;
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
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
      
      private static const §^n§:uint = 0;
      
      private static const §'$6§:uint = 1;
      
      private static const §9$3§:uint = 2;
      
      private static const §;$"§:uint = 3;
      
      private static const §3!K§:uint = 4;
      
      private static const §4O§:uint = 5;
      
      private static const §5K§:uint = 6;
      
      private static const §7"h§:uint = 7;
      
      private static const §>#p§:uint = 8;
      
      private static const §7!M§:uint = 9;
      
      private static const §5"1§:uint = 10;
      
      private static const §?#`§:uint = 7;
      
      private static const § !1§:uint = 3;
      
      private static const §=#&§:int = 2;
      
      private static var §^!5§:Array;
      
      private static const §!"5§:uint = 6;
      
      private static var §?#p§:Boolean = false;
      
      private static var §[§:Boolean = false;
      
      private static var §=!X§:Array = ["LeaguePromotionSilver","LeaguePromotionSilver","LeaguePromotionSilver","LeaguePromotionSilver","LeaguePromotionSilver","LeaguePromotionSilver","LeaguePromotionDiamond"];
      
      public static var §8"O§:Boolean = false;
       
      
      private var §9#h§:DisplayObject;
      
      private var §<"J§:int;
      
      private var §5#;§:DisplayObjectContainer;
      
      private var §`"<§:Sprite;
      
      private var §^"w§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §-d§:Number;
      
      private var §7"l§:Number;
      
      private var §&#w§:int;
      
      private var §8"a§:int;
      
      private var §5"7§:int;
      
      private var §="U§:uint = 0;
      
      private var §8",§:uint = 0;
      
      private var §!!a§:Array;
      
      private var §@"y§:Number;
      
      private var §5$$§:Number;
      
      private var §!"!§:DisplayObject;
      
      private var §!"R§:DisplayObject;
      
      private var §]q§:Number;
      
      private var §[!c§:Number;
      
      private var §&m§:Array;
      
      private var §1"l§:DisplayObject;
      
      private var §6"g§:DisplayObjectContainer;
      
      private var §3c§:Boolean = false;
      
      private var §=C§:Array;
      
      private var §,Q§:int = 30;
      
      private var §<J§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §<!<§:DisplayObjectContainer;
      
      private var §,$;§:§""Z§;
      
      private var §`#z§:int;
      
      private var §case §:Boolean;
      
      private var §,!A§:Boolean;
      
      private var §6"X§:int;
      
      private var §8$+§:Boolean;
      
      private var §9!#§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§!!a§ = [];
         this.§&m§ = [];
         this.§=C§ = [];
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §=!`§(param1:Array) : void
      {
         var _loc2_:§!#Q§ = null;
         var _loc3_:§8!t§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§8!t§ = null;
         if(!§?#p§)
         {
            §^!5§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§+"t§ != "QUALIFIER")
               {
                  §^!5§.push(_loc3_);
               }
            }
            _loc4_ = §!"5§ - §^!5§.length;
            _loc5_ = 0;
            while(_loc5_ < §2!]§.§%B§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §2!]§.§%B§[_loc5_];
               if(§2!]§.§&F§.indexOf(_loc6_.userId) == -1 && _loc6_.§+"t§ != "QUALIFIER")
               {
                  §^!5§.push(§2!]§.§%B§[_loc5_]);
               }
               _loc5_++;
            }
            §?#p§ = true;
         }
      }
      
      override protected function init() : void
      {
         §8"O§ = true;
         super.init();
         §#$+§.§9"]§("leagues_channel",10,1);
         this.§,$;§ = §""Z§.§3!]§;
         this.§<"J§ = §]!m§.§3!]§.§""7§;
         var _loc1_:MovieClip = §7!j§.mClip;
         this.§9#h§ = _loc1_.yellowBar;
         this.§5#;§ = _loc1_.weeklyTournamentMC;
         this.§^"w§ = _loc1_.leaguesMC;
         this.§!"!§ = _loc1_.rewardChest;
         this.§!"R§ = _loc1_.btnClaim;
         this.§1"l§ = _loc1_.rankUpMC;
         this.§6"g§ = _loc1_.PlayerAvatar;
         this.§ !P§();
         var _loc2_:int = 1;
         while(_loc2_ <= §?#`§)
         {
            this.§&m§.push(this.§^"w§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < § !1§)
         {
            this.§^"w§.getChildByName("QualifierStar" + (_loc3_ + 1)).visible = false;
            _loc3_++;
         }
         this.§]q§ = this.§9#h§.x - (this.§9#h§.width >> 1);
         this.§[!c§ = this.§9#h§.y - (this.§9#h§.height >> 1);
         this.§-d§ = this.§9#h§.scaleX;
         this.§7"l§ = this.§9#h§.scaleY;
         this.§5#;§.visible = false;
         this.§^"w§.visible = false;
         this.§!"!§.visible = false;
         this.§!"R§.visible = false;
         this.§1"l§.visible = false;
         this.§<!<§.visible = false;
         this.§6"g§.visible = false;
         this.§!"R§.addEventListener(MouseEvent.CLICK,this.§<!,§);
         this.§?#V§(_loc1_);
         this.§&!v§();
      }
      
      private function § !P§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§5#;§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§5#;§.getChildByName("FriendAvatarsGroup2"));
         this.§<!<§ = DisplayObjectContainer(this.§5#;§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §!"5§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§## §();
         this.§<"O§();
      }
      
      private function §?#V§(param1:MovieClip) : void
      {
         switch(this.§<"J§)
         {
            case 1:
               this.§9#h§.scaleX = 0.8;
               break;
            case 2:
               this.§9#h§.scaleX = 1.1;
               break;
            case 3:
               this.§9#h§.scaleX = 1;
               break;
            case 4:
               this.§9#h§.scaleX = 1.1;
         }
         this.§+X§();
         var _loc2_:MovieClip = this.§!!a§[this.§<"J§ - 1];
         if(this.§<"J§ < 5)
         {
            this.§5#;§.x = _loc2_.x + _loc2_.mc.width + (this.§5#;§.width >> 1) + 60;
         }
         this.§6"g§.x = _loc2_.x + (_loc2_.mc.width * §=#&§ - this.§6"g§.width >> 1);
         this.§6"g§.y = _loc2_.y - (_loc2_.mc.height * §=#&§ >> 1) - this.§6"g§.height;
      }
      
      private function §+X§() : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §7!j§.mClip;
         var _loc2_:Number = this.§9#h§.x - (this.§9#h§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§<"J§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§<"J§)
         {
            (_loc6_ = new §@`§.§4!i§(_loc3_)()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§9#h§.y - (this.§9#h§.height >> 1) + (this.§9#h§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§!!a§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§&#w§ = getTimer();
         §7!j§.mClip.addEventListener(Event.ENTER_FRAME,this.§ #l§);
         if(this.§<"J§ > 1)
         {
            this.§7P§(§'$6§);
         }
         else
         {
            this.§7P§(§9$3§);
         }
      }
      
      private function § #l§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§&#w§;
         this.§&#w§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§="U§ != §^n§ && this.§="U§ != this.§8",§)
         {
            this.§8"a§ += param1;
            if(this.§8"a§ >= this.§5"7§)
            {
               this.§;A§();
            }
         }
         this.updateState(param1);
         if(!§[§)
         {
            if(§?#p§)
            {
               this.§<"O§();
               §[§ = true;
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
         switch(this.§8",§)
         {
            case §4O§:
               if(this.§3c§)
               {
                  if(this.index < this.§=C§.length - 1)
                  {
                     this.§6"g§.x = this.§=C§[this.index].x;
                     this.§6"g§.y = this.§=C§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§3c§ = false;
                     this.§6"g§.visible = false;
                     this.§<!<§.visible = true;
                     this.§7P§(§5K§,1000);
                  }
               }
               break;
            case §'$6§:
               if(!this.§case §)
               {
                  roundMc = this.§!!a§[this.§`#z§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§`#z§ > 2 ? uint(3) : uint(this.§`#z§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §#$+§.playSound(soundStr,§#$+§.§'!o§);
                     fn = function():void
                     {
                        §#$+§.playSound("Checkmark",§#$+§.§'!o§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§`#z§ < this.§<"J§ - 2)
                     {
                        ++this.§`#z§;
                     }
                     else
                     {
                        this.§case § = true;
                     }
                  }
               }
               break;
            case §>#p§:
               if(!this.§,!A§)
               {
                  if(this.§6"X§ > § !1§ - 1)
                  {
                     this.§,!A§ = true;
                  }
                  else
                  {
                     starMC = this.§^"w§.getChildByName("QualifierStar" + (this.§6"X§ + 1));
                     if(starMC && starMC.scaleX >= 0.5)
                     {
                        §#$+§.playSound("LeaguePromotionStar",§#$+§.§'!o§);
                        ++this.§6"X§;
                     }
                  }
               }
               break;
            case §7"h§:
               if(!this.§8$+§)
               {
                  if(this.§9!#§ > §?#`§ - 1)
                  {
                     this.§8$+§ = true;
                  }
                  else
                  {
                     leagueMC = this.§&m§[this.§9!#§];
                     if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                     {
                        soundName = §=!X§[this.§9!#§];
                        §#$+§.playSound(soundName,"leagues_channel");
                        ++this.§9!#§;
                     }
                  }
               }
         }
      }
      
      private function §;A§() : void
      {
         this.§8",§ = this.§="U§;
         this.§="U§ = §^n§;
         switch(this.§8",§)
         {
            case §'$6§:
               this.§`"w§();
               break;
            case §9$3§:
               this.§`#^§();
               break;
            case §;$"§:
               this.§,!c§();
               break;
            case §3!K§:
               this.§7#K§();
               break;
            case §4O§:
               this.§="V§();
               break;
            case §5K§:
               this.§,!7§();
               break;
            case §7"h§:
               this.§-"7§();
               break;
            case §>#p§:
               this.§+Q§();
               break;
            case §5"1§:
               this.§4#y§();
               break;
            case §7!M§:
               this.§@!>§();
         }
      }
      
      private function §@!>§() : void
      {
         var rankUpTween:§^#[§ = this.§,$;§.§5"0§(this.§1"l§,{
            "scaleX":this.§1"l§.scaleX,
            "scaleY":this.§1"l§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§7#L§.easeIn);
         this.§1"l§.visible = true;
         this.§1"l§.scaleY = 0;
         this.§1"l§.scaleX = 0;
         rankUpTween.play();
         §#$+§.playSound("Congratulations_text_appear",§#$+§.§'!o§);
         rankUpTween.onComplete = function fn():void
         {
            §7P§(§5"1§,300);
         };
      }
      
      private function §+Q§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§,!A§ = false;
         this.§6"X§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < § !1§)
         {
            starMC = this.§^"w§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§,$;§.§5"0§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§7M§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§^#[§ = this.§,$;§.§]"i§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §7P§(§7!M§);
         };
      }
      
      private function §4#y§() : void
      {
         var _loc1_:§^#[§ = this.§,$;§.§5"0§(this.§!"R§,{
            "scaleX":this.§!"R§.scaleX,
            "scaleY":this.§!"R§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§7M§.easeOut);
         _loc1_.play();
         this.§!"R§.visible = true;
         this.§!"R§.scaleY = 0;
         this.§!"R§.scaleX = 0;
         §#$+§.playSound("ButtonAppear");
      }
      
      private function §`"w§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§^#[§ = null;
         this.§`#z§ = 0;
         this.§case § = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§!!a§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§!!a§.length - 1 - i));
            roundMc = this.§!!a§[i];
            tween = this.§,$;§.§5"0§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§7#L§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§^#[§ = this.§,$;§.§]"i§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §7P§(§9$3§,500);
         };
      }
      
      private function §="V§() : void
      {
         var lastRoundMC:MovieClip = this.§!!a§[this.§<"J§ - 1];
         var lastRoundCompTween:§^#[§ = this.§,$;§.§5"0§(lastRoundMC,{
            "scaleX":this.§@"y§,
            "scaleY":this.§5$$§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§7#L§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §3c§ = true;
            §#$+§.playSound("Congratulation_ambient");
         };
      }
      
      private function §7#K§() : void
      {
         var chestTween:§^#[§ = this.§,$;§.§5"0§(this.§!"!§,{
            "scaleX":this.§!"!§.scaleX,
            "scaleY":this.§!"!§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§7M§.easeOut);
         this.§!"!§.visible = true;
         this.§!"!§.scaleY = 0;
         this.§!"!§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §7P§(§4O§,500);
         };
         chestTween.play();
      }
      
      private function §`#^§() : void
      {
         var lRoundMC:MovieClip = this.§!!a§[this.§<"J§ - 1];
         this.§@"y§ = lRoundMC.scaleX;
         this.§5$$§ = lRoundMC.scaleY;
         var tween1:§^#[§ = this.§,$;§.§5"0§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §=#&§,
            "scaleY":lRoundMC.scaleY * §=#&§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§7#L§.easeIn);
         var tween2:§^#[§ = this.§,$;§.§5"0§(this.§6"g§,{"alpha":this.§6"g§.alpha},{"alpha":0},0.3,§7#L§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§^#[§ = this.§,$;§.§5"0§(shineMC,{"rotation":0},{"rotation":-360},5,§""Z§.§?!Y§);
         shineTween.§^"c§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§6"g§.alpha = 0;
         this.§6"g§.visible = true;
         var tween:§^#[§ = this.§,$;§.§[$2§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §#$+§.§=#P§("element_appear_3",§#$+§.§'!o§);
            §#$+§.playSound("Checkmark",§#$+§.§'!o§);
            §7P§(§;$"§,500);
         };
         tween.play();
      }
      
      private function §,!c§() : void
      {
         this.§5#;§.visible = true;
         var tween2:§^#[§ = this.§,$;§.§5"0§(this.§5#;§,{
            "scaleX":this.§5#;§.scaleX,
            "scaleY":this.§5#;§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§7#L§.easeIn);
         this.§5#;§.scaleY = 0;
         this.§5#;§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §#$+§.playSound("weekly_tournament_appear",§#$+§.§'!o§);
            §7P§(§3!K§,1000);
         };
         tween2.play();
      }
      
      private function §-"7§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§^#[§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§^#[§ = null;
         var iconTween2:§^#[§ = null;
         var pulsateTween:§^#[§ = null;
         this.§8$+§ = false;
         this.§9!#§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§&m§.length)
         {
            leagueMC = this.§&m§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§,$;§.§5"0§(shineMC,{"rotation":0},{"rotation":-360},5,§""Z§.§?!Y§);
               shineTween.§^"c§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§,$;§.§5"0§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§7#L§.easeOut);
               iconTween2 = this.§,$;§.§5"0§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§7#L§.easeOut,0.5);
               pulsateTween = this.§,$;§.§[#h§(iconTween1,iconTween2);
               pulsateTween.§^"c§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§&m§.length - i));
            delay = 0;
            if(i > this.§&m§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§,$;§.§5"0§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§7#L§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§^"w§.visible = true;
         var leagueOpeningTween:§^#[§ = this.§,$;§.§]"i§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §7P§(§>#p§,300);
         };
      }
      
      private function §,!7§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§^#[§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§!!a§.length)
         {
            roundMc = this.§!!a§[i];
            tween = this.§,$;§.§5"0§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§7#L§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§^#[§ = this.§,$;§.§[u§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§^#[§ = §,$;§.§5"0§(§9#h§,{"scaleX":§-d§},{"scaleX":§9#h§.scaleX},0.5,§%!h§.easeIn);
            var slideTween:§^#[§ = §,$;§.§5"0§(§5#;§,{"x":§^"w§.x - (§5#;§.width >> 1) - 20},{"x":§5#;§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §<!<§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §<!<§.scaleY * 1.2;
            var playerAvatartween:§^#[§ = §,$;§.§5"0§(§<!<§,{
               "x":-(§<!<§.width + (playerAvatarFinalScaleX - §<!<§.scaleX) * §<!<§.width >> 1),
               "y":§<!<§.y - (playerAvatarFinalScaleY - §<!<§.scaleY) * §<!<§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§<!<§.x,
               "y":§<!<§.y,
               "scaleX":§<!<§.scaleX,
               "scaleY":§<!<§.scaleY
            },0.6,§%!h§.easeIn);
            var friendsSet1Tween:§^#[§ = §,$;§.§5"0§(mFriendAvatarsGrp1MC,{"x":-(§5#;§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§%!h§.easeIn);
            var friendsSet2Tween:§^#[§ = §,$;§.§5"0§(mFriendAvatarsGrp2MC,{"x":(§5#;§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§%!h§.easeIn);
            var weeklyTournamentTween:§^#[§ = §,$;§.§[$2§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §#$+§.playSound("Bird_Green_Special1");
            var endSound:Function = function():void
            {
               §#$+§.playSound("NextToBeat_Sound",§#$+§.§'!o§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §7P§(§7"h§);
            };
         };
      }
      
      private function §7P§(param1:uint, param2:int = 0) : void
      {
         this.§="U§ = param1;
         this.§5"7§ = param2;
         this.§8"a§ = 0;
      }
      
      private function §<!,§(param1:MouseEvent) : void
      {
         §#$+§.playSound("chest_open_special",§#$+§.§'!o§);
         §7!j§.mClip.removeEventListener(Event.ENTER_FRAME,this.§ #l§);
         §7!j§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§<!,§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§[W§.NORMAL,§<d§.DEFAULT));
      }
      
      private function §&!v§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§=C§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§6"g§.x;
         var _loc9_:Number = this.§6"g§.y;
         var _loc10_:Number = this.§<!<§.localToGlobal(new Point(§7!j§.mClip.x,§7!j§.mClip.y)).x;
         var _loc11_:Number = this.§<!<§.localToGlobal(new Point(§7!j§.mClip.x,§7!j§.mClip.y)).y;
         var _loc12_:Number = this.§6"g§.x + 30;
         var _loc13_:Number = this.§6"g§.y - 100;
         if(AngryBirdsBase.singleton.§5#N§())
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
            this.§=C§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§,Q§;
         }
         var _loc14_:int = this.§=C§.length - 1;
         var _loc15_:int = this.§=C§.length - 2;
         this.§<J§ = Math.atan2(this.§=C§[_loc14_].y - this.§=C§[_loc15_].y,this.§=C§[_loc14_].x - this.§=C§[_loc15_].x);
      }
      
      private function §## §() : void
      {
         var _loc1_:§!#Q§ = AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
         var _loc2_:§3I§ = new §3I§(_loc1_.userID,"",false,§+!f§.NORMAL,"",true);
         var _loc3_:§3I§ = new §3I§(_loc1_.userID,"",false,§+!f§.NORMAL,"",true);
         this.§6"g§.addChild(_loc2_);
         this.§<!<§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §<"O§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!t§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§3I§ = null;
         if(§^!5§ != null)
         {
            _loc1_ = Math.min(§!"5§,§^!5§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §^!5§[_loc4_];
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
               _loc8_ = new §3I§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
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
