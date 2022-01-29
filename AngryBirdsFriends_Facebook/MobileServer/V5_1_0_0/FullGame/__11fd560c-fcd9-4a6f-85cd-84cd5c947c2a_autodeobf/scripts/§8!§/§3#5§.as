package §8!§
{
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §2G§.§&"+§;
   import §2G§.§4O§;
   import §2G§.§9=§;
   import §2G§.§@#P§;
   import §;#D§.§3#U§;
   import §[#[§.§=#Q§;
   import §`!e§.§=Z§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3#5§ extends §2$-§ implements §[g§
   {
       
      
      private var §`!!§:MovieClip;
      
      private var §9#=§:Sprite;
      
      private var §%"Q§:MovieClip;
      
      private var §]$"§:SimpleButton;
      
      private var §"!$§:§9!e§;
      
      private var §+#-§:Timer;
      
      private var §>"w§:Timer;
      
      public function §3#5§()
      {
         super();
         this.init();
      }
      
      private static function §##_§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
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
         addChild(this.§`!!§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§`!!§.mcBackground.stop();
         this.§^"u§();
         this.§`!!§.mcCrown.stop();
         this.§+!M§();
         this.§`!!§.btnBrag.addEventListener(MouseEvent.CLICK,this.§ !S§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§4O§) : void
      {
         super.data = param1;
         this.§+!M§();
         this.§,"5§();
      }
      
      override public function update() : void
      {
         if(!this.§2"e§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§0#G§)
         {
            _loc1_ = 3;
         }
         this.§`!!§.gotoAndStop(_loc1_);
         this.§`!!§.btnBrag.visible = this.§2"e§.beaten == true && !(§3#U§.§9#^§ as §,A§).§9"x§.§4!C§(this.§2"e§.userId) && §&"+§.§6!§.§40§(this.§2"e§.userId) && !§0#G§;
         updatePhoto();
         §=#Q§.§0$,§(this.§`!!§.txtName,this.§2"e§.userName || "",§`"6§);
         this.§`!!§.mcBackground.gotoAndStop(!!this.§2"e§.§;!o§ ? 2 : 1);
         this.§`!!§.mcFeather.visible = !this.§2"e§.§;!o§;
         var _loc2_:Number = !!this.§2"e§.§;!o§ ? Number(26) : Number(0);
         this.§`!!§.mcStar1.x = 61 + _loc2_;
         this.§`!!§.mcStar2.x = 75 + _loc2_;
         this.§`!!§.mcStar3.x = 89 + _loc2_;
         this.§`!!§.txtScore.x = 55 + _loc2_;
         if(this.§2"e§.rank <= 3 && (this.§2"e§.§'!_§ > 0 || this.§2"e§.§#"y§ > 0))
         {
            this.§`!!§.mcCrown.visible = true;
            this.§`!!§.txtRank.visible = false;
            this.§`!!§.mcCrown.gotoAndStop(this.§2"e§.rank);
         }
         else
         {
            this.§`!!§.mcCrown.visible = false;
            this.§`!!§.txtRank.visible = true;
            this.§`!!§.txtRank.text = this.§2"e§.rank.toString() || "";
            §=#Q§.§0$,§(this.§`!!§.txtRank,this.§2"e§.rank.toString() || "");
         }
         this.§9#=§.scaleX = this.§]!F§(this.§2"e§.§#"y§);
         §=#Q§.§0$,§(this.§`!!§.txtScore,§##_§(this.§2"e§.§'!_§) || "0");
         this.§`!!§.mcStar1.visible = this.§2"e§.stars >= 1;
         this.§`!!§.mcStar2.visible = this.§2"e§.stars >= 2;
         this.§`!!§.mcStar3.visible = this.§2"e§.stars >= 3;
         §+!,§();
         §-$B§();
         this.updateLeagueIcon();
         this.§3#o§();
         this.§7"Q§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§<!Y§ || !§1"$§)
         {
            return;
         }
         if(!this.§2"e§.§;!o§)
         {
            §<!Y§.visible = false;
            §1"$§.visible = false;
            return;
         }
         if(!§0#G§ && §2#s§.§6!§.active)
         {
            if(this.§2"e§.§6!3§ > 0)
            {
               §<!Y§.visible = false;
               §1"$§.visible = true;
               §1"$§.txtRakning.text = this.§2"e§.§6!3§.toString();
            }
            else
            {
               §<!Y§.visible = true;
               §1"$§.visible = false;
               if(this.§2"e§.§6"X§)
               {
                  §<!Y§.gotoAndStop(this.§2"e§.§6"X§);
               }
               else
               {
                  §<!Y§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §3#o§() : void
      {
         if(§9=§.§2#p§(§9=§.§1H§))
         {
            if(!§0#G§ && !isMe && this.§2"e§.§'#%§)
            {
               if(!this.§]$"§)
               {
                  this.§]$"§ = new §!"f§.§##?§("ButtonChallenge")();
                  this.§]$"§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
                  addChild(this.§]$"§);
               }
               this.§]$"§.visible = true;
               this.§]$"§.y = 22;
               this.§]$"§.x = 59;
               if(§0#U§ && this.contains(§0#U§.mAssetHolder))
               {
                  §0#U§.mAssetHolder.visible = false;
               }
               this.§`!!§.txtScore.visible = false;
               this.§`!!§.txtRank.visible = false;
               if(!this.§"!$§)
               {
                  this.§"!$§ = new §9!e§();
                  addChild(this.§"!$§.mAssetHolder);
                  this.§"!$§.§+#Z§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
               }
               this.§"!$§.§+#Z§.visible = true;
            }
            else if(this.§]$"§)
            {
               this.§]$"§.visible = false;
               if(§0#U§ && this.contains(§0#U§.mAssetHolder))
               {
                  §0#U§.mAssetHolder.visible = true;
               }
               this.§`!!§.txtScore.visible = true;
               this.§"!$§.§+#Z§.visible = false;
            }
            else
            {
               this.§`!!§.txtScore.visible = true;
            }
         }
      }
      
      private function §7"Q§() : void
      {
         if(this.§"!$§)
         {
            setChildIndex(this.§"!$§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function §]!F§(param1:int) : Number
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
         if(§0#G§)
         {
            param1 = false;
         }
         §0#U§.setCanSendGift(param1,param2);
      }
      
      private function § !S§(param1:Event) : void
      {
         this.§`!!§.btnBrag.removeEventListener(MouseEvent.CLICK,this.§ !S§);
         this.§@#9§(true);
         dispatchEvent(new §=Z§(§=Z§.BRAG,this,true));
         this.§+#-§ = new Timer(1000);
         this.§+#-§.addEventListener(TimerEvent.TIMER,this.§+#d§);
         this.§+#-§.start();
      }
      
      private function §,#u§(param1:String) : void
      {
      }
      
      private function §0"D§(param1:String) : void
      {
         if(param1 == this.§2"e§.userId)
         {
            this.§@#9§(false);
            this.§`!!§.btnBrag.visible = false;
            this.§%"Q§ = new §!"f§.§##?§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§%"Q§.x = this.§`!!§.btnBrag.x + 30;
            this.§%"Q§.y = this.§`!!§.btnBrag.y + 8;
            addChildAt(this.§%"Q§,numChildren - 1);
            this.§%"Q§.addFrameScript(this.§%"Q§.totalFrames - 1,this.§,"5§);
            this.§%"Q§.play();
         }
      }
      
      private function §,"5§() : void
      {
         if(this.§%"Q§)
         {
            this.§%"Q§.stop();
            removeChild(this.§%"Q§);
            this.§%"Q§ = null;
         }
      }
      
      private function §%"$§(param1:String) : void
      {
         if(param1 == this.§2"e§.userId)
         {
            this.§@#9§(false);
            this.§`!!§.btnBrag.visible = true;
            this.§2"e§.beaten = true;
         }
      }
      
      private function §+#d§(param1:TimerEvent) : void
      {
         this.§+!M§();
      }
      
      private function §+!M§() : void
      {
         if(this.§+#-§)
         {
            this.§+#-§.stop();
            this.§+#-§.removeEventListener(TimerEvent.TIMER,this.§+#d§);
            this.§+#-§ = null;
            this.§`!!§.btnBrag.addEventListener(MouseEvent.CLICK,this.§ !S§);
         }
         if(this.§>"w§)
         {
            this.§>"w§.stop();
            this.§>"w§.removeEventListener(TimerEvent.TIMER,this.§+#d§);
            this.§>"w§ = null;
            this.§]$"§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
            this.§"!$§.§+#Z§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
         }
      }
      
      private function §@#9§(param1:Boolean) : void
      {
         if(param1)
         {
            §^!K§.addCallback("bragRequestReceived",this.§,#u§);
            §^!K§.addCallback("bragCompleted",this.§0"D§);
            §^!K§.addCallback("bragCancelled",this.§%"$§);
            §^!K§.addCallback("challengeCancelled",this.§-z§);
         }
         else
         {
            §^!K§.§,"i§("bragRequestReceived",this.§,#u§);
            §^!K§.§,"i§("bragCompleted",this.§0"D§);
            §^!K§.§,"i§("bragCancelled",this.§%"$§);
            §^!K§.§,"i§("challengeCancelled",this.§-z§);
         }
      }
      
      private function §^"u§() : void
      {
         this.§9#=§ = new Sprite();
         this.§9#=§.x = this.§`!!§.mcFeather.x;
         this.§9#=§.y = this.§`!!§.mcFeather.y;
         this.§9#=§.graphics.beginFill(0);
         this.§9#=§.graphics.drawRect(0,0,this.§`!!§.mcFeather.width,this.§`!!§.mcFeather.height);
         this.§9#=§.graphics.endFill();
         this.§`!!§.addChild(this.§9#=§);
         this.§`!!§.mcFeather.mask = this.§9#=§;
      }
      
      public function get §2"e§() : §@#P§
      {
         return data as §@#P§;
      }
      
      private function §-$=§(param1:MouseEvent) : void
      {
         this.§]$"§.removeEventListener(MouseEvent.CLICK,this.§-$=§);
         this.§"!$§.§+#Z§.removeEventListener(MouseEvent.CLICK,this.§-$=§);
         this.§@#9§(true);
         dispatchEvent(new §=Z§(§=Z§.§1d§,this.data,true));
         this.§>"w§ = new Timer(1000);
         this.§>"w§.addEventListener(TimerEvent.TIMER,this.§+#d§);
         this.§>"w§.start();
      }
      
      private function §-z§(param1:String) : void
      {
         if(this.§2"e§ && param1 == this.§2"e§.userId)
         {
            this.§@#9§(false);
            this.§3#o§();
         }
      }
   }
}
