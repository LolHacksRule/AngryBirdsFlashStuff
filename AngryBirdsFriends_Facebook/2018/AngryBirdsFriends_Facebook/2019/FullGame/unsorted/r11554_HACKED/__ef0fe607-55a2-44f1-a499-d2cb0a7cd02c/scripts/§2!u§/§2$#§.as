package §2!u§
{
   import §"!>§.§'!x§;
   import §+"u§.§^"C§;
   import §6!'§.§@#c§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §=!2§.§%"T§;
   import §]"'§.§+!!§;
   import §]"'§.§-!#§;
   import §]"'§.§8!a§;
   import §]"'§.§[#!§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2$#§ extends §^#h§ implements §'!9§
   {
       
      
      private var §#"r§:MovieClip;
      
      private var §2$3§:Sprite;
      
      private var §]"Y§:MovieClip;
      
      private var §4"?§:SimpleButton;
      
      private var §<!<§:§9_§;
      
      private var §=!]§:Timer;
      
      private var §=!R§:Timer;
      
      public function §2$#§()
      {
         super();
         this.init();
      }
      
      private static function §4$,§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§#"r§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§#"r§.mcBackground.stop();
         this.§'$?§();
         this.§#"r§.mcCrown.stop();
         this.§6_§();
         this.§#"r§.btnBrag.addEventListener(MouseEvent.CLICK,this.§!$%§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§8!a§) : void
      {
         super.data = param1;
         this.§6_§();
         this.§5#d§();
      }
      
      override public function update() : void
      {
         if(!this.§9N§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§[!F§)
         {
            _loc1_ = 3;
         }
         this.§#"r§.gotoAndStop(_loc1_);
         if(§^"C§.§?q§.§&2§())
         {
            this.§#"r§.btnBrag.visible = false;
         }
         else
         {
            this.§#"r§.btnBrag.visible = this.§9N§.beaten == true && !(§%"T§.§>$<§ as §'"a§).§1#b§.§"#q§(this.§9N§.userId) && §-!#§.§?q§.§6"B§(this.§9N§.userId) && !§[!F§;
         }
         updatePhoto();
         §&!b§.§9G§(this.§#"r§.txtName,this.§9N§.userName || "",§"!!§);
         this.§#"r§.mcBackground.gotoAndStop(!!this.§9N§.§,$#§ ? 2 : 1);
         this.§#"r§.mcFeather.visible = !this.§9N§.§,$#§;
         var _loc2_:Number = !!this.§9N§.§,$#§ ? Number(26) : Number(0);
         this.§#"r§.mcStar1.x = 61 + _loc2_;
         this.§#"r§.mcStar2.x = 75 + _loc2_;
         this.§#"r§.mcStar3.x = 89 + _loc2_;
         this.§#"r§.txtScore.x = 55 + _loc2_;
         if(this.§9N§.rank <= 3 && (this.§9N§.§>"t§ > 0 || this.§9N§.§[$1§ > 0))
         {
            this.§#"r§.mcCrown.visible = true;
            this.§#"r§.txtRank.visible = false;
            this.§#"r§.mcCrown.gotoAndStop(this.§9N§.rank);
         }
         else
         {
            this.§#"r§.mcCrown.visible = false;
            this.§#"r§.txtRank.visible = true;
            this.§#"r§.txtRank.text = this.§9N§.rank.toString() || "";
            §&!b§.§9G§(this.§#"r§.txtRank,this.§9N§.rank.toString() || "");
         }
         this.§2$3§.scaleX = this.§;"!§(this.§9N§.§[$1§);
         §&!b§.§9G§(this.§#"r§.txtScore,§4$,§(this.§9N§.§>"t§) || "0");
         this.§#"r§.mcStar1.visible = this.§9N§.§%#f§ >= 1;
         this.§#"r§.mcStar2.visible = this.§9N§.§%#f§ >= 2;
         this.§#"r§.mcStar3.visible = this.§9N§.§%#f§ >= 3;
         §]r§();
         §,!C§();
         this.updateLeagueIcon();
         this.§3"p§();
         this.§8!p§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§%#T§ || !§!"#§)
         {
            return;
         }
         if(!this.§9N§.§,$#§)
         {
            §%#T§.visible = false;
            §!"#§.visible = false;
            return;
         }
         if(!§[!F§ && §@#c§.§?q§.active)
         {
            if(this.§9N§.§&X§ > 0)
            {
               §%#T§.visible = false;
               §!"#§.visible = true;
               §!"#§.txtRakning.text = this.§9N§.§&X§.toString();
            }
            else
            {
               §%#T§.visible = true;
               §!"#§.visible = false;
               if(this.§9N§.§2# §)
               {
                  §%#T§.gotoAndStop(this.§9N§.§2# §);
               }
               else
               {
                  §%#T§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §3"p§() : void
      {
         if(§[#!§.§1!'§(§[#!§.§^"S§))
         {
            if(!§[!F§ && !isMe && this.§9N§.§5$6§)
            {
               if(!this.§4"?§)
               {
                  this.§4"?§ = new §2"O§.§`>§("ButtonChallenge")();
                  this.§4"?§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
                  addChild(this.§4"?§);
               }
               this.§4"?§.visible = true;
               this.§4"?§.y = 22;
               this.§4"?§.x = 59;
               if(§^!W§ && this.contains(§^!W§.mAssetHolder))
               {
                  §^!W§.mAssetHolder.visible = false;
               }
               this.§#"r§.txtScore.visible = false;
               this.§#"r§.txtRank.visible = false;
               if(!this.§<!<§)
               {
                  this.§<!<§ = new §9_§();
                  addChild(this.§<!<§.mAssetHolder);
                  this.§<!<§.§`$7§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
               }
               this.§<!<§.§`$7§.visible = true;
            }
            else if(this.§4"?§)
            {
               this.§4"?§.visible = false;
               if(§^!W§ && this.contains(§^!W§.mAssetHolder))
               {
                  §^!W§.mAssetHolder.visible = true;
               }
               this.§#"r§.txtScore.visible = true;
               this.§<!<§.§`$7§.visible = false;
            }
            else
            {
               this.§#"r§.txtScore.visible = true;
            }
         }
      }
      
      private function §8!p§() : void
      {
         if(this.§<!<§)
         {
            setChildIndex(this.§<!<§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §;"!§(param1:int) : Number
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
         if(§[!F§)
         {
            param1 = false;
         }
         §^!W§.setCanSendGift(param1,param2);
      }
      
      private function §!$%§(param1:Event) : void
      {
         this.§#"r§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§!$%§);
         this.§`#T§(true);
         dispatchEvent(new §'!x§(§'!x§.BRAG,this,true));
         this.§=!]§ = new Timer(1000);
         this.§=!]§.addEventListener(TimerEvent.TIMER,this.§^#p§);
         this.§=!]§.start();
      }
      
      private function § !6§(param1:String) : void
      {
      }
      
      private function §2!9§(param1:String) : void
      {
         if(param1 == this.§9N§.userId)
         {
            this.§`#T§(false);
            this.§#"r§.btnBrag.visible = false;
            this.§]"Y§ = new §2"O§.§`>§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§]"Y§.x = this.§#"r§.btnBrag.x + 30;
            this.§]"Y§.y = this.§#"r§.btnBrag.y + 8;
            addChildAt(this.§]"Y§,numChildren - 1);
            this.§]"Y§.addFrameScript(this.§]"Y§.totalFrames - 1,this.§5#d§);
            this.§]"Y§.play();
         }
      }
      
      private function §5#d§() : void
      {
         if(this.§]"Y§)
         {
            this.§]"Y§.stop();
            removeChild(this.§]"Y§);
            this.§]"Y§ = null;
         }
      }
      
      private function §&!-§(param1:String) : void
      {
         if(param1 == this.§9N§.userId)
         {
            this.§`#T§(false);
            this.§#"r§.btnBrag.visible = true;
            this.§9N§.beaten = true;
         }
      }
      
      private function §^#p§(param1:TimerEvent) : void
      {
         this.§6_§();
      }
      
      private function §6_§() : void
      {
         if(this.§=!]§)
         {
            this.§=!]§.stop();
            this.§=!]§.removeEventListener(TimerEvent.TIMER,this.§^#p§);
            this.§=!]§ = null;
            this.§#"r§.btnBrag.addEventListener(MouseEvent.CLICK,this.§!$%§);
         }
         if(this.§=!R§)
         {
            this.§=!R§.stop();
            this.§=!R§.removeEventListener(TimerEvent.TIMER,this.§^#p§);
            this.§=!R§ = null;
            this.§4"?§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
            this.§<!<§.§`$7§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
         }
      }
      
      private function §`#T§(param1:Boolean) : void
      {
         if(param1)
         {
            §@"F§.addCallback("bragRequestReceived",this.§ !6§);
            §@"F§.addCallback("bragCompleted",this.§2!9§);
            §@"F§.addCallback("bragCancelled",this.§&!-§);
            §@"F§.addCallback("challengeCancelled",this.§>>§);
         }
         else
         {
            §@"F§.§=F§("bragRequestReceived",this.§ !6§);
            §@"F§.§=F§("bragCompleted",this.§2!9§);
            §@"F§.§=F§("bragCancelled",this.§&!-§);
            §@"F§.§=F§("challengeCancelled",this.§>>§);
         }
      }
      
      private function §'$?§() : void
      {
         this.§2$3§ = new Sprite();
         this.§2$3§.x = this.§#"r§.mcFeather.x;
         this.§2$3§.y = this.§#"r§.mcFeather.y;
         this.§2$3§.graphics.beginFill(0);
         this.§2$3§.graphics.drawRect(0,0,this.§#"r§.mcFeather.width,this.§#"r§.mcFeather.height);
         this.§2$3§.graphics.endFill();
         this.§#"r§.addChild(this.§2$3§);
         this.§#"r§.mcFeather.mask = this.§2$3§;
      }
      
      public function get §9N§() : §+!!§
      {
         return data as §+!!§;
      }
      
      private function § !4§(param1:MouseEvent) : void
      {
         this.§4"?§.removeEventListener(MouseEvent.CLICK,this.§ !4§);
         this.§<!<§.§`$7§.removeEventListener(MouseEvent.CLICK,this.§ !4§);
         this.§`#T§(true);
         dispatchEvent(new §'!x§(§'!x§.§[R§,this.data,true));
         this.§=!R§ = new Timer(1000);
         this.§=!R§.addEventListener(TimerEvent.TIMER,this.§^#p§);
         this.§=!R§.start();
      }
      
      private function §>>§(param1:String) : void
      {
         if(this.§9N§ && param1 == this.§9N§.userId)
         {
            this.§`#T§(false);
            this.§3"p§();
         }
      }
   }
}
