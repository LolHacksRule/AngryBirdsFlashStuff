package §3#q§
{
   import §!!H§.§ $4§;
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §8#^§.§-B§;
   import §>#Y§.§!#?§;
   import §>#Y§.§!$$§;
   import §>#Y§.§1N§;
   import §>#Y§.§6"k§;
   import §]!4§.§=#c§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6"R§ extends §8#>§ implements §8#'§
   {
       
      
      private var §'!L§:MovieClip;
      
      private var § #D§:Sprite;
      
      private var §2#!§:MovieClip;
      
      private var §`#'§:SimpleButton;
      
      private var §"#d§:§7"R§;
      
      private var §&#L§:Timer;
      
      private var §[%§:Timer;
      
      public function §6"R§()
      {
         super();
         this.init();
      }
      
      private static function §5#!§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         var _loc9_:int = !!(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1) ? int(_loc7_.length) : int(_loc7_.indexOf("."));
         var _loc10_:* = (_loc8_ && !param3 ? "" : (!!param4 ? "," : ".")) + _loc7_.substr(_loc9_ + 1);
         if(param3)
         {
            _loc11_ = 0;
            while(_loc11_ <= param2 - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
            {
               _loc10_ += "0";
               _loc11_++;
            }
         }
         while(_loc5_ + 3 < (_loc7_.substr(0,1) == "-" ? _loc9_ - 1 : _loc9_))
         {
            _loc10_ = (!!param4 ? "." : ",") + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_;
         }
         return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§'!L§.mcBackground.stop();
         this.§9#G§();
         this.§'!L§.mcCrown.stop();
         this.§=q§();
         this.§'!L§.btnBrag.addEventListener(MouseEvent.CLICK,this.§9"D§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§1N§) : void
      {
         super.data = param1;
         this.§=q§();
         this.§`u§();
      }
      
      override public function update() : void
      {
         if(!this.§9"T§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§ $1§)
         {
            _loc1_ = 3;
         }
         this.§'!L§.gotoAndStop(_loc1_);
         if(§5"L§.§3"1§.§2o§())
         {
            this.§'!L§.btnBrag.visible = false;
         }
         else
         {
            this.§'!L§.btnBrag.visible = this.§9"T§.beaten == true && !(§+!p§.§;"-§ as §^"a§).§?"c§.§ $!§(this.§9"T§.userId) && §6"k§.§3"1§.§`#7§(this.§9"T§.userId) && !§ $1§;
         }
         updatePhoto();
         § $4§.§'#d§(this.§'!L§.txtName,this.§9"T§.userName || "",§ "7§);
         this.§'!L§.mcBackground.gotoAndStop(!!this.§9"T§.§'n§ ? 2 : 1);
         this.§'!L§.mcFeather.visible = !this.§9"T§.§'n§;
         var _loc2_:Number = !!this.§9"T§.§'n§ ? Number(26) : Number(0);
         this.§'!L§.mcStar1.x = 61 + _loc2_;
         this.§'!L§.mcStar2.x = 75 + _loc2_;
         this.§'!L§.mcStar3.x = 89 + _loc2_;
         this.§'!L§.txtScore.x = 55 + _loc2_;
         if(this.§9"T§.rank <= 3 && (this.§9"T§.§5"1§ > 0 || this.§9"T§.§>&§ > 0))
         {
            this.§'!L§.mcCrown.visible = true;
            this.§'!L§.txtRank.visible = false;
            this.§'!L§.mcCrown.gotoAndStop(this.§9"T§.rank);
         }
         else
         {
            this.§'!L§.mcCrown.visible = false;
            this.§'!L§.txtRank.visible = true;
            this.§'!L§.txtRank.text = this.§9"T§.rank.toString() || "";
            § $4§.§'#d§(this.§'!L§.txtRank,this.§9"T§.rank.toString() || "");
         }
         this.§ #D§.scaleX = this.§,$$§(this.§9"T§.§>&§);
         § $4§.§'#d§(this.§'!L§.txtScore,§5#!§(this.§9"T§.§5"1§) || "0");
         this.§'!L§.mcStar1.visible = this.§9"T§.§]!v§ >= 1;
         this.§'!L§.mcStar2.visible = this.§9"T§.§]!v§ >= 2;
         this.§'!L§.mcStar3.visible = this.§9"T§.§]!v§ >= 3;
         §;"#§();
         §0"Y§();
         this.updateLeagueIcon();
         this.§3!h§();
         this.§3#@§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§7!S§ || !§&"T§)
         {
            return;
         }
         if(!this.§9"T§.§'n§)
         {
            §7!S§.visible = false;
            §&"T§.visible = false;
            return;
         }
         if(!§ $1§ && §?#,§.§3"1§.active)
         {
            if(this.§9"T§.leagueStars > 0)
            {
               §7!S§.visible = false;
               §&"T§.visible = true;
               §&"T§.txtRakning.text = this.§9"T§.leagueStars.toString();
            }
            else
            {
               §7!S§.visible = true;
               §&"T§.visible = false;
               if(this.§9"T§.§=4§)
               {
                  §7!S§.gotoAndStop(this.§9"T§.§=4§);
               }
               else
               {
                  §7!S§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §3!h§() : void
      {
         if(§!#?§.§]!2§(§!#?§.§1#E§))
         {
            if(!§ $1§ && !isMe && this.§9"T§.§^"%§)
            {
               if(!this.§`#'§)
               {
                  this.§`#'§ = new §=@§.§9!x§("ButtonChallenge")();
                  this.§`#'§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
                  addChild(this.§`#'§);
               }
               this.§`#'§.visible = true;
               this.§`#'§.y = 22;
               this.§`#'§.x = 59;
               if(§,^§ && this.contains(§,^§.mAssetHolder))
               {
                  §,^§.mAssetHolder.visible = false;
               }
               this.§'!L§.txtScore.visible = false;
               this.§'!L§.txtRank.visible = false;
               if(!this.§"#d§)
               {
                  this.§"#d§ = new §7"R§();
                  addChild(this.§"#d§.mAssetHolder);
                  this.§"#d§.§'!"§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
               }
               this.§"#d§.§'!"§.visible = true;
            }
            else if(this.§`#'§)
            {
               this.§`#'§.visible = false;
               if(§,^§ && this.contains(§,^§.mAssetHolder))
               {
                  §,^§.mAssetHolder.visible = true;
               }
               this.§'!L§.txtScore.visible = true;
               this.§"#d§.§'!"§.visible = false;
            }
            else
            {
               this.§'!L§.txtScore.visible = true;
            }
         }
      }
      
      private function §3#@§() : void
      {
         if(this.§"#d§)
         {
            setChildIndex(this.§"#d§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §,$$§(param1:int) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(param1 < 25)
         {
            return 0.125;
         }
         return Math.floor(param1 / 25) * 0.25;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§ $1§)
         {
            param1 = false;
         }
         §,^§.setCanSendGift(param1,param2);
      }
      
      private function §9"D§(param1:Event) : void
      {
         this.§'!L§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§9"D§);
         this.§@"g§(true);
         dispatchEvent(new §-B§(§-B§.BRAG,this,true));
         this.§&#L§ = new Timer(1000);
         this.§&#L§.addEventListener(TimerEvent.TIMER,this.§,"R§);
         this.§&#L§.start();
      }
      
      private function §@`§(param1:String) : void
      {
      }
      
      private function §0#-§(param1:String) : void
      {
         if(param1 == this.§9"T§.userId)
         {
            this.§@"g§(false);
            this.§'!L§.btnBrag.visible = false;
            this.§2#!§ = new §=@§.§9!x§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§2#!§.x = this.§'!L§.btnBrag.x + 30;
            this.§2#!§.y = this.§'!L§.btnBrag.y + 8;
            addChildAt(this.§2#!§,numChildren - 1);
            this.§2#!§.addFrameScript(this.§2#!§.totalFrames - 1,this.§`u§);
            this.§2#!§.play();
         }
      }
      
      private function §`u§() : void
      {
         if(this.§2#!§)
         {
            this.§2#!§.stop();
            removeChild(this.§2#!§);
            this.§2#!§ = null;
         }
      }
      
      private function §<""§(param1:String) : void
      {
         if(param1 == this.§9"T§.userId)
         {
            this.§@"g§(false);
            this.§'!L§.btnBrag.visible = true;
            this.§9"T§.beaten = true;
         }
      }
      
      private function §,"R§(param1:TimerEvent) : void
      {
         this.§=q§();
      }
      
      private function §=q§() : void
      {
         if(this.§&#L§)
         {
            this.§&#L§.stop();
            this.§&#L§.removeEventListener(TimerEvent.TIMER,this.§,"R§);
            this.§&#L§ = null;
            this.§'!L§.btnBrag.addEventListener(MouseEvent.CLICK,this.§9"D§);
         }
         if(this.§[%§)
         {
            this.§[%§.stop();
            this.§[%§.removeEventListener(TimerEvent.TIMER,this.§,"R§);
            this.§[%§ = null;
            this.§`#'§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
            this.§"#d§.§'!"§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
         }
      }
      
      private function §@"g§(param1:Boolean) : void
      {
         if(param1)
         {
            §=#c§.addCallback("bragRequestReceived",this.§@`§);
            §=#c§.addCallback("bragCompleted",this.§0#-§);
            §=#c§.addCallback("bragCancelled",this.§<""§);
            §=#c§.addCallback("challengeCancelled",this.§6T§);
         }
         else
         {
            §=#c§.§`$ §("bragRequestReceived",this.§@`§);
            §=#c§.§`$ §("bragCompleted",this.§0#-§);
            §=#c§.§`$ §("bragCancelled",this.§<""§);
            §=#c§.§`$ §("challengeCancelled",this.§6T§);
         }
      }
      
      private function §9#G§() : void
      {
         this.§ #D§ = new Sprite();
         this.§ #D§.x = this.§'!L§.mcFeather.x;
         this.§ #D§.y = this.§'!L§.mcFeather.y;
         this.§ #D§.graphics.beginFill(0);
         this.§ #D§.graphics.drawRect(0,0,this.§'!L§.mcFeather.width,this.§'!L§.mcFeather.height);
         this.§ #D§.graphics.endFill();
         this.§'!L§.addChild(this.§ #D§);
         this.§'!L§.mcFeather.mask = this.§ #D§;
      }
      
      public function get §9"T§() : §!$$§
      {
         return data as §!$$§;
      }
      
      private function §&#X§(param1:MouseEvent) : void
      {
         this.§`#'§.removeEventListener(MouseEvent.CLICK,this.§&#X§);
         this.§"#d§.§'!"§.removeEventListener(MouseEvent.CLICK,this.§&#X§);
         this.§@"g§(true);
         dispatchEvent(new §-B§(§-B§.§!# §,this.data,true));
         this.§[%§ = new Timer(1000);
         this.§[%§.addEventListener(TimerEvent.TIMER,this.§,"R§);
         this.§[%§.start();
      }
      
      private function §6T§(param1:String) : void
      {
         if(this.§9"T§ && param1 == this.§9"T§.userId)
         {
            this.§@"g§(false);
            this.§3!h§();
         }
      }
   }
}
