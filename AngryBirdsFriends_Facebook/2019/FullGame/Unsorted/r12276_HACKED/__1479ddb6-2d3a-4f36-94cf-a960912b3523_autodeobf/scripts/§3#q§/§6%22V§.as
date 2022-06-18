package §3#q§
{
   import §!!H§.§ $4§;
   import §2E§.§,!8§;
   import §8#^§.§-B§;
   import §>#Y§.§!#?§;
   import §>#Y§.§#!&§;
   import §>#Y§.§1N§;
   import §]!4§.§=#c§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6"V§ extends §8#>§ implements §8#'§
   {
       
      
      private var §'!L§:MovieClip;
      
      private var §`#'§:SimpleButton;
      
      private var §"#d§:§7"R§;
      
      private var §[%§:Timer;
      
      public function §6"V§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§'!L§.mcCrown.stop();
         addLeagueIcon();
         this.§=q§();
         tabChildren = false;
      }
      
      override public function set data(param1:§1N§) : void
      {
         super.data = param1;
         this.§=q§();
      }
      
      override public function update() : void
      {
         if(!this.§@#1§)
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
         updatePhoto();
         § $4§.§'#d§(this.§'!L§.txtName,this.§@#1§.userName || "",§ "7§);
         if(this.§@#1§.rank <= 3 && this.§@#1§.§<"A§ > 0)
         {
            this.§'!L§.mcCrown.visible = true;
            this.§'!L§.txtRank.visible = false;
            this.§'!L§.mcCrown.gotoAndStop(this.§@#1§.rank);
         }
         else
         {
            this.§'!L§.mcCrown.visible = false;
            this.§'!L§.txtRank.visible = true;
            § $4§.§'#d§(this.§'!L§.txtRank,this.§@#1§.rank.toString() || "");
         }
         this.§'!L§.txtScore.text = §,!8§.§1"h§(this.§@#1§.§<"A§) || "0";
         if(this.§@#1§.§<"A§ > 0)
         {
            this.§'!L§.txtCoins.visible = true;
            this.§'!L§.CoinsBG.visible = true;
            this.§'!L§.mcCoin.visible = true;
            this.§'!L§.txtCoins.text = this.§@#1§.§^$#§ > 0 ? "+" + this.§@#1§.§^$#§ : this.§@#1§.§^$#§;
         }
         else
         {
            this.§'!L§.mcCoin.visible = false;
            this.§'!L§.CoinsBG.visible = false;
            this.§'!L§.txtCoins.visible = false;
            this.§'!L§.txtCoins.text = "0";
         }
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
         if(!§ $1§ && §?#,§.§3"1§.active)
         {
            if(this.§@#1§.leagueStars > 0)
            {
               §7!S§.visible = false;
               §&"T§.visible = true;
               §&"T§.txtRakning.text = this.§@#1§.leagueStars.toString();
            }
            else
            {
               §7!S§.visible = true;
               §&"T§.visible = false;
               if(this.§@#1§.§=4§ && § $4§.§6#J§(§7!S§,this.§@#1§.§=4§))
               {
                  §7!S§.gotoAndStop(this.§@#1§.§=4§);
               }
               else
               {
                  §7!S§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§ $1§)
         {
            param1 = false;
         }
         §,^§.setCanSendGift(param1,param2);
      }
      
      public function get §@#1§() : §#!&§
      {
         return data as §#!&§;
      }
      
      protected function §3!h§() : void
      {
         if(§!#?§.§]!2§(§!#?§.§1#E§))
         {
            if(!§ $1§ && !isMe && this.§@#1§.§^"%§)
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
      
      private function §&#X§(param1:MouseEvent) : void
      {
         if(!this.§[%§)
         {
            this.§`#'§.removeEventListener(MouseEvent.CLICK,this.§&#X§);
            this.§"#d§.§'!"§.removeEventListener(MouseEvent.CLICK,this.§&#X§);
            this.§@"g§(true);
            dispatchEvent(new §-B§(§-B§.§!# §,this.data,true));
            this.§[%§ = new Timer(2000);
            this.§[%§.addEventListener(TimerEvent.TIMER,this.§,"R§);
            this.§[%§.start();
         }
      }
      
      private function §;Q§(param1:String) : void
      {
         if(this.§@#1§ && param1 == this.§@#1§.userId)
         {
            this.§@"g§(false);
            this.§`#'§.visible = false;
            this.§"#d§.§'!"§.visible = false;
         }
      }
      
      private function §6T§(param1:String) : void
      {
         if(this.§@#1§ && param1 == this.§@#1§.userId)
         {
            this.§@"g§(false);
            this.§`#'§.visible = true;
            this.§"#d§.§'!"§.visible = true;
         }
      }
      
      private function §@"g§(param1:Boolean) : void
      {
         if(param1)
         {
            §=#c§.addCallback("challengeSentToUser",this.§;Q§);
            §=#c§.addCallback("challengeCancelled",this.§6T§);
         }
         else
         {
            §=#c§.§`$ §("challengeSentToUser",this.§;Q§);
            §=#c§.§`$ §("challengeCancelled",this.§6T§);
         }
      }
      
      private function §,"R§(param1:TimerEvent) : void
      {
         this.§=q§();
      }
      
      private function §=q§() : void
      {
         if(this.§[%§)
         {
            this.§[%§.stop();
            this.§[%§.removeEventListener(TimerEvent.TIMER,this.§,"R§);
            this.§[%§ = null;
            this.§`#'§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
            this.§"#d§.§'!"§.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
         }
      }
   }
}
