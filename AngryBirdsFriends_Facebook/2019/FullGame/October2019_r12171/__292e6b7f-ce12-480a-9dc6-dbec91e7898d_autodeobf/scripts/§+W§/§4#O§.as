package §+W§
{
   import §#"4§.§6!B§;
   import §#$?§.§7!b§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§@§;
   import §7"X§.§2"R§;
   import §]#'§.§4"s§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §4#O§ extends §2!$§ implements §@#K§
   {
       
      
      private var §"#E§:MovieClip;
      
      private var §["Q§:SimpleButton;
      
      private var §%"y§:§9g§;
      
      private var §?!P§:Timer;
      
      public function §4#O§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§"#E§.mcCrown.stop();
         addLeagueIcon();
         this.§3E§();
         tabChildren = false;
      }
      
      override public function set data(param1:§0!u§) : void
      {
         super.data = param1;
         this.§3E§();
      }
      
      override public function update() : void
      {
         if(!this.§"C§)
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
         updatePhoto();
         §7"U§.§+$5§(this.§"#E§.txtName,this.§"C§.userName || "",§%!x§);
         if(this.§"C§.rank <= 3 && this.§"C§.§;#<§ > 0)
         {
            this.§"#E§.mcCrown.visible = true;
            this.§"#E§.txtRank.visible = false;
            this.§"#E§.mcCrown.gotoAndStop(this.§"C§.rank);
         }
         else
         {
            this.§"#E§.mcCrown.visible = false;
            this.§"#E§.txtRank.visible = true;
            §7"U§.§+$5§(this.§"#E§.txtRank,this.§"C§.rank.toString() || "");
         }
         this.§"#E§.txtScore.text = §6!B§.§^"O§(this.§"C§.§;#<§) || "0";
         if(this.§"C§.§;#<§ > 0)
         {
            this.§"#E§.txtCoins.visible = true;
            this.§"#E§.CoinsBG.visible = true;
            this.§"#E§.mcCoin.visible = true;
            this.§"#E§.txtCoins.text = this.§"C§.§4!,§ > 0 ? "+" + this.§"C§.§4!,§ : this.§"C§.§4!,§;
         }
         else
         {
            this.§"#E§.mcCoin.visible = false;
            this.§"#E§.CoinsBG.visible = false;
            this.§"#E§.txtCoins.visible = false;
            this.§"#E§.txtCoins.text = "0";
         }
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
         if(!§#"b§ && §4"s§.§+!,§.active)
         {
            if(this.§"C§.leagueStars > 0)
            {
               §"#7§.visible = false;
               §,!#§.visible = true;
               §,!#§.txtRakning.text = this.§"C§.leagueStars.toString();
            }
            else
            {
               §"#7§.visible = true;
               §,!#§.visible = false;
               if(this.§"C§.§"!T§ && §7"U§.§+$@§(§"#7§,this.§"C§.§"!T§))
               {
                  §"#7§.gotoAndStop(this.§"C§.§"!T§);
               }
               else
               {
                  §"#7§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§#"b§)
         {
            param1 = false;
         }
         §;!#§.setCanSendGift(param1,param2);
      }
      
      public function get §"C§() : §2#9§
      {
         return data as §2#9§;
      }
      
      protected function §]#I§() : void
      {
         if(§@#5§.§=D§(§@#5§.§;##§))
         {
            if(!§#"b§ && !isMe && this.§"C§.§#!§)
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
      
      private function §##L§(param1:MouseEvent) : void
      {
         if(!this.§?!P§)
         {
            this.§["Q§.removeEventListener(MouseEvent.CLICK,this.§##L§);
            this.§%"y§.§,!%§.removeEventListener(MouseEvent.CLICK,this.§##L§);
            this.§1f§(true);
            dispatchEvent(new §2"R§(§2"R§.§'"F§,this.data,true));
            this.§?!P§ = new Timer(2000);
            this.§?!P§.addEventListener(TimerEvent.TIMER,this.§`7§);
            this.§?!P§.start();
         }
      }
      
      private function §>#>§(param1:String) : void
      {
         if(this.§"C§ && param1 == this.§"C§.userId)
         {
            this.§1f§(false);
            this.§["Q§.visible = false;
            this.§%"y§.§,!%§.visible = false;
         }
      }
      
      private function §5"h§(param1:String) : void
      {
         if(this.§"C§ && param1 == this.§"C§.userId)
         {
            this.§1f§(false);
            this.§["Q§.visible = true;
            this.§%"y§.§,!%§.visible = true;
         }
      }
      
      private function §1f§(param1:Boolean) : void
      {
         if(param1)
         {
            §7!b§.addCallback("challengeSentToUser",this.§>#>§);
            §7!b§.addCallback("challengeCancelled",this.§5"h§);
         }
         else
         {
            §7!b§.§&#&§("challengeSentToUser",this.§>#>§);
            §7!b§.§&#&§("challengeCancelled",this.§5"h§);
         }
      }
      
      private function §`7§(param1:TimerEvent) : void
      {
         this.§3E§();
      }
      
      private function §3E§() : void
      {
         if(this.§?!P§)
         {
            this.§?!P§.stop();
            this.§?!P§.removeEventListener(TimerEvent.TIMER,this.§`7§);
            this.§?!P§ = null;
            this.§["Q§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
            this.§%"y§.§,!%§.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
         }
      }
   }
}
