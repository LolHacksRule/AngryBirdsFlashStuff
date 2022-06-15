package §+W§
{
   import §#$?§.§7!b§;
   import §,#,§.§0!u§;
   import §,#,§.§4!g§;
   import §,#,§.§@§;
   import §,#,§.§[!V§;
   import §7"X§.§2"R§;
   import §?#z§.§]$?§;
   import §]#'§.§4"s§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § get§ extends §2!$§ implements §@#K§
   {
       
      
      private var §"#E§:MovieClip;
      
      private var §1"x§:Sprite;
      
      private var §,"c§:MovieClip;
      
      private var §["Q§:SimpleButton;
      
      private var §%"y§:§9g§;
      
      private var §#z§:Timer;
      
      private var §?!P§:Timer;
      
      public function § get§()
      {
         super();
         this.init();
      }
      
      private static function §1#Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§"#E§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§"#E§.mcBackground.stop();
         this.§+&§();
         this.§"#E§.mcCrown.stop();
         this.§3E§();
         this.§"#E§.btnBrag.addEventListener(MouseEvent.CLICK,this.§##'§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§0!u§) : void
      {
         super.data = param1;
         this.§3E§();
         this.§<#r§();
      }
      
      override public function update() : void
      {
         if(!this.§6#"§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§#"b§)
         {
            _loc1_ = 3;
         }
         this.§"#E§.gotoAndStop(_loc1_);
         if(§7!$§.§+!,§.§!$#§())
         {
            this.§"#E§.btnBrag.visible = false;
         }
         else
         {
            this.§"#E§.btnBrag.visible = this.§6#"§.beaten == true && !(§]$?§.§;u§ as §@z§).§8!;§.§ E§(this.§6#"§.userId) && §4!g§.§+!,§.§'!Y§(this.§6#"§.userId) && !§#"b§;
         }
         updatePhoto();
         §7"U§.§+$5§(this.§"#E§.txtName,this.§6#"§.userName || "",§%!x§);
         this.§"#E§.mcBackground.gotoAndStop(!!this.§6#"§.§+!d§ ? 2 : 1);
         this.§"#E§.mcFeather.visible = !this.§6#"§.§+!d§;
         var _loc2_:Number = !!this.§6#"§.§+!d§ ? Number(26) : Number(0);
         this.§"#E§.mcStar1.x = 61 + _loc2_;
         this.§"#E§.mcStar2.x = 75 + _loc2_;
         this.§"#E§.mcStar3.x = 89 + _loc2_;
         this.§"#E§.txtScore.x = 55 + _loc2_;
         if(this.§6#"§.rank <= 3 && (this.§6#"§.§0#y§ > 0 || this.§6#"§.§]-§ > 0))
         {
            this.§"#E§.mcCrown.visible = true;
            this.§"#E§.txtRank.visible = false;
            this.§"#E§.mcCrown.gotoAndStop(this.§6#"§.rank);
         }
         else
         {
            this.§"#E§.mcCrown.visible = false;
            this.§"#E§.txtRank.visible = true;
            this.§"#E§.txtRank.text = this.§6#"§.rank.toString() || "";
            §7"U§.§+$5§(this.§"#E§.txtRank,this.§6#"§.rank.toString() || "");
         }
         this.§1"x§.scaleX = this.§#p§(this.§6#"§.§]-§);
         §7"U§.§+$5§(this.§"#E§.txtScore,§1#Y§(this.§6#"§.§0#y§) || "0");
         this.§"#E§.mcStar1.visible = this.§6#"§.§>"Z§ >= 1;
         this.§"#E§.mcStar2.visible = this.§6#"§.§>"Z§ >= 2;
         this.§"#E§.mcStar3.visible = this.§6#"§.§>"Z§ >= 3;
         §`"P§();
         §"$$§();
         this.updateLeagueIcon();
         this.§]#I§();
         this.§>#W§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§"#7§ || !§,!#§)
         {
            return;
         }
         if(!this.§6#"§.§+!d§)
         {
            §"#7§.visible = false;
            §,!#§.visible = false;
            return;
         }
         if(!§#"b§ && §4"s§.§+!,§.active)
         {
            if(this.§6#"§.leagueStars > 0)
            {
               §"#7§.visible = false;
               §,!#§.visible = true;
               §,!#§.txtRakning.text = this.§6#"§.leagueStars.toString();
            }
            else
            {
               §"#7§.visible = true;
               §,!#§.visible = false;
               if(this.§6#"§.§"!T§)
               {
                  §"#7§.gotoAndStop(this.§6#"§.§"!T§);
               }
               else
               {
                  §"#7§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §]#I§() : void
      {
         if(§@#5§.§=D§(§@#5§.§;##§))
         {
            if(!§#"b§ && !isMe && this.§6#"§.§#!§)
            {
               if(!this.§["Q§)
               {
                  this.§["Q§ = new §[a§.§8#k§("ButtonChallenge")();
                  this.§["Q§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
                  addChild(this.§["Q§);
               }
               this.§["Q§.visible = true;
               this.§["Q§.y = 22;
               this.§["Q§.x = 59;
               if(§;!#§ && this.contains(§;!#§.mAssetHolder))
               {
                  §;!#§.mAssetHolder.visible = false;
               }
               this.§"#E§.txtScore.visible = false;
               this.§"#E§.txtRank.visible = false;
               if(!this.§%"y§)
               {
                  this.§%"y§ = new §9g§();
                  addChild(this.§%"y§.mAssetHolder);
                  this.§%"y§.§,!%§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
               }
               this.§%"y§.§,!%§.visible = true;
            }
            else if(this.§["Q§)
            {
               this.§["Q§.visible = false;
               if(§;!#§ && this.contains(§;!#§.mAssetHolder))
               {
                  §;!#§.mAssetHolder.visible = true;
               }
               this.§"#E§.txtScore.visible = true;
               this.§%"y§.§,!%§.visible = false;
            }
            else
            {
               this.§"#E§.txtScore.visible = true;
            }
         }
      }
      
      private function §>#W§() : void
      {
         if(this.§%"y§)
         {
            setChildIndex(this.§%"y§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §#p§(param1:int) : Number
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
         if(§#"b§)
         {
            param1 = false;
         }
         §;!#§.setCanSendGift(param1,param2);
      }
      
      private function §##'§(param1:Event) : void
      {
         this.§"#E§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§##'§);
         this.§1f§(true);
         dispatchEvent(new §2"R§(§2"R§.BRAG,this,true));
         this.§#z§ = new Timer(1000);
         this.§#z§.addEventListener(TimerEvent.TIMER,this.§`7§);
         this.§#z§.start();
      }
      
      private function §&"6§(param1:String) : void
      {
      }
      
      private function §&"j§(param1:String) : void
      {
         if(param1 == this.§6#"§.userId)
         {
            this.§1f§(false);
            this.§"#E§.btnBrag.visible = false;
            this.§,"c§ = new §[a§.§8#k§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§,"c§.x = this.§"#E§.btnBrag.x + 30;
            this.§,"c§.y = this.§"#E§.btnBrag.y + 8;
            addChildAt(this.§,"c§,numChildren - 1);
            this.§,"c§.addFrameScript(this.§,"c§.totalFrames - 1,this.§<#r§);
            this.§,"c§.play();
         }
      }
      
      private function §<#r§() : void
      {
         if(this.§,"c§)
         {
            this.§,"c§.stop();
            removeChild(this.§,"c§);
            this.§,"c§ = null;
         }
      }
      
      private function §"!,§(param1:String) : void
      {
         if(param1 == this.§6#"§.userId)
         {
            this.§1f§(false);
            this.§"#E§.btnBrag.visible = true;
            this.§6#"§.beaten = true;
         }
      }
      
      private function §`7§(param1:TimerEvent) : void
      {
         this.§3E§();
      }
      
      private function §3E§() : void
      {
         if(this.§#z§)
         {
            this.§#z§.stop();
            this.§#z§.removeEventListener(TimerEvent.TIMER,this.§`7§);
            this.§#z§ = null;
            this.§"#E§.btnBrag.addEventListener(MouseEvent.CLICK,this.§##'§);
         }
         if(this.§?!P§)
         {
            this.§?!P§.stop();
            this.§?!P§.removeEventListener(TimerEvent.TIMER,this.§`7§);
            this.§?!P§ = null;
            this.§["Q§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
            this.§%"y§.§,!%§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
         }
      }
      
      private function §1f§(param1:Boolean) : void
      {
         if(param1)
         {
            §7!b§.addCallback("bragRequestReceived",this.§&"6§);
            §7!b§.addCallback("bragCompleted",this.§&"j§);
            §7!b§.addCallback("bragCancelled",this.§"!,§);
            §7!b§.addCallback("challengeCancelled",this.§5"h§);
         }
         else
         {
            §7!b§.§&#&§("bragRequestReceived",this.§&"6§);
            §7!b§.§&#&§("bragCompleted",this.§&"j§);
            §7!b§.§&#&§("bragCancelled",this.§"!,§);
            §7!b§.§&#&§("challengeCancelled",this.§5"h§);
         }
      }
      
      private function §+&§() : void
      {
         this.§1"x§ = new Sprite();
         this.§1"x§.x = this.§"#E§.mcFeather.x;
         this.§1"x§.y = this.§"#E§.mcFeather.y;
         this.§1"x§.graphics.beginFill(0);
         this.§1"x§.graphics.drawRect(0,0,this.§"#E§.mcFeather.width,this.§"#E§.mcFeather.height);
         this.§1"x§.graphics.endFill();
         this.§"#E§.addChild(this.§1"x§);
         this.§"#E§.mcFeather.mask = this.§1"x§;
      }
      
      public function get §6#"§() : §[!V§
      {
         return data as §[!V§;
      }
      
      private function §##L§(param1:MouseEvent) : void
      {
         this.§["Q§.removeEventListener(MouseEvent.CLICK,this.§##L§);
         this.§%"y§.§,!%§.removeEventListener(MouseEvent.CLICK,this.§##L§);
         this.§1f§(true);
         dispatchEvent(new §2"R§(§2"R§.§'"F§,this.data,true));
         this.§?!P§ = new Timer(1000);
         this.§?!P§.addEventListener(TimerEvent.TIMER,this.§`7§);
         this.§?!P§.start();
      }
      
      private function §5"h§(param1:String) : void
      {
         if(this.§6#"§ && param1 == this.§6#"§.userId)
         {
            this.§1f§(false);
            this.§]#I§();
         }
      }
   }
}
