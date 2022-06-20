package §6#Y§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § null§.§0!N§;
   import § null§.§5"<§;
   import §-"S§.§>#G§;
   import §0r§.§3#G§;
   import §0r§.§7$-§;
   import §0r§.§`#?§;
   import §3#t§.§51§;
   import §4#$§.§5"L§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §9x§.§ m§;
   import §9x§.§7",§;
   import §>#Y§.§#!&§;
   import §[#A§.§&n§;
   import com.rovio.assets.§=@§;
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
      
      private static const §1$ §:uint = 0;
      
      private static const § !-§:uint = 1;
      
      private static const §=!F§:uint = 2;
      
      private static const §[F§:uint = 3;
      
      private static const §@!b§:uint = 4;
      
      private static const §]#r§:uint = 5;
      
      private static const §"&§:uint = 6;
      
      private static const §1"G§:uint = 7;
      
      private static const §[$<§:uint = 8;
      
      private static const §##e§:uint = 9;
      
      private static const §<#J§:uint = 10;
      
      private static const §'"p§:uint = 7;
      
      private static const §"# §:uint = 3;
      
      private static const §9&§:int = 2;
      
      private static var §<!6§:Array;
      
      private static const §6"E§:uint = 6;
      
      private static var §"!w§:Boolean = false;
      
      private static var §@"+§:Boolean = false;
      
      private static var §!N§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §>!]§:Boolean = false;
       
      
      private var §`#J§:DisplayObject;
      
      private var §+#T§:int;
      
      private var §"#M§:DisplayObjectContainer;
      
      private var §3"+§:Sprite;
      
      private var §@#2§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §[!e§:Number;
      
      private var §8#P§:Number;
      
      private var §`$7§:int;
      
      private var §&"f§:int;
      
      private var §5!7§:int;
      
      private var §0u§:uint = 0;
      
      private var §2$ §:uint = 0;
      
      private var §7"!§:Array;
      
      private var §+"g§:Number;
      
      private var §!#J§:Number;
      
      private var §-!8§:DisplayObject;
      
      private var §^#`§:DisplayObject;
      
      private var §?'§:Number;
      
      private var §;#7§:Number;
      
      private var §%"9§:Array;
      
      private var §5">§:DisplayObject;
      
      private var § #Q§:DisplayObjectContainer;
      
      private var §4"m§:Boolean = false;
      
      private var §]U§:Array;
      
      private var §]#k§:int = 30;
      
      private var §7"a§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §%$"§:DisplayObjectContainer;
      
      private var §[7§:§5"<§;
      
      private var §"!#§:int;
      
      private var §<"w§:Boolean;
      
      private var §]!o§:Boolean;
      
      private var §?!^§:int;
      
      private var §-T§:Boolean;
      
      private var §'!6§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§7"!§ = [];
         this.§%"9§ = [];
         this.§]U§ = [];
         super(param1,param2,§&n§.§7a§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §1""§(param1:Array) : void
      {
         var _loc2_:§>#G§ = null;
         var _loc3_:§#!&§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§#!&§ = null;
         if(!§"!w§)
         {
            §<!6§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§=4§ != "QUALIFIER")
               {
                  §<!6§.push(_loc3_);
               }
            }
            _loc4_ = §6"E§ - §<!6§.length;
            _loc5_ = 0;
            while(_loc5_ < §51§.§%[§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §51§.§%[§[_loc5_];
               if(§51§.§8!a§.indexOf(_loc6_.userId) == -1 && _loc6_.§=4§ != "QUALIFIER")
               {
                  §<!6§.push(§51§.§%[§[_loc5_]);
               }
               _loc5_++;
            }
            §"!w§ = true;
         }
      }
      
      override protected function init() : void
      {
         §>!]§ = true;
         super.init();
         §4$4§.§<!A§("leagues_channel",10,1);
         this.§[7§ = §5"<§.§3"1§;
         this.§+#T§ = §5"L§.§3"1§.§5!F§;
         var _loc1_:MovieClip = §'o§.mClip;
         this.§`#J§ = _loc1_.yellowBar;
         this.§"#M§ = _loc1_.weeklyTournamentMC;
         this.§@#2§ = _loc1_.leaguesMC;
         this.§-!8§ = _loc1_.rewardChest;
         this.§^#`§ = _loc1_.btnClaim;
         this.§5">§ = _loc1_.rankUpMC;
         this.§ #Q§ = _loc1_.PlayerAvatar;
         this.§%!2§();
         var _loc2_:int = 1;
         while(_loc2_ <= §'"p§)
         {
            this.§%"9§.push(this.§@#2§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"# §)
         {
            this.§@#2§.getChildByName("QualifierStar" + (_loc3_ + 1)).visible = false;
            _loc3_++;
         }
         this.§?'§ = this.§`#J§.x - (this.§`#J§.width >> 1);
         this.§;#7§ = this.§`#J§.y - (this.§`#J§.height >> 1);
         this.§[!e§ = this.§`#J§.scaleX;
         this.§8#P§ = this.§`#J§.scaleY;
         this.§"#M§.visible = false;
         this.§@#2§.visible = false;
         this.§-!8§.visible = false;
         this.§^#`§.visible = false;
         this.§5">§.visible = false;
         this.§%$"§.visible = false;
         this.§ #Q§.visible = false;
         this.§^#`§.addEventListener(MouseEvent.CLICK,this.§,!_§);
         this.§!#j§(_loc1_);
         this.§`N§();
      }
      
      private function §%!2§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§"#M§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§"#M§.getChildByName("FriendAvatarsGroup2"));
         this.§%$"§ = DisplayObjectContainer(this.§"#M§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §6"E§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§8#C§();
         this.§2"J§();
      }
      
      private function §!#j§(param1:MovieClip) : void
      {
         switch(this.§+#T§)
         {
            case 1:
               this.§`#J§.scaleX = 0.8;
               break;
            case 2:
               this.§`#J§.scaleX = 1.1;
               break;
            case 3:
               this.§`#J§.scaleX = 1;
               break;
            case 4:
               this.§`#J§.scaleX = 1.1;
         }
         this.§'!7§();
         var _loc2_:MovieClip = this.§7"!§[this.§+#T§ - 1];
         if(this.§+#T§ < 5)
         {
            this.§"#M§.x = _loc2_.x + _loc2_.mc.width + (this.§"#M§.width >> 1) + 60;
         }
         this.§ #Q§.x = _loc2_.x + (_loc2_.mc.width * §9&§ - this.§ #Q§.width >> 1);
         this.§ #Q§.y = _loc2_.y - (_loc2_.mc.height * §9&§ >> 1) - this.§ #Q§.height;
      }
      
      private function §'!7§() : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §'o§.mClip;
         var _loc2_:Number = this.§`#J§.x - (this.§`#J§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§+#T§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§+#T§)
         {
            (_loc6_ = new §=@§.§9!x§(_loc3_)()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§`#J§.y - (this.§`#J§.height >> 1) + (this.§`#J§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§7"!§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`$7§ = getTimer();
         §'o§.mClip.addEventListener(Event.ENTER_FRAME,this.§[#B§);
         if(this.§+#T§ > 1)
         {
            this.§%!?§(§ !-§);
         }
         else
         {
            this.§%!?§(§=!F§);
         }
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
            this.§&"f§ += param1;
            if(this.§&"f§ >= this.§5!7§)
            {
               this.§?!i§();
            }
         }
         this.updateState(param1);
         if(!§@"+§)
         {
            if(§"!w§)
            {
               this.§2"J§();
               §@"+§ = true;
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
         switch(this.§2$ §)
         {
            case §]#r§:
               if(this.§4"m§)
               {
                  if(this.index < this.§]U§.length - 1)
                  {
                     this.§ #Q§.x = this.§]U§[this.index].x;
                     this.§ #Q§.y = this.§]U§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§4"m§ = false;
                     this.§ #Q§.visible = false;
                     this.§%$"§.visible = true;
                     this.§%!?§(§"&§,1000);
                  }
               }
               break;
            case § !-§:
               if(!this.§<"w§)
               {
                  roundMc = this.§7"!§[this.§"!#§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§"!#§ > 2 ? uint(3) : uint(this.§"!#§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §4$4§.playSound(soundStr,§4$4§.§1#l§);
                     fn = function():void
                     {
                        §4$4§.playSound("Checkmark",§4$4§.§1#l§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§"!#§ < this.§+#T§ - 2)
                     {
                        ++this.§"!#§;
                     }
                     else
                     {
                        this.§<"w§ = true;
                     }
                  }
               }
               break;
            case §[$<§:
               if(!this.§]!o§)
               {
                  if(this.§?!^§ > §"# § - 1)
                  {
                     this.§]!o§ = true;
                  }
                  else
                  {
                     starMC = this.§@#2§.getChildByName("QualifierStar" + (this.§?!^§ + 1));
                     if(starMC && starMC.scaleX >= 0.5)
                     {
                        §4$4§.playSound("league_promotion_star",§4$4§.§1#l§);
                        ++this.§?!^§;
                     }
                  }
               }
               break;
            case §1"G§:
               if(!this.§-T§)
               {
                  if(this.§'!6§ > §'"p§ - 1)
                  {
                     this.§-T§ = true;
                  }
                  else
                  {
                     leagueMC = this.§%"9§[this.§'!6§];
                     if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                     {
                        soundName = §!N§[this.§'!6§];
                        §4$4§.playSound(soundName,"leagues_channel");
                        ++this.§'!6§;
                     }
                  }
               }
         }
      }
      
      private function §?!i§() : void
      {
         this.§2$ § = this.§0u§;
         this.§0u§ = §1$ §;
         switch(this.§2$ §)
         {
            case § !-§:
               this.§;!4§();
               break;
            case §=!F§:
               this.§"#$§();
               break;
            case §[F§:
               this.§^"L§();
               break;
            case §@!b§:
               this.§4Z§();
               break;
            case §]#r§:
               this.§7!g§();
               break;
            case §"&§:
               this.§1"$§();
               break;
            case §1"G§:
               this.§,"a§();
               break;
            case §[$<§:
               this.§##l§();
               break;
            case §<#J§:
               this.§6"+§();
               break;
            case §##e§:
               this.§%B§();
         }
      }
      
      private function §%B§() : void
      {
         var rankUpTween:§0!N§ = this.§[7§.§3#§(this.§5">§,{
            "scaleX":this.§5">§.scaleX,
            "scaleY":this.§5">§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§3#G§.easeIn);
         this.§5">§.visible = true;
         this.§5">§.scaleY = 0;
         this.§5">§.scaleX = 0;
         rankUpTween.play();
         §4$4§.playSound("Congratulations_text_appear",§4$4§.§1#l§);
         rankUpTween.onComplete = function fn():void
         {
            §%!?§(§<#J§,300);
         };
      }
      
      private function §##l§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§]!o§ = false;
         this.§?!^§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §"# §)
         {
            starMC = this.§@#2§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§[7§.§3#§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§`#?§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§0!N§ = this.§[7§.§3"m§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §%!?§(§##e§);
         };
      }
      
      private function §6"+§() : void
      {
         var _loc1_:§0!N§ = this.§[7§.§3#§(this.§^#`§,{
            "scaleX":this.§^#`§.scaleX,
            "scaleY":this.§^#`§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§`#?§.easeOut);
         _loc1_.play();
         this.§^#`§.visible = true;
         this.§^#`§.scaleY = 0;
         this.§^#`§.scaleX = 0;
         §4$4§.playSound("button_appear");
      }
      
      private function §;!4§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§0!N§ = null;
         this.§"!#§ = 0;
         this.§<"w§ = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§7"!§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§7"!§.length - 1 - i));
            roundMc = this.§7"!§[i];
            tween = this.§[7§.§3#§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§3#G§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§0!N§ = this.§[7§.§3"m§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §%!?§(§=!F§,500);
         };
      }
      
      private function §7!g§() : void
      {
         var lastRoundMC:MovieClip = this.§7"!§[this.§+#T§ - 1];
         var lastRoundCompTween:§0!N§ = this.§[7§.§3#§(lastRoundMC,{
            "scaleX":this.§+"g§,
            "scaleY":this.§!#J§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§3#G§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §4"m§ = true;
            §4$4§.playSound("Congratulation_ambient");
         };
      }
      
      private function §4Z§() : void
      {
         var chestTween:§0!N§ = this.§[7§.§3#§(this.§-!8§,{
            "scaleX":this.§-!8§.scaleX,
            "scaleY":this.§-!8§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§`#?§.easeOut);
         this.§-!8§.visible = true;
         this.§-!8§.scaleY = 0;
         this.§-!8§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §%!?§(§]#r§,500);
         };
         chestTween.play();
      }
      
      private function §"#$§() : void
      {
         var lRoundMC:MovieClip = this.§7"!§[this.§+#T§ - 1];
         this.§+"g§ = lRoundMC.scaleX;
         this.§!#J§ = lRoundMC.scaleY;
         var tween1:§0!N§ = this.§[7§.§3#§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §9&§,
            "scaleY":lRoundMC.scaleY * §9&§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§3#G§.easeIn);
         var tween2:§0!N§ = this.§[7§.§3#§(this.§ #Q§,{"alpha":this.§ #Q§.alpha},{"alpha":0},0.3,§3#G§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§0!N§ = this.§[7§.§3#§(shineMC,{"rotation":0},{"rotation":-360},5,§5"<§.§5!p§);
         shineTween.§]!3§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§ #Q§.alpha = 0;
         this.§ #Q§.visible = true;
         var tween:§0!N§ = this.§[7§.§!"[§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §4$4§.§'"j§("element_appear_3",§4$4§.§1#l§);
            §4$4§.playSound("Checkmark",§4$4§.§1#l§);
            §%!?§(§[F§,500);
         };
         tween.play();
      }
      
      private function §^"L§() : void
      {
         this.§"#M§.visible = true;
         var tween2:§0!N§ = this.§[7§.§3#§(this.§"#M§,{
            "scaleX":this.§"#M§.scaleX,
            "scaleY":this.§"#M§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§3#G§.easeIn);
         this.§"#M§.scaleY = 0;
         this.§"#M§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §4$4§.playSound("Weekly_tournament_element",§4$4§.§1#l§);
            §%!?§(§@!b§,1000);
         };
         tween2.play();
      }
      
      private function §,"a§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§0!N§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§0!N§ = null;
         var iconTween2:§0!N§ = null;
         var pulsateTween:§0!N§ = null;
         this.§-T§ = false;
         this.§'!6§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§%"9§.length)
         {
            leagueMC = this.§%"9§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§[7§.§3#§(shineMC,{"rotation":0},{"rotation":-360},5,§5"<§.§5!p§);
               shineTween.§]!3§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§[7§.§3#§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§3#G§.easeOut);
               iconTween2 = this.§[7§.§3#§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§3#G§.easeOut,0.5);
               pulsateTween = this.§[7§.§]#6§(iconTween1,iconTween2);
               pulsateTween.§]!3§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§%"9§.length - i));
            delay = 0;
            if(i > this.§%"9§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§[7§.§3#§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§3#G§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§@#2§.visible = true;
         var leagueOpeningTween:§0!N§ = this.§[7§.§3"m§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §%!?§(§[$<§,300);
         };
      }
      
      private function §1"$§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§0!N§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§7"!§.length)
         {
            roundMc = this.§7"!§[i];
            tween = this.§[7§.§3#§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§3#G§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§0!N§ = this.§[7§.§0!!§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§0!N§ = §[7§.§3#§(§`#J§,{"scaleX":§[!e§},{"scaleX":§`#J§.scaleX},0.5,§7$-§.easeIn);
            var slideTween:§0!N§ = §[7§.§3#§(§"#M§,{"x":§@#2§.x - (§"#M§.width >> 1) - 20},{"x":§"#M§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §%$"§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §%$"§.scaleY * 1.2;
            var playerAvatartween:§0!N§ = §[7§.§3#§(§%$"§,{
               "x":-(§%$"§.width + (playerAvatarFinalScaleX - §%$"§.scaleX) * §%$"§.width >> 1),
               "y":§%$"§.y - (playerAvatarFinalScaleY - §%$"§.scaleY) * §%$"§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§%$"§.x,
               "y":§%$"§.y,
               "scaleX":§%$"§.scaleX,
               "scaleY":§%$"§.scaleY
            },0.6,§7$-§.easeIn);
            var friendsSet1Tween:§0!N§ = §[7§.§3#§(mFriendAvatarsGrp1MC,{"x":-(§"#M§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§7$-§.easeIn);
            var friendsSet2Tween:§0!N§ = §[7§.§3#§(mFriendAvatarsGrp2MC,{"x":(§"#M§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§7$-§.easeIn);
            var weeklyTournamentTween:§0!N§ = §[7§.§!"[§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §4$4§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               §4$4§.playSound("ui_ingame_scorebox_gain_position",§4$4§.§1#l§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §%!?§(§1"G§);
            };
         };
      }
      
      private function §%!?§(param1:uint, param2:int = 0) : void
      {
         this.§0u§ = param1;
         this.§5!7§ = param2;
         this.§&"f§ = 0;
      }
      
      private function §,!_§(param1:MouseEvent) : void
      {
         §4$4§.playSound("chest_open_special",§4$4§.§1#l§);
         §'o§.mClip.removeEventListener(Event.ENTER_FRAME,this.§[#B§);
         §'o§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§,!_§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§-!S§.NORMAL,§## §.DEFAULT));
      }
      
      private function §`N§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§]U§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§ #Q§.x;
         var _loc9_:Number = this.§ #Q§.y;
         var _loc10_:Number = this.§%$"§.localToGlobal(new Point(§'o§.mClip.x,§'o§.mClip.y)).x;
         var _loc11_:Number = this.§%$"§.localToGlobal(new Point(§'o§.mClip.x,§'o§.mClip.y)).y;
         var _loc12_:Number = this.§ #Q§.x + 30;
         var _loc13_:Number = this.§ #Q§.y - 100;
         if(AngryBirdsBase.singleton.§&m§())
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
            this.§]U§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§]#k§;
         }
         var _loc14_:int = this.§]U§.length - 1;
         var _loc15_:int = this.§]U§.length - 2;
         this.§7"a§ = Math.atan2(this.§]U§[_loc14_].y - this.§]U§[_loc15_].y,this.§]U§[_loc14_].x - this.§]U§[_loc15_].x);
      }
      
      private function §8#C§() : void
      {
         var _loc1_:§>#G§ = AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
         var _loc2_:§ m§ = new § m§(_loc1_.userID,"",true,§7",§.NORMAL,"",true);
         var _loc3_:§ m§ = new § m§(_loc1_.userID,"",true,§7",§.NORMAL,"",true);
         this.§ #Q§.addChild(_loc2_);
         this.§%$"§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §2"J§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§#!&§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§ m§ = null;
         if(§<!6§ != null)
         {
            _loc1_ = Math.min(§6"E§,§<!6§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §<!6§[_loc4_];
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
               _loc8_ = new § m§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
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
