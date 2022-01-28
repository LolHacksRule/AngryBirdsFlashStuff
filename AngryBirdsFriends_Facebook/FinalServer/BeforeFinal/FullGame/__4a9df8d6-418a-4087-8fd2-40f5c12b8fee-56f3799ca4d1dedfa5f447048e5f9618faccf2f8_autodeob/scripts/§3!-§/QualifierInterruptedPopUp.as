package §3!-§
{
   import §!#C§.§3" §;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import §-#o§.§ #w§;
   import §-#o§.§-!w§;
   import §-#o§.§9"E§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §0"B§.§##G§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>z§.§#"l§;
   import §?!a§.§-=§;
   import §?!a§.§6#b§;
   import com.rovio.assets.§6$A§;
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
      
      private static const §?#[§:uint = 0;
      
      private static const §6"§:uint = 1;
      
      private static const §?#S§:uint = 2;
      
      private static const §<w§:uint = 3;
      
      private static const §<"!§:uint = 4;
      
      private static const §`!E§:uint = 5;
      
      private static const §5$2§:uint = 6;
      
      private static const §7$5§:uint = 7;
      
      private static const §4Z§:uint = 8;
      
      private static const §1!<§:uint = 9;
      
      private static const § $§:uint = 10;
      
      private static const §1!R§:uint = 7;
      
      private static const §;y§:uint = 3;
      
      private static const §0$;§:int = 2;
      
      private static var §>!o§:Array;
      
      private static const §"$"§:uint = 6;
      
      private static var §-!X§:Boolean = false;
      
      private static var §%"!§:Boolean = false;
      
      private static var §'!m§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §+Z§:Boolean = false;
       
      
      private var §="G§:DisplayObject;
      
      private var §94§:int;
      
      private var §!"I§:DisplayObjectContainer;
      
      private var §?"r§:Sprite;
      
      private var §0H§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §+#h§:Number;
      
      private var §'P§:Number;
      
      private var §?7§:int;
      
      private var §'C§:int;
      
      private var §@";§:int;
      
      private var §`#g§:uint = 0;
      
      private var § !h§:uint = 0;
      
      private var §5""§:Array;
      
      private var §8#r§:Number;
      
      private var §&#M§:Number;
      
      private var §`]§:DisplayObject;
      
      private var §%t§:DisplayObject;
      
      private var §`" §:Number;
      
      private var §5y§:Number;
      
      private var §<"8§:Array;
      
      private var §@_§:DisplayObject;
      
      private var §9$&§:DisplayObjectContainer;
      
      private var §[!L§:Boolean = false;
      
      private var §7B§:Array;
      
      private var §4p§:int = 30;
      
      private var §"!S§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §8!,§:DisplayObjectContainer;
      
      private var §,D§:§"!&§;
      
      private var §7#[§:int;
      
      private var §?!W§:Boolean;
      
      private var §4#z§:Boolean;
      
      private var §'$9§:int;
      
      private var §!"G§:Boolean;
      
      private var §%">§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§5""§ = [];
         this.§<"8§ = [];
         this.§7B§ = [];
         super(param1,param2,§?l§.§3m§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §2"L§(param1:Array) : void
      {
         var _loc2_:§ #`§ = null;
         var _loc3_:§3" § = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§3" § = null;
         if(!§-!X§)
         {
            §>!o§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§]"t§ != "QUALIFIER")
               {
                  §>!o§.push(_loc3_);
               }
            }
            _loc4_ = §"$"§ - §>!o§.length;
            _loc5_ = 0;
            while(_loc5_ < §##G§.§@!-§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §##G§.§@!-§[_loc5_];
               if(§##G§.§##F§.indexOf(_loc6_.userId) == -1 && _loc6_.§]"t§ != "QUALIFIER")
               {
                  §>!o§.push(§##G§.§@!-§[_loc5_]);
               }
               _loc5_++;
            }
            §-!X§ = true;
         }
      }
      
      override protected function init() : void
      {
         var _loc4_:DisplayObject = null;
         §+Z§ = true;
         super.init();
         §3Z§.§'#E§("leagues_channel",10,1);
         this.§,D§ = §"!&§.§`"H§;
         this.§94§ = §'##§.§`"H§.§`d§;
         var _loc1_:MovieClip = §&!M§.mClip;
         this.§="G§ = _loc1_.yellowBar;
         this.§!"I§ = _loc1_.weeklyTournamentMC;
         this.§0H§ = _loc1_.leaguesMC;
         this.§`]§ = _loc1_.rewardChest;
         this.§%t§ = _loc1_.btnClaim;
         this.§@_§ = _loc1_.rankUpMC;
         this.§9$&§ = _loc1_.PlayerAvatar;
         this.§,#R§();
         var _loc2_:int = 1;
         while(_loc2_ <= §1!R§)
         {
            this.§<"8§.push(this.§0H§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §;y§)
         {
            (_loc4_ = this.§0H§.getChildByName("QualifierStar" + (_loc3_ + 1))).visible = false;
            _loc3_++;
         }
         this.§`" § = this.§="G§.x - (this.§="G§.width >> 1);
         this.§5y§ = this.§="G§.y - (this.§="G§.height >> 1);
         this.§+#h§ = this.§="G§.scaleX;
         this.§'P§ = this.§="G§.scaleY;
         this.§!"I§.visible = false;
         this.§0H§.visible = false;
         this.§`]§.visible = false;
         this.§%t§.visible = false;
         this.§@_§.visible = false;
         this.§8!,§.visible = false;
         this.§9$&§.visible = false;
         this.§%t§.addEventListener(MouseEvent.CLICK,this.§@"!§);
         this.§'!U§(_loc1_);
         this.§-"a§();
      }
      
      private function §,#R§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§!"I§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§!"I§.getChildByName("FriendAvatarsGroup2"));
         this.§8!,§ = DisplayObjectContainer(this.§!"I§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §"$"§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§0r§();
         this.§@"F§();
      }
      
      private function §'!U§(param1:MovieClip) : void
      {
         switch(this.§94§)
         {
            case 1:
               this.§="G§.scaleX = 0.8;
               break;
            case 2:
               this.§="G§.scaleX = 1.1;
               break;
            case 3:
               this.§="G§.scaleX = 1;
               break;
            case 4:
               this.§="G§.scaleX = 1.1;
         }
         this.§0"6§();
         var _loc2_:MovieClip = this.§5""§[this.§94§ - 1];
         if(this.§94§ < 5)
         {
            this.§!"I§.x = _loc2_.x + _loc2_.mc.width + (this.§!"I§.width >> 1) + 60;
         }
         this.§9$&§.x = _loc2_.x + (_loc2_.mc.width * §0$;§ - this.§9$&§.width >> 1);
         this.§9$&§.y = _loc2_.y - (_loc2_.mc.height * §0$;§ >> 1) - this.§9$&§.height;
      }
      
      private function §0"6§() : void
      {
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §&!M§.mClip;
         var _loc2_:Number = this.§="G§.x - (this.§="G§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§94§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§94§)
         {
            (_loc6_ = new (_loc5_ = §6$A§.§1!m§(_loc3_))()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§="G§.y - (this.§="G§.height >> 1) + (this.§="G§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§5""§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§?7§ = getTimer();
         §&!M§.mClip.addEventListener(Event.ENTER_FRAME,this.§6"g§);
         if(this.§94§ > 1)
         {
            this.§1!L§(§6"§);
         }
         else
         {
            this.§1!L§(§?#S§);
         }
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
            this.§'C§ += param1;
            if(this.§'C§ >= this.§@";§)
            {
               this.§^"D§();
            }
         }
         this.updateState(param1);
         if(!§%"!§)
         {
            if(§-!X§)
            {
               this.§@"F§();
               §%"!§ = true;
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
         switch(this.§ !h§)
         {
            case §`!E§:
               if(this.§[!L§)
               {
                  if(this.index < this.§7B§.length - 1)
                  {
                     this.§9$&§.x = this.§7B§[this.index].x;
                     this.§9$&§.y = this.§7B§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§[!L§ = false;
                     this.§9$&§.visible = false;
                     this.§8!,§.visible = true;
                     this.§1!L§(§5$2§,1000);
                  }
                  break;
               }
               break;
            case §6"§:
               if(!this.§?!W§)
               {
                  roundMc = this.§5""§[this.§7#[§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§7#[§ > 2 ? uint(3) : uint(this.§7#[§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §3Z§.playSound(soundStr,§3Z§.§[!F§);
                     fn = function():void
                     {
                        §3Z§.playSound("Checkmark",§3Z§.§[!F§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§7#[§ < this.§94§ - 2)
                     {
                        ++this.§7#[§;
                     }
                     else
                     {
                        this.§?!W§ = true;
                     }
                     break;
                  }
                  break;
               }
               break;
            case §4Z§:
               if(!this.§4#z§)
               {
                  if(this.§'$9§ > §;y§ - 1)
                  {
                     this.§4#z§ = true;
                     break;
                  }
                  starMC = this.§0H§.getChildByName("QualifierStar" + (this.§'$9§ + 1));
                  if(starMC && starMC.scaleX >= 0.5)
                  {
                     §3Z§.playSound("league_promotion_star",§3Z§.§[!F§);
                     ++this.§'$9§;
                     break;
                  }
                  break;
               }
               break;
            case §7$5§:
               if(!this.§!"G§)
               {
                  if(this.§%">§ > §1!R§ - 1)
                  {
                     this.§!"G§ = true;
                     break;
                  }
                  leagueMC = this.§<"8§[this.§%">§];
                  if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                  {
                     soundName = §'!m§[this.§%">§];
                     §3Z§.playSound(soundName,"leagues_channel");
                     ++this.§%">§;
                     break;
                  }
                  break;
               }
         }
      }
      
      private function §^"D§() : void
      {
         this.§ !h§ = this.§`#g§;
         this.§`#g§ = §?#[§;
         switch(this.§ !h§)
         {
            case §6"§:
               this.§7"U§();
               break;
            case §?#S§:
               this.§9!]§();
               break;
            case §<w§:
               this.§5!+§();
               break;
            case §<"!§:
               this.§%!§();
               break;
            case §`!E§:
               this.§>"s§();
               break;
            case §5$2§:
               this.§?#f§();
               break;
            case §7$5§:
               this.§<"i§();
               break;
            case §4Z§:
               this.§ #b§();
               break;
            case § $§:
               this.§';§();
               break;
            case §1!<§:
               this.§["O§();
         }
      }
      
      private function §["O§() : void
      {
         var rankUpTween:§0#m§ = this.§,D§.§1"W§(this.§@_§,{
            "scaleX":this.§@_§.scaleX,
            "scaleY":this.§@_§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§-!w§.easeIn);
         this.§@_§.visible = true;
         this.§@_§.scaleY = 0;
         this.§@_§.scaleX = 0;
         rankUpTween.play();
         §3Z§.playSound("Congratulations_text_appear",§3Z§.§[!F§);
         rankUpTween.onComplete = function fn():void
         {
            §1!L§(§ $§,300);
         };
      }
      
      private function § #b§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§4#z§ = false;
         this.§'$9§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §;y§)
         {
            starMC = this.§0H§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§,D§.§1"W§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§9"E§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§0#m§ = this.§,D§.§4"C§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §1!L§(§1!<§);
         };
      }
      
      private function §';§() : void
      {
         var _loc1_:§0#m§ = this.§,D§.§1"W§(this.§%t§,{
            "scaleX":this.§%t§.scaleX,
            "scaleY":this.§%t§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§9"E§.easeOut);
         _loc1_.play();
         this.§%t§.visible = true;
         this.§%t§.scaleY = 0;
         this.§%t§.scaleX = 0;
         §3Z§.playSound("button_appear");
      }
      
      private function §7"U§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§0#m§ = null;
         this.§7#[§ = 0;
         this.§?!W§ = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§5""§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§5""§.length - 1 - i));
            roundMc = this.§5""§[i];
            tween = this.§,D§.§1"W§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§-!w§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§0#m§ = this.§,D§.§4"C§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §1!L§(§?#S§,500);
         };
      }
      
      private function §>"s§() : void
      {
         var lastRoundMC:MovieClip = this.§5""§[this.§94§ - 1];
         var lastRoundCompTween:§0#m§ = this.§,D§.§1"W§(lastRoundMC,{
            "scaleX":this.§8#r§,
            "scaleY":this.§&#M§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§-!w§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §[!L§ = true;
            §3Z§.playSound("Congratulation_ambient");
         };
      }
      
      private function §%!§() : void
      {
         var chestTween:§0#m§ = this.§,D§.§1"W§(this.§`]§,{
            "scaleX":this.§`]§.scaleX,
            "scaleY":this.§`]§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§9"E§.easeOut);
         this.§`]§.visible = true;
         this.§`]§.scaleY = 0;
         this.§`]§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §1!L§(§`!E§,500);
         };
         chestTween.play();
      }
      
      private function §9!]§() : void
      {
         var lRoundMC:MovieClip = this.§5""§[this.§94§ - 1];
         this.§8#r§ = lRoundMC.scaleX;
         this.§&#M§ = lRoundMC.scaleY;
         var tween1:§0#m§ = this.§,D§.§1"W§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §0$;§,
            "scaleY":lRoundMC.scaleY * §0$;§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§-!w§.easeIn);
         var tween2:§0#m§ = this.§,D§.§1"W§(this.§9$&§,{"alpha":this.§9$&§.alpha},{"alpha":0},0.3,§-!w§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§0#m§ = this.§,D§.§1"W§(shineMC,{"rotation":0},{"rotation":-360},5,§"!&§.§="L§);
         shineTween.§6!'§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§9$&§.alpha = 0;
         this.§9$&§.visible = true;
         var tween:§0#m§ = this.§,D§.§;#r§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §3Z§.§8!K§("element_appear_3",§3Z§.§[!F§);
            §3Z§.playSound("Checkmark",§3Z§.§[!F§);
            §1!L§(§<w§,500);
         };
         tween.play();
      }
      
      private function §5!+§() : void
      {
         this.§!"I§.visible = true;
         var tween2:§0#m§ = this.§,D§.§1"W§(this.§!"I§,{
            "scaleX":this.§!"I§.scaleX,
            "scaleY":this.§!"I§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§-!w§.easeIn);
         this.§!"I§.scaleY = 0;
         this.§!"I§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §3Z§.playSound("Weekly_tournament_element",§3Z§.§[!F§);
            §1!L§(§<"!§,1000);
         };
         tween2.play();
      }
      
      private function §<"i§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§0#m§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§0#m§ = null;
         var iconTween2:§0#m§ = null;
         var pulsateTween:§0#m§ = null;
         this.§!"G§ = false;
         this.§%">§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§<"8§.length)
         {
            leagueMC = this.§<"8§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§,D§.§1"W§(shineMC,{"rotation":0},{"rotation":-360},5,§"!&§.§="L§);
               shineTween.§6!'§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§,D§.§1"W§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§-!w§.easeOut);
               iconTween2 = this.§,D§.§1"W§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§-!w§.easeOut,0.5);
               pulsateTween = this.§,D§.§?"§(iconTween1,iconTween2);
               pulsateTween.§6!'§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§<"8§.length - i));
            delay = 0;
            if(i > this.§<"8§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§,D§.§1"W§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§-!w§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§0H§.visible = true;
         var leagueOpeningTween:§0#m§ = this.§,D§.§4"C§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §1!L§(§4Z§,300);
         };
      }
      
      private function §?#f§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§0#m§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§5""§.length)
         {
            roundMc = this.§5""§[i];
            tween = this.§,D§.§1"W§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§-!w§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§0#m§ = this.§,D§.§7#?§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§0#m§ = §,D§.§1"W§(§="G§,{"scaleX":§+#h§},{"scaleX":§="G§.scaleX},0.5,§ #w§.easeIn);
            var slideTween:§0#m§ = §,D§.§1"W§(§!"I§,{"x":§0H§.x - (§!"I§.width >> 1) - 20},{"x":§!"I§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §8!,§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §8!,§.scaleY * 1.2;
            var playerAvatartween:§0#m§ = §,D§.§1"W§(§8!,§,{
               "x":-(§8!,§.width + (playerAvatarFinalScaleX - §8!,§.scaleX) * §8!,§.width >> 1),
               "y":§8!,§.y - (playerAvatarFinalScaleY - §8!,§.scaleY) * §8!,§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§8!,§.x,
               "y":§8!,§.y,
               "scaleX":§8!,§.scaleX,
               "scaleY":§8!,§.scaleY
            },0.6,§ #w§.easeIn);
            var friendsSet1Tween:§0#m§ = §,D§.§1"W§(mFriendAvatarsGrp1MC,{"x":-(§!"I§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§ #w§.easeIn);
            var friendsSet2Tween:§0#m§ = §,D§.§1"W§(mFriendAvatarsGrp2MC,{"x":(§!"I§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§ #w§.easeIn);
            var weeklyTournamentTween:§0#m§ = §,D§.§;#r§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §3Z§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               §3Z§.playSound("ui_ingame_scorebox_gain_position",§3Z§.§[!F§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §1!L§(§7$5§);
            };
         };
      }
      
      private function §1!L§(param1:uint, param2:int = 0) : void
      {
         this.§`#g§ = param1;
         this.§@";§ = param2;
         this.§'C§ = 0;
      }
      
      private function §@"!§(param1:MouseEvent) : void
      {
         §3Z§.playSound("chest_open_special",§3Z§.§[!F§);
         §&!M§.mClip.removeEventListener(Event.ENTER_FRAME,this.§6"g§);
         §&!M§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§@"!§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§#"l§.NORMAL,§]"Y§.DEFAULT));
      }
      
      private function §-"a§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§7B§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§9$&§.x;
         var _loc9_:Number = this.§9$&§.y;
         var _loc10_:Number = this.§8!,§.localToGlobal(new Point(§&!M§.mClip.x,§&!M§.mClip.y)).x;
         var _loc11_:Number = this.§8!,§.localToGlobal(new Point(§&!M§.mClip.x,§&!M§.mClip.y)).y;
         var _loc12_:Number = this.§9$&§.x + 30;
         var _loc13_:Number = this.§9$&§.y - 100;
         if(AngryBirdsBase.singleton.§]#p§())
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
            this.§7B§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§4p§;
         }
         var _loc14_:int = this.§7B§.length - 1;
         var _loc15_:int = this.§7B§.length - 2;
         this.§"!S§ = Math.atan2(this.§7B§[_loc14_].y - this.§7B§[_loc15_].y,this.§7B§[_loc14_].x - this.§7B§[_loc15_].x);
      }
      
      private function §0r§() : void
      {
         var _loc1_:§ #`§ = AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
         var _loc2_:§-=§ = new §-=§(_loc1_.userID,"",true,§6#b§.NORMAL,"",true);
         var _loc3_:§-=§ = new §-=§(_loc1_.userID,"",true,§6#b§.NORMAL,"",true);
         this.§9$&§.addChild(_loc2_);
         this.§8!,§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §@"F§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§3" § = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§-=§ = null;
         if(§>!o§ != null)
         {
            _loc1_ = Math.min(§"$"§,§>!o§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §>!o§[_loc4_];
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
               _loc8_ = new §-=§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
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
