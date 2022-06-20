package §2!X§
{
   import §%$!§.§0"F§;
   import §%$!§.§1#`§;
   import §%$!§.§9$6§;
   import §%$!§.§?i§;
   import §+"%§.§6X§;
   import §1!@§.§&#a§;
   import §7g§.§4!q§;
   import §9!s§.§!#d§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<#_§ extends §5$<§ implements §;z§
   {
       
      
      private var §["h§:MovieClip;
      
      private var §]!]§:Sprite;
      
      private var §]"F§:MovieClip;
      
      private var §;#R§:SimpleButton;
      
      private var § #c§:§>"Y§;
      
      private var §=!e§:Timer;
      
      private var §]+§:Timer;
      
      public function §<#_§()
      {
         super();
         this.init();
      }
      
      private static function §-N§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§["h§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§["h§.mcBackground.stop();
         this.§&$%§();
         this.§["h§.mcCrown.stop();
         this.§9!Y§();
         this.§["h§.btnBrag.addEventListener(MouseEvent.CLICK,this.§@8§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§9$6§) : void
      {
         super.data = param1;
         this.§9!Y§();
         this.§1!s§();
      }
      
      override public function update() : void
      {
         if(!this.§&"v§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§>$,§)
         {
            _loc1_ = 3;
         }
         this.§["h§.gotoAndStop(_loc1_);
         this.§["h§.btnBrag.visible = this.§&"v§.beaten == true && !(§>"$§.§<_§ as §8G§).§&#§.§="l§(this.§&"v§.userId) && §1#`§.§3!]§.§@"A§(this.§&"v§.userId) && !§>$,§;
         updatePhoto();
         §&#a§.§^E§(this.§["h§.txtName,this.§&"v§.userName || "",§2#0§);
         this.§["h§.mcBackground.gotoAndStop(!!this.§&"v§.§0!i§ ? 2 : 1);
         this.§["h§.mcFeather.visible = !this.§&"v§.§0!i§;
         var _loc2_:Number = !!this.§&"v§.§0!i§ ? Number(26) : Number(0);
         this.§["h§.mcStar1.x = 61 + _loc2_;
         this.§["h§.mcStar2.x = 75 + _loc2_;
         this.§["h§.mcStar3.x = 89 + _loc2_;
         this.§["h§.txtScore.x = 55 + _loc2_;
         if(this.§&"v§.rank <= 3 && (this.§&"v§.levelScore > 0 || this.§&"v§.§?$9§ > 0))
         {
            this.§["h§.mcCrown.visible = true;
            this.§["h§.txtRank.visible = false;
            this.§["h§.mcCrown.gotoAndStop(this.§&"v§.rank);
         }
         else
         {
            this.§["h§.mcCrown.visible = false;
            this.§["h§.txtRank.visible = true;
            this.§["h§.txtRank.text = this.§&"v§.rank.toString() || "";
            §&#a§.§^E§(this.§["h§.txtRank,this.§&"v§.rank.toString() || "");
         }
         this.§]!]§.scaleX = this.§-#Y§(this.§&"v§.§?$9§);
         §&#a§.§^E§(this.§["h§.txtScore,§-N§(this.§&"v§.levelScore) || "0");
         this.§["h§.mcStar1.visible = this.§&"v§.stars >= 1;
         this.§["h§.mcStar2.visible = this.§&"v§.stars >= 2;
         this.§["h§.mcStar3.visible = this.§&"v§.stars >= 3;
         §0#V§();
         § #9§();
         this.updateLeagueIcon();
         this.§""c§();
         this.§5#d§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§[#3§ || !§7#-§)
         {
            return;
         }
         if(!this.§&"v§.§0!i§)
         {
            §[#3§.visible = false;
            §7#-§.visible = false;
            return;
         }
         if(!§>$,§ && §4!q§.§3!]§.active)
         {
            if(this.§&"v§.§8U§ > 0)
            {
               §[#3§.visible = false;
               §7#-§.visible = true;
               §7#-§.txtRakning.text = this.§&"v§.§8U§.toString();
            }
            else
            {
               §[#3§.visible = true;
               §7#-§.visible = false;
               if(this.§&"v§.§+"t§)
               {
                  §[#3§.gotoAndStop(this.§&"v§.§+"t§);
               }
               else
               {
                  §[#3§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §""c§() : void
      {
         if(§0"F§.§7#"§(§0"F§.§0i§))
         {
            if(!§>$,§ && !isMe && this.§&"v§.§[!Y§)
            {
               if(!this.§;#R§)
               {
                  this.§;#R§ = new §@`§.§4!i§("ButtonChallenge")();
                  this.§;#R§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
                  addChild(this.§;#R§);
               }
               this.§;#R§.visible = true;
               this.§;#R§.y = 22;
               this.§;#R§.x = 59;
               if(§,!X§ && this.contains(§,!X§.mAssetHolder))
               {
                  §,!X§.mAssetHolder.visible = false;
               }
               this.§["h§.txtScore.visible = false;
               this.§["h§.txtRank.visible = false;
               if(!this.§ #c§)
               {
                  this.§ #c§ = new §>"Y§();
                  addChild(this.§ #c§.mAssetHolder);
                  this.§ #c§.§=";§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
               }
               this.§ #c§.§=";§.visible = true;
            }
            else if(this.§;#R§)
            {
               this.§;#R§.visible = false;
               if(§,!X§ && this.contains(§,!X§.mAssetHolder))
               {
                  §,!X§.mAssetHolder.visible = true;
               }
               this.§["h§.txtScore.visible = true;
               this.§ #c§.§=";§.visible = false;
            }
            else
            {
               this.§["h§.txtScore.visible = true;
            }
         }
      }
      
      private function §5#d§() : void
      {
         if(this.§ #c§)
         {
            setChildIndex(this.§ #c§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §-#Y§(param1:int) : Number
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
         if(§>$,§)
         {
            param1 = false;
         }
         §,!X§.setCanSendGift(param1,param2);
      }
      
      private function §@8§(param1:Event) : void
      {
         this.§["h§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§@8§);
         this.§<!J§(true);
         dispatchEvent(new §!#d§(§!#d§.BRAG,this,true));
         this.§=!e§ = new Timer(1000);
         this.§=!e§.addEventListener(TimerEvent.TIMER,this.§1"A§);
         this.§=!e§.start();
      }
      
      private function §>$3§(param1:String) : void
      {
      }
      
      private function §^!v§(param1:String) : void
      {
         if(param1 == this.§&"v§.userId)
         {
            this.§<!J§(false);
            this.§["h§.btnBrag.visible = false;
            this.§]"F§ = new §@`§.§4!i§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§]"F§.x = this.§["h§.btnBrag.x + 30;
            this.§]"F§.y = this.§["h§.btnBrag.y + 8;
            addChildAt(this.§]"F§,numChildren - 1);
            this.§]"F§.addFrameScript(this.§]"F§.totalFrames - 1,this.§1!s§);
            this.§]"F§.play();
         }
      }
      
      private function §1!s§() : void
      {
         if(this.§]"F§)
         {
            this.§]"F§.stop();
            removeChild(this.§]"F§);
            this.§]"F§ = null;
         }
      }
      
      private function §"!e§(param1:String) : void
      {
         if(param1 == this.§&"v§.userId)
         {
            this.§<!J§(false);
            this.§["h§.btnBrag.visible = true;
            this.§&"v§.beaten = true;
         }
      }
      
      private function §1"A§(param1:TimerEvent) : void
      {
         this.§9!Y§();
      }
      
      private function §9!Y§() : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
            this.§=!e§.removeEventListener(TimerEvent.TIMER,this.§1"A§);
            this.§=!e§ = null;
            this.§["h§.btnBrag.addEventListener(MouseEvent.CLICK,this.§@8§);
         }
         if(this.§]+§)
         {
            this.§]+§.stop();
            this.§]+§.removeEventListener(TimerEvent.TIMER,this.§1"A§);
            this.§]+§ = null;
            this.§;#R§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
            this.§ #c§.§=";§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
         }
      }
      
      private function §<!J§(param1:Boolean) : void
      {
         if(param1)
         {
            §6X§.addCallback("bragRequestReceived",this.§>$3§);
            §6X§.addCallback("bragCompleted",this.§^!v§);
            §6X§.addCallback("bragCancelled",this.§"!e§);
            §6X§.addCallback("challengeCancelled",this.§;$#§);
         }
         else
         {
            §6X§.§5!3§("bragRequestReceived",this.§>$3§);
            §6X§.§5!3§("bragCompleted",this.§^!v§);
            §6X§.§5!3§("bragCancelled",this.§"!e§);
            §6X§.§5!3§("challengeCancelled",this.§;$#§);
         }
      }
      
      private function §&$%§() : void
      {
         this.§]!]§ = new Sprite();
         this.§]!]§.x = this.§["h§.mcFeather.x;
         this.§]!]§.y = this.§["h§.mcFeather.y;
         this.§]!]§.graphics.beginFill(0);
         this.§]!]§.graphics.drawRect(0,0,this.§["h§.mcFeather.width,this.§["h§.mcFeather.height);
         this.§]!]§.graphics.endFill();
         this.§["h§.addChild(this.§]!]§);
         this.§["h§.mcFeather.mask = this.§]!]§;
      }
      
      public function get §&"v§() : §?i§
      {
         return data as §?i§;
      }
      
      private function §[#4§(param1:MouseEvent) : void
      {
         this.§;#R§.removeEventListener(MouseEvent.CLICK,this.§[#4§);
         this.§ #c§.§=";§.removeEventListener(MouseEvent.CLICK,this.§[#4§);
         this.§<!J§(true);
         dispatchEvent(new §!#d§(§!#d§.§9T§,this.data,true));
         this.§]+§ = new Timer(1000);
         this.§]+§.addEventListener(TimerEvent.TIMER,this.§1"A§);
         this.§]+§.start();
      }
      
      private function §;$#§(param1:String) : void
      {
         if(this.§&"v§ && param1 == this.§&"v§.userId)
         {
            this.§<!J§(false);
            this.§""c§();
         }
      }
   }
}
