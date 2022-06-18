package §]!W§
{
   import § o§.§%"!§;
   import §&"J§.§%"E§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §1#W§.§!#&§;
   import §2`§.§3@§;
   import §2`§.§<"I§;
   import §2`§.§^!;§;
   import §5"?§.§4"-§;
   import §8#D§.§=>§;
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[G§.§4!0§;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
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
      
      private static const §-"A§:uint = 0;
      
      private static const §1"L§:uint = 1;
      
      private static const §[!S§:uint = 2;
      
      private static const §8"Z§:uint = 3;
      
      private static const §[!j§:uint = 4;
      
      private static const §,"^§:uint = 5;
      
      private static const §&!U§:uint = 6;
      
      private static const §^#w§:uint = 7;
      
      private static const §-"j§:uint = 8;
      
      private static const §6#D§:uint = 9;
      
      private static const §>"d§:uint = 10;
      
      private static const §]#r§:uint = 7;
      
      private static const §5!D§:uint = 3;
      
      private static const §<!f§:int = 2;
      
      private static var §"O§:Array;
      
      private static const §!#?§:uint = 6;
      
      private static var §#A§:Boolean = false;
      
      private static var §'!Q§:Boolean = false;
      
      private static var §3$>§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §1"o§:Boolean = false;
       
      
      private var §2#b§:DisplayObject;
      
      private var §]"0§:int;
      
      private var §4![§:DisplayObjectContainer;
      
      private var §4"p§:Sprite;
      
      private var §2!I§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §4"j§:Number;
      
      private var § #!§:Number;
      
      private var §!"Z§:int;
      
      private var §1$,§:int;
      
      private var §15§:int;
      
      private var § #H§:uint = 0;
      
      private var §1#§:uint = 0;
      
      private var §]#E§:Array;
      
      private var §7#X§:Number;
      
      private var §4§:Number;
      
      private var §;`§:DisplayObject;
      
      private var §"L§:DisplayObject;
      
      private var §]!U§:Number;
      
      private var §>!S§:Number;
      
      private var §-#&§:Array;
      
      private var §]#H§:DisplayObject;
      
      private var §38§:DisplayObjectContainer;
      
      private var §7#?§:Boolean = false;
      
      private var §6"V§:Array;
      
      private var §-$,§:int = 30;
      
      private var § "<§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §`R§:DisplayObjectContainer;
      
      private var §-@§:§6"w§;
      
      private var §2#=§:int;
      
      private var §'$$§:Boolean;
      
      private var §^!3§:Boolean;
      
      private var §-"n§:int;
      
      private var §5_§:Boolean;
      
      private var §@"+§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§]#E§ = [];
         this.§-#&§ = [];
         this.§6"V§ = [];
         super(param1,param2,§=>§.§%" §.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §'$7§(param1:Array) : void
      {
         var _loc2_:§4"-§ = null;
         var _loc3_:§%"E§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§%"E§ = null;
         if(!§#A§)
         {
            §"O§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§5L§ != "QUALIFIER")
               {
                  §"O§.push(_loc3_);
               }
            }
            _loc4_ = §!#?§ - §"O§.length;
            _loc5_ = 0;
            while(_loc5_ < §4!0§.§7!s§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §4!0§.§7!s§[_loc5_];
               if(§4!0§.§9! §.indexOf(_loc6_.userId) == -1 && _loc6_.§5L§ != "QUALIFIER")
               {
                  §"O§.push(§4!0§.§7!s§[_loc5_]);
               }
               _loc5_++;
            }
            §#A§ = true;
         }
      }
      
      override protected function init() : void
      {
         var _loc4_:DisplayObject = null;
         §1"o§ = true;
         super.init();
         §!#&§.§!"k§("leagues_channel",10,1);
         this.§-@§ = §6"w§.§ "D§;
         this.§]"0§ = §-!t§.§ "D§.§1c§;
         var _loc1_:MovieClip = §1"6§.mClip;
         this.§2#b§ = _loc1_.yellowBar;
         this.§4![§ = _loc1_.weeklyTournamentMC;
         this.§2!I§ = _loc1_.leaguesMC;
         this.§;`§ = _loc1_.rewardChest;
         this.§"L§ = _loc1_.btnClaim;
         this.§]#H§ = _loc1_.rankUpMC;
         this.§38§ = _loc1_.PlayerAvatar;
         this.§&#H§();
         var _loc2_:int = 1;
         while(_loc2_ <= §]#r§)
         {
            this.§-#&§.push(this.§2!I§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §5!D§)
         {
            (_loc4_ = this.§2!I§.getChildByName("QualifierStar" + (_loc3_ + 1))).visible = false;
            _loc3_++;
         }
         this.§]!U§ = this.§2#b§.x - (this.§2#b§.width >> 1);
         this.§>!S§ = this.§2#b§.y - (this.§2#b§.height >> 1);
         this.§4"j§ = this.§2#b§.scaleX;
         this.§ #!§ = this.§2#b§.scaleY;
         this.§4![§.visible = false;
         this.§2!I§.visible = false;
         this.§;`§.visible = false;
         this.§"L§.visible = false;
         this.§]#H§.visible = false;
         this.§`R§.visible = false;
         this.§38§.visible = false;
         this.§"L§.addEventListener(MouseEvent.CLICK,this.§;",§);
         this.§>h§(_loc1_);
         this.§&!Y§();
      }
      
      private function §&#H§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§4![§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§4![§.getChildByName("FriendAvatarsGroup2"));
         this.§`R§ = DisplayObjectContainer(this.§4![§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §!#?§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§82§();
         this.§&2§();
      }
      
      private function §>h§(param1:MovieClip) : void
      {
         switch(this.§]"0§)
         {
            case 1:
               this.§2#b§.scaleX = 0.8;
               break;
            case 2:
               this.§2#b§.scaleX = 1.1;
               break;
            case 3:
               this.§2#b§.scaleX = 1;
               break;
            case 4:
               this.§2#b§.scaleX = 1.1;
         }
         this.§0$5§();
         var _loc2_:MovieClip = this.§]#E§[this.§]"0§ - 1];
         if(this.§]"0§ < 5)
         {
            this.§4![§.x = _loc2_.x + _loc2_.mc.width + (this.§4![§.width >> 1) + 60;
         }
         this.§38§.x = _loc2_.x + (_loc2_.mc.width * §<!f§ - this.§38§.width >> 1);
         this.§38§.y = _loc2_.y - (_loc2_.mc.height * §<!f§ >> 1) - this.§38§.height;
      }
      
      private function §0$5§() : void
      {
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §1"6§.mClip;
         var _loc2_:Number = this.§2#b§.x - (this.§2#b§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§]"0§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"0§)
         {
            (_loc6_ = new (_loc5_ = §+$#§.§["`§(_loc3_))()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§2#b§.y - (this.§2#b§.height >> 1) + (this.§2#b§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§]#E§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§!"Z§ = getTimer();
         §1"6§.mClip.addEventListener(Event.ENTER_FRAME,this.§#!Q§);
         if(this.§]"0§ > 1)
         {
            this.§5"p§(§1"L§);
         }
         else
         {
            this.§5"p§(§[!S§);
         }
      }
      
      private function §#!Q§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§!"Z§;
         this.§!"Z§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§ #H§ != §-"A§ && this.§ #H§ != this.§1#§)
         {
            this.§1$,§ += param1;
            if(this.§1$,§ >= this.§15§)
            {
               this.§9!5§();
            }
         }
         this.updateState(param1);
         if(!§'!Q§)
         {
            if(§#A§)
            {
               this.§&2§();
               §'!Q§ = true;
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
         switch(this.§1#§)
         {
            case §,"^§:
               if(this.§7#?§)
               {
                  if(this.index < this.§6"V§.length - 1)
                  {
                     this.§38§.x = this.§6"V§[this.index].x;
                     this.§38§.y = this.§6"V§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§7#?§ = false;
                     this.§38§.visible = false;
                     this.§`R§.visible = true;
                     this.§5"p§(§&!U§,1000);
                  }
                  break;
               }
               break;
            case §1"L§:
               if(!this.§'$$§)
               {
                  roundMc = this.§]#E§[this.§2#=§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§2#=§ > 2 ? uint(3) : uint(this.§2#=§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §!#&§.playSound(soundStr,§!#&§.§6#h§);
                     fn = function():void
                     {
                        §!#&§.playSound("Checkmark",§!#&§.§6#h§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§2#=§ < this.§]"0§ - 2)
                     {
                        ++this.§2#=§;
                     }
                     else
                     {
                        this.§'$$§ = true;
                     }
                     break;
                  }
                  break;
               }
               break;
            case §-"j§:
               if(!this.§^!3§)
               {
                  if(this.§-"n§ > §5!D§ - 1)
                  {
                     this.§^!3§ = true;
                     break;
                  }
                  starMC = this.§2!I§.getChildByName("QualifierStar" + (this.§-"n§ + 1));
                  if(starMC && starMC.scaleX >= 0.5)
                  {
                     §!#&§.playSound("league_promotion_star",§!#&§.§6#h§);
                     ++this.§-"n§;
                     break;
                  }
                  break;
               }
               break;
            case §^#w§:
               if(!this.§5_§)
               {
                  if(this.§@"+§ > §]#r§ - 1)
                  {
                     this.§5_§ = true;
                     break;
                  }
                  leagueMC = this.§-#&§[this.§@"+§];
                  if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                  {
                     soundName = §3$>§[this.§@"+§];
                     §!#&§.playSound(soundName,"leagues_channel");
                     ++this.§@"+§;
                     break;
                  }
                  break;
               }
         }
      }
      
      private function §9!5§() : void
      {
         this.§1#§ = this.§ #H§;
         this.§ #H§ = §-"A§;
         switch(this.§1#§)
         {
            case §1"L§:
               this.§`^§();
               break;
            case §[!S§:
               this.§"#v§();
               break;
            case §8"Z§:
               this.§5$2§();
               break;
            case §[!j§:
               this.§8"f§();
               break;
            case §,"^§:
               this.§8"U§();
               break;
            case §&!U§:
               this.§?H§();
               break;
            case §^#w§:
               this.§!"§();
               break;
            case §-"j§:
               this.§"d§();
               break;
            case §>"d§:
               this.§]#Q§();
               break;
            case §6#D§:
               this.§9r§();
         }
      }
      
      private function §9r§() : void
      {
         var rankUpTween:§`!s§ = this.§-@§.§""3§(this.§]#H§,{
            "scaleX":this.§]#H§.scaleX,
            "scaleY":this.§]#H§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§<"I§.easeIn);
         this.§]#H§.visible = true;
         this.§]#H§.scaleY = 0;
         this.§]#H§.scaleX = 0;
         rankUpTween.play();
         §!#&§.playSound("Congratulations_text_appear",§!#&§.§6#h§);
         rankUpTween.onComplete = function fn():void
         {
            §5"p§(§>"d§,300);
         };
      }
      
      private function §"d§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§^!3§ = false;
         this.§-"n§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §5!D§)
         {
            starMC = this.§2!I§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§-@§.§""3§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§3@§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§`!s§ = this.§-@§.§;"s§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §5"p§(§6#D§);
         };
      }
      
      private function §]#Q§() : void
      {
         var _loc1_:§`!s§ = this.§-@§.§""3§(this.§"L§,{
            "scaleX":this.§"L§.scaleX,
            "scaleY":this.§"L§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§3@§.easeOut);
         _loc1_.play();
         this.§"L§.visible = true;
         this.§"L§.scaleY = 0;
         this.§"L§.scaleX = 0;
         §!#&§.playSound("button_appear");
      }
      
      private function §`^§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§`!s§ = null;
         this.§2#=§ = 0;
         this.§'$$§ = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§]#E§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§]#E§.length - 1 - i));
            roundMc = this.§]#E§[i];
            tween = this.§-@§.§""3§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§<"I§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§`!s§ = this.§-@§.§;"s§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §5"p§(§[!S§,500);
         };
      }
      
      private function §8"U§() : void
      {
         var lastRoundMC:MovieClip = this.§]#E§[this.§]"0§ - 1];
         var lastRoundCompTween:§`!s§ = this.§-@§.§""3§(lastRoundMC,{
            "scaleX":this.§7#X§,
            "scaleY":this.§4§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§<"I§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §7#?§ = true;
            §!#&§.playSound("Congratulation_ambient");
         };
      }
      
      private function §8"f§() : void
      {
         var chestTween:§`!s§ = this.§-@§.§""3§(this.§;`§,{
            "scaleX":this.§;`§.scaleX,
            "scaleY":this.§;`§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§3@§.easeOut);
         this.§;`§.visible = true;
         this.§;`§.scaleY = 0;
         this.§;`§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §5"p§(§,"^§,500);
         };
         chestTween.play();
      }
      
      private function §"#v§() : void
      {
         var lRoundMC:MovieClip = this.§]#E§[this.§]"0§ - 1];
         this.§7#X§ = lRoundMC.scaleX;
         this.§4§ = lRoundMC.scaleY;
         var tween1:§`!s§ = this.§-@§.§""3§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §<!f§,
            "scaleY":lRoundMC.scaleY * §<!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§<"I§.easeIn);
         var tween2:§`!s§ = this.§-@§.§""3§(this.§38§,{"alpha":this.§38§.alpha},{"alpha":0},0.3,§<"I§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§`!s§ = this.§-@§.§""3§(shineMC,{"rotation":0},{"rotation":-360},5,§6"w§.§ # §);
         shineTween.§&#X§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§38§.alpha = 0;
         this.§38§.visible = true;
         var tween:§`!s§ = this.§-@§.§5"L§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §!#&§.§2!A§("element_appear_3",§!#&§.§6#h§);
            §!#&§.playSound("Checkmark",§!#&§.§6#h§);
            §5"p§(§8"Z§,500);
         };
         tween.play();
      }
      
      private function §5$2§() : void
      {
         this.§4![§.visible = true;
         var tween2:§`!s§ = this.§-@§.§""3§(this.§4![§,{
            "scaleX":this.§4![§.scaleX,
            "scaleY":this.§4![§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§<"I§.easeIn);
         this.§4![§.scaleY = 0;
         this.§4![§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §!#&§.playSound("Weekly_tournament_element",§!#&§.§6#h§);
            §5"p§(§[!j§,1000);
         };
         tween2.play();
      }
      
      private function §!"§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§`!s§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§`!s§ = null;
         var iconTween2:§`!s§ = null;
         var pulsateTween:§`!s§ = null;
         this.§5_§ = false;
         this.§@"+§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§-#&§.length)
         {
            leagueMC = this.§-#&§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§-@§.§""3§(shineMC,{"rotation":0},{"rotation":-360},5,§6"w§.§ # §);
               shineTween.§&#X§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§-@§.§""3§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§<"I§.easeOut);
               iconTween2 = this.§-@§.§""3§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§<"I§.easeOut,0.5);
               pulsateTween = this.§-@§.§=!b§(iconTween1,iconTween2);
               pulsateTween.§&#X§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§-#&§.length - i));
            delay = 0;
            if(i > this.§-#&§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§-@§.§""3§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§<"I§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§2!I§.visible = true;
         var leagueOpeningTween:§`!s§ = this.§-@§.§;"s§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §5"p§(§-"j§,300);
         };
      }
      
      private function §?H§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§`!s§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§]#E§.length)
         {
            roundMc = this.§]#E§[i];
            tween = this.§-@§.§""3§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§<"I§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§`!s§ = this.§-@§.§=!1§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§`!s§ = §-@§.§""3§(§2#b§,{"scaleX":§4"j§},{"scaleX":§2#b§.scaleX},0.5,§^!;§.easeIn);
            var slideTween:§`!s§ = §-@§.§""3§(§4![§,{"x":§2!I§.x - (§4![§.width >> 1) - 20},{"x":§4![§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §`R§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §`R§.scaleY * 1.2;
            var playerAvatartween:§`!s§ = §-@§.§""3§(§`R§,{
               "x":-(§`R§.width + (playerAvatarFinalScaleX - §`R§.scaleX) * §`R§.width >> 1),
               "y":§`R§.y - (playerAvatarFinalScaleY - §`R§.scaleY) * §`R§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§`R§.x,
               "y":§`R§.y,
               "scaleX":§`R§.scaleX,
               "scaleY":§`R§.scaleY
            },0.6,§^!;§.easeIn);
            var friendsSet1Tween:§`!s§ = §-@§.§""3§(mFriendAvatarsGrp1MC,{"x":-(§4![§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§^!;§.easeIn);
            var friendsSet2Tween:§`!s§ = §-@§.§""3§(mFriendAvatarsGrp2MC,{"x":(§4![§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§^!;§.easeIn);
            var weeklyTournamentTween:§`!s§ = §-@§.§5"L§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §!#&§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               §!#&§.playSound("ui_ingame_scorebox_gain_position",§!#&§.§6#h§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §5"p§(§^#w§);
            };
         };
      }
      
      private function §5"p§(param1:uint, param2:int = 0) : void
      {
         this.§ #H§ = param1;
         this.§15§ = param2;
         this.§1$,§ = 0;
      }
      
      private function §;",§(param1:MouseEvent) : void
      {
         §!#&§.playSound("chest_open_special",§!#&§.§6#h§);
         §1"6§.mClip.removeEventListener(Event.ENTER_FRAME,this.§#!Q§);
         §1"6§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§;",§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§%"!§.NORMAL,§^#o§.DEFAULT));
      }
      
      private function §&!Y§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§6"V§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§38§.x;
         var _loc9_:Number = this.§38§.y;
         var _loc10_:Number = this.§`R§.localToGlobal(new Point(§1"6§.mClip.x,§1"6§.mClip.y)).x;
         var _loc11_:Number = this.§`R§.localToGlobal(new Point(§1"6§.mClip.x,§1"6§.mClip.y)).y;
         var _loc12_:Number = this.§38§.x + 30;
         var _loc13_:Number = this.§38§.y - 100;
         if(AngryBirdsBase.singleton.§3#3§())
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
            this.§6"V§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§-$,§;
         }
         var _loc14_:int = this.§6"V§.length - 1;
         var _loc15_:int = this.§6"V§.length - 2;
         this.§ "<§ = Math.atan2(this.§6"V§[_loc14_].y - this.§6"V§[_loc15_].y,this.§6"V§[_loc14_].x - this.§6"V§[_loc15_].x);
      }
      
      private function §82§() : void
      {
         var _loc1_:§4"-§ = AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
         var _loc2_:§-"3§ = new §-"3§(_loc1_.userID,"",true,§5V§.NORMAL,"",true);
         var _loc3_:§-"3§ = new §-"3§(_loc1_.userID,"",true,§5V§.NORMAL,"",true);
         this.§38§.addChild(_loc2_);
         this.§`R§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §&2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§%"E§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§-"3§ = null;
         if(§"O§ != null)
         {
            _loc1_ = Math.min(§!#?§,§"O§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §"O§[_loc4_];
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
               _loc8_ = new §-"3§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
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
