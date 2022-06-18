package §1#=§
{
   import §&"J§.§"!F§;
   import §&"J§.§3!3§;
   import §&"J§.§4"n§;
   import §&"J§.§9N§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §@!n§.§`$<§;
   import §[0§.§;$-§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2"_§ extends §%#K§ implements §&#e§
   {
       
      
      private var §#$ §:MovieClip;
      
      private var §[#X§:Sprite;
      
      private var §2$0§:MovieClip;
      
      private var §[z§:SimpleButton;
      
      private var §5#3§:§?1§;
      
      private var §#W§:Timer;
      
      private var §-!w§:Timer;
      
      public function §2"_§()
      {
         super();
         this.init();
      }
      
      private static function §;"W§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         addChild(this.§#$ § = new §+$#§.§["`§("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.§#$ §.mcBackground.stop();
         this.§?"C§();
         this.§#$ §.mcCrown.stop();
         this.§2"K§();
         this.§#$ §.btnBrag.addEventListener(MouseEvent.CLICK,this.§>"O§);
         addLeagueIcon();
      }
      
      override public function set data(param1:§3!3§) : void
      {
         super.data = param1;
         this.§2"K§();
         this.§3#f§();
      }
      
      override public function update() : void
      {
         if(!this.§^?§)
         {
            return;
         }
         var _loc1_:int = 1;
         if(isMe)
         {
            _loc1_ = 2;
         }
         else if(§#$1§)
         {
            _loc1_ = 3;
         }
         this.§#$ §.gotoAndStop(_loc1_);
         this.§#$ §.btnBrag.visible = this.§^?§.beaten == true && !(§!#A§.§>q§ as §-#+§).§'M§.§!"f§(this.§^?§.userId) && §"!F§.§ "D§.§#c§(this.§^?§.userId) && !§#$1§;
         updatePhoto();
         §@!g§.§["1§(this.§#$ §.txtName,this.§^?§.userName || "",§>"+§);
         this.§#$ §.mcBackground.gotoAndStop(!!this.§^?§.§8!-§ ? 2 : 1);
         this.§#$ §.mcFeather.visible = !this.§^?§.§8!-§;
         var _loc2_:Number = !!this.§^?§.§8!-§ ? Number(26) : Number(0);
         this.§#$ §.mcStar1.x = 61 + _loc2_;
         this.§#$ §.mcStar2.x = 75 + _loc2_;
         this.§#$ §.mcStar3.x = 89 + _loc2_;
         this.§#$ §.txtScore.x = 55 + _loc2_;
         if(this.§^?§.rank <= 3 && (this.§^?§.levelScore > 0 || this.§^?§.§5#e§ > 0))
         {
            this.§#$ §.mcCrown.visible = true;
            this.§#$ §.txtRank.visible = false;
            this.§#$ §.mcCrown.gotoAndStop(this.§^?§.rank);
         }
         else
         {
            this.§#$ §.mcCrown.visible = false;
            this.§#$ §.txtRank.visible = true;
            this.§#$ §.txtRank.text = this.§^?§.rank.toString() || "";
            §@!g§.§["1§(this.§#$ §.txtRank,this.§^?§.rank.toString() || "");
         }
         this.§[#X§.scaleX = this.§ #0§(this.§^?§.§5#e§);
         §@!g§.§["1§(this.§#$ §.txtScore,§;"W§(this.§^?§.levelScore) || "0");
         this.§#$ §.mcStar1.visible = this.§^?§.stars >= 1;
         this.§#$ §.mcStar2.visible = this.§^?§.stars >= 2;
         this.§#$ §.mcStar3.visible = this.§^?§.stars >= 3;
         §9#%§();
         §,"Q§();
         this.updateLeagueIcon();
         this.§,#m§();
         this.§<#y§();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§8!f§ || !§0#@§)
         {
            return;
         }
         if(!this.§^?§.§8!-§)
         {
            §8!f§.visible = false;
            §0#@§.visible = false;
            return;
         }
         if(!§#$1§ && §;$-§.§ "D§.active)
         {
            if(this.§^?§.§8">§ > 0)
            {
               §8!f§.visible = false;
               §0#@§.visible = true;
               §0#@§.txtRakning.text = this.§^?§.§8">§.toString();
            }
            else
            {
               §8!f§.visible = true;
               §0#@§.visible = false;
               if(this.§^?§.§5L§)
               {
                  §8!f§.gotoAndStop(this.§^?§.§5L§);
               }
               else
               {
                  §8!f§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function §,#m§() : void
      {
         if(§9N§.§^"?§(§9N§.§>^§))
         {
            if(!§#$1§ && !isMe && this.§^?§.§9!r§)
            {
               if(!this.§[z§)
               {
                  this.§[z§ = new §+$#§.§["`§("ButtonChallenge")();
                  this.§[z§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
                  addChild(this.§[z§);
               }
               this.§[z§.visible = true;
               this.§[z§.y = 22;
               this.§[z§.x = 59;
               if(§]n§ && this.contains(§]n§.mAssetHolder))
               {
                  §]n§.mAssetHolder.visible = false;
               }
               this.§#$ §.txtScore.visible = false;
               this.§#$ §.txtRank.visible = false;
               if(!this.§5#3§)
               {
                  this.§5#3§ = new §?1§();
                  addChild(this.§5#3§.mAssetHolder);
                  this.§5#3§.§>"4§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
               }
               this.§5#3§.§>"4§.visible = true;
            }
            else if(this.§[z§)
            {
               this.§[z§.visible = false;
               if(§]n§ && this.contains(§]n§.mAssetHolder))
               {
                  §]n§.mAssetHolder.visible = true;
               }
               this.§#$ §.txtScore.visible = true;
               this.§5#3§.§>"4§.visible = false;
            }
            else
            {
               this.§#$ §.txtScore.visible = true;
            }
         }
      }
      
      private function §<#y§() : void
      {
         if(this.§5#3§)
         {
            setChildIndex(this.§5#3§.mAssetHolder,numChildren - 1);
         }
      }
      
      private function § #0§(param1:int) : Number
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
         if(§#$1§)
         {
            param1 = false;
         }
         §]n§.setCanSendGift(param1,param2);
      }
      
      private function §>"O§(param1:Event) : void
      {
         this.§#$ §.btnBrag.removeEventListener(MouseEvent.CLICK,this.§>"O§);
         this.§<H§(true);
         dispatchEvent(new §`$<§(§`$<§.BRAG,this,true));
         this.§#W§ = new Timer(1000);
         this.§#W§.addEventListener(TimerEvent.TIMER,this.§ case§);
         this.§#W§.start();
      }
      
      private function §[#3§(param1:String) : void
      {
      }
      
      private function §>n§(param1:String) : void
      {
         if(param1 == this.§^?§.userId)
         {
            this.§<H§(false);
            this.§#$ §.btnBrag.visible = false;
            this.§2$0§ = new §+$#§.§["`§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.§2$0§.x = this.§#$ §.btnBrag.x + 30;
            this.§2$0§.y = this.§#$ §.btnBrag.y + 8;
            addChildAt(this.§2$0§,numChildren - 1);
            this.§2$0§.addFrameScript(this.§2$0§.totalFrames - 1,this.§3#f§);
            this.§2$0§.play();
         }
      }
      
      private function §3#f§() : void
      {
         if(this.§2$0§)
         {
            this.§2$0§.stop();
            removeChild(this.§2$0§);
            this.§2$0§ = null;
         }
      }
      
      private function § "E§(param1:String) : void
      {
         if(param1 == this.§^?§.userId)
         {
            this.§<H§(false);
            this.§#$ §.btnBrag.visible = true;
            this.§^?§.beaten = true;
         }
      }
      
      private function § case§(param1:TimerEvent) : void
      {
         this.§2"K§();
      }
      
      private function §2"K§() : void
      {
         if(this.§#W§)
         {
            this.§#W§.stop();
            this.§#W§.removeEventListener(TimerEvent.TIMER,this.§ case§);
            this.§#W§ = null;
            this.§#$ §.btnBrag.addEventListener(MouseEvent.CLICK,this.§>"O§);
         }
         if(this.§-!w§)
         {
            this.§-!w§.stop();
            this.§-!w§.removeEventListener(TimerEvent.TIMER,this.§ case§);
            this.§-!w§ = null;
            this.§[z§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
            this.§5#3§.§>"4§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
         }
      }
      
      private function §<H§(param1:Boolean) : void
      {
         if(param1)
         {
            § "8§.addCallback("bragRequestReceived",this.§[#3§);
            § "8§.addCallback("bragCompleted",this.§>n§);
            § "8§.addCallback("bragCancelled",this.§ "E§);
            § "8§.addCallback("challengeCancelled",this.§>T§);
         }
         else
         {
            § "8§.§+#R§("bragRequestReceived",this.§[#3§);
            § "8§.§+#R§("bragCompleted",this.§>n§);
            § "8§.§+#R§("bragCancelled",this.§ "E§);
            § "8§.§+#R§("challengeCancelled",this.§>T§);
         }
      }
      
      private function §?"C§() : void
      {
         this.§[#X§ = new Sprite();
         this.§[#X§.x = this.§#$ §.mcFeather.x;
         this.§[#X§.y = this.§#$ §.mcFeather.y;
         this.§[#X§.graphics.beginFill(0);
         this.§[#X§.graphics.drawRect(0,0,this.§#$ §.mcFeather.width,this.§#$ §.mcFeather.height);
         this.§[#X§.graphics.endFill();
         this.§#$ §.addChild(this.§[#X§);
         this.§#$ §.mcFeather.mask = this.§[#X§;
      }
      
      public function get §^?§() : §4"n§
      {
         return data as §4"n§;
      }
      
      private function §5$7§(param1:MouseEvent) : void
      {
         this.§[z§.removeEventListener(MouseEvent.CLICK,this.§5$7§);
         this.§5#3§.§>"4§.removeEventListener(MouseEvent.CLICK,this.§5$7§);
         this.§<H§(true);
         dispatchEvent(new §`$<§(§`$<§.§'$2§,this.data,true));
         this.§-!w§ = new Timer(1000);
         this.§-!w§.addEventListener(TimerEvent.TIMER,this.§ case§);
         this.§-!w§.start();
      }
      
      private function §>T§(param1:String) : void
      {
         if(this.§^?§ && param1 == this.§^?§.userId)
         {
            this.§<H§(false);
            this.§,#m§();
         }
      }
   }
}
