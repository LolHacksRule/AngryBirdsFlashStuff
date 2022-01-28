package §=§#0
{
   import §!#C§.§0#;§;
   import §!#C§.§1%§;
   import §!#C§.§5H§;
   import §!#C§.§;!$§;
   import §"!n§.§;"x§;
   import §##Z§.§<$2§;
   import §<!r§.§'##§;
   import §?!]§.§6#k§;
   import §]C§.§ !+§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!"X§ extends § #i§ implements §0V§
   {
       
      
      private var §8"@§:MovieClip;
      
      private var §##c§:Sprite;
      
      private var §0!1§:MovieClip;
      
      private var §4#6§:SimpleButton;
      
      private var §2#T§:§`#H§;
      
      private var §,"Y§:Timer;
      
      private var §="P§:Timer;
      
      public function §!"X§()
      {
         super();
         this.init();
      }
      
      private static function §<!?§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§8"@§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§8"@§.mcBackground.stop();
         this.§>X§();
         this.§8"@§.mcCrown.stop();
         this.§[! §();
         this.§8"@§.btnBrag.addEventListener(MouseEvent.CLICK,this.§-#W§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§0#;§) : void
      {
         super.data = param1;
         this.§[! §();
         this.§5#Q§();
      }
      
      override public function update() : void
      {
         if(!this.§1#C§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§6#O§)
         {
            _loc1_ = 3;
         }
         this.§8"@§.gotoAndStop(_loc1_);
         if(§'##§.§`"H§.§;!q§())
         {
            this.§8"@§.btnBrag.visible = false;
         }
         else
         {
            this.§8"@§.btnBrag.visible = this.§1#C§.beaten == true && !(§7n§.§-$<§ as § #v§).§=#+§.§8#$§(this.§1#C§.userId) && §1%§.§`"H§.§["l§(this.§1#C§.userId) && !§6#O§;
         }
         updatePhoto();
         §;"x§.§+>§(this.§8"@§.txtName,this.§1#C§.userName || "",§4#I§);
         this.§8"@§.mcBackground.gotoAndStop(!!this.§1#C§.§2!y§ ? 2 : 1);
         this.§8"@§.mcFeather.visible = !this.§1#C§.§2!y§;
         var _loc2_:Number = !!this.§1#C§.§2!y§ ? Number(26) : Number(0);
         this.§8"@§.mcStar1.x = 61 + _loc2_;
         this.§8"@§.mcStar2.x = 75 + _loc2_;
         this.§8"@§.mcStar3.x = 89 + _loc2_;
         this.§8"@§.txtScore.x = 55 + _loc2_;
         if(this.§1#C§.rank <= 3 && (this.§1#C§.§,$&§ > 0 || this.§1#C§.§!!a§ > 0))
         {
            this.§8"@§.mcCrown.visible = true;
            this.§8"@§.txtRank.visible = false;
            this.§8"@§.mcCrown.gotoAndStop(this.§1#C§.rank);
         }
         else
         {
            this.§8"@§.mcCrown.visible = false;
            this.§8"@§.txtRank.visible = true;
            this.§8"@§.txtRank.text = this.§1#C§.rank.toString() || "";
            §;"x§.§+>§(this.§8"@§.txtRank,this.§1#C§.rank.toString() || "");
         }
         this.§##c§.scaleX = this.§'#h§(this.§1#C§.§!!a§);
         §;"x§.§+>§(this.§8"@§.txtScore,§<!?§(this.§1#C§.§,$&§) || "0");
         this.§8"@§.mcStar1.visible = this.§1#C§.§4!6§ >= 1;
         this.§8"@§.mcStar2.visible = this.§1#C§.§4!6§ >= 2;
         this.§8"@§.mcStar3.visible = this.§1#C§.§4!6§ >= 3;
         §+!$§();
         §9x§();
         this.updateLeagueIcon();
         this.§;#"§();
         this.§'"8§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§'"X§ || !§;#I§)
         {
            return;
         }
         if(!this.§1#C§.§2!y§)
         {
            §'"X§.visible = false;
            §;#I§.visible = false;
            return;
         }
         if(!§6#O§ && §<$2§.§`"H§.active)
         {
            if(this.§1#C§.leagueStars > 0)
            {
               §'"X§.visible = false;
               §;#I§.visible = true;
               §;#I§.txtRakning.text = this.§1#C§.leagueStars.toString();
            }
            else
            {
               §'"X§.visible = true;
               §;#I§.visible = false;
               if(this.§1#C§.§]"t§)
               {
                  §'"X§.gotoAndStop(this.§1#C§.§]"t§);
               }
               else
               {
                  §'"X§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §;#"§() : void
      {
         if(§5H§.§^"M§(§5H§.§,"5§))
         {
            if(!§6#O§ && !isMe && this.§1#C§.§^!w§)
            {
               if(!this.§4#6§)
               {
                  this.§4#6§ = new §6$A§.§1!m§("ButtonChallenge")();
                  this.§4#6§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
                  addChild(this.§4#6§);
               }
               this.§4#6§.visible = true;
               this.§4#6§.y = 22;
               this.§4#6§.x = 59;
               if(§6-§ && this.contains(§6-§.mAssetHolder))
               {
                  §6-§.mAssetHolder.visible = false;
               }
               this.§8"@§.txtScore.visible = false;
               this.§8"@§.txtRank.visible = false;
               if(!this.§2#T§)
               {
                  this.§2#T§ = new §`#H§();
                  addChild(this.§2#T§.mAssetHolder);
                  this.§2#T§.§?#c§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
               }
               this.§2#T§.§?#c§.visible = true;
            }
            else if(this.§4#6§)
            {
               this.§4#6§.visible = false;
               if(§6-§ && this.contains(§6-§.mAssetHolder))
               {
                  §6-§.mAssetHolder.visible = true;
               }
               this.§8"@§.txtScore.visible = true;
               this.§2#T§.§?#c§.visible = false;
            }
            else
            {
               this.§8"@§.txtScore.visible = true;
            }
         }
      }
      
      private function §'"8§() : void
      {
         if(this.§2#T§)
         {
            setChildIndex(this.§2#T§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §'#h§(param1:int) : Number
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
         if(§6#O§)
         {
            param1 = false;
         }
         §6-§.setCanSendGift(param1,param2);
      }
      
      private function §-#W§(param1:Event) : void
      {
         this.§8"@§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§-#W§);
         this.§?"H§(true);
         dispatchEvent(new §6#k§(§6#k§.BRAG,this,true));
         this.§,"Y§ = new Timer(1000);
         this.§,"Y§.addEventListener(TimerEvent.TIMER,this.§ A§);
         this.§,"Y§.start();
      }
      
      private function §[;§(param1:String) : void
      {
      }
      
      private function §-!m§(param1:String) : void
      {
         if(param1 == this.§1#C§.userId)
         {
            this.§?"H§(false);
            this.§8"@§.btnBrag.visible = false;
            this.§0!1§ = new §6$A§.§1!m§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§0!1§.x = this.§8"@§.btnBrag.x + 30;
            this.§0!1§.y = this.§8"@§.btnBrag.y + 8;
            addChildAt(this.§0!1§,numChildren - 1);
            this.§0!1§.addFrameScript(this.§0!1§.totalFrames - 1,this.§5#Q§);
            this.§0!1§.play();
         }
      }
      
      private function §5#Q§() : void
      {
         if(this.§0!1§)
         {
            this.§0!1§.stop();
            removeChild(this.§0!1§);
            this.§0!1§ = null;
         }
      }
      
      private function §'!7§(param1:String) : void
      {
         if(param1 == this.§1#C§.userId)
         {
            this.§?"H§(false);
            this.§8"@§.btnBrag.visible = true;
            this.§1#C§.beaten = true;
         }
      }
      
      private function § A§(param1:TimerEvent) : void
      {
         this.§[! §();
      }
      
      private function §[! §() : void
      {
         if(this.§,"Y§)
         {
            this.§,"Y§.stop();
            this.§,"Y§.removeEventListener(TimerEvent.TIMER,this.§ A§);
            this.§,"Y§ = null;
            this.§8"@§.btnBrag.addEventListener(MouseEvent.CLICK,this.§-#W§);
         }
         if(this.§="P§)
         {
            this.§="P§.stop();
            this.§="P§.removeEventListener(TimerEvent.TIMER,this.§ A§);
            this.§="P§ = null;
            this.§4#6§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
            this.§2#T§.§?#c§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
         }
      }
      
      private function §?"H§(param1:Boolean) : void
      {
         if(param1)
         {
            § !+§.addCallback("bragRequestReceived",this.§[;§);
            § !+§.addCallback("bragCompleted",this.§-!m§);
            § !+§.addCallback("bragCancelled",this.§'!7§);
            § !+§.addCallback("challengeCancelled",this.§0$1§);
         }
         else
         {
            § !+§.§?!§("bragRequestReceived",this.§[;§);
            § !+§.§?!§("bragCompleted",this.§-!m§);
            § !+§.§?!§("bragCancelled",this.§'!7§);
            § !+§.§?!§("challengeCancelled",this.§0$1§);
         }
      }
      
      private function §>X§() : void
      {
         this.§##c§ = new Sprite();
         this.§##c§.x = this.§8"@§.mcFeather.x;
         this.§##c§.y = this.§8"@§.mcFeather.y;
         this.§##c§.graphics.beginFill(0);
         this.§##c§.graphics.drawRect(0,0,this.§8"@§.mcFeather.width,this.§8"@§.mcFeather.height);
         this.§##c§.graphics.endFill();
         this.§8"@§.addChild(this.§##c§);
         this.§8"@§.mcFeather.mask = this.§##c§;
      }
      
      public function get §1#C§() : §;!$§
      {
         return data as §;!$§;
      }
      
      private function §+!O§(param1:MouseEvent) : void
      {
         this.§4#6§.removeEventListener(MouseEvent.CLICK,this.§+!O§);
         this.§2#T§.§?#c§.removeEventListener(MouseEvent.CLICK,this.§+!O§);
         this.§?"H§(true);
         dispatchEvent(new §6#k§(§6#k§.§4!x§,this.data,true));
         this.§="P§ = new Timer(1000);
         this.§="P§.addEventListener(TimerEvent.TIMER,this.§ A§);
         this.§="P§.start();
      }
      
      private function §0$1§(param1:String) : void
      {
         if(this.§1#C§ && param1 == this.§1#C§.userId)
         {
            this.§?"H§(false);
            this.§;#"§();
         }
      }
   }
}
