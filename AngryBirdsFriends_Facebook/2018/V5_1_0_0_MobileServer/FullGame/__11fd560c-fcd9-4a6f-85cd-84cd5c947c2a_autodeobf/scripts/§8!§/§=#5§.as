package §8!§
{
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §2G§.§9=§;
   import §[#[§.§=#Q§;
   import §`!e§.§=Z§;
   import §`7§.§!"b§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=#5§ extends §2$-§ implements §[g§
   {
       
      
      private var §`!!§:MovieClip;
      
      private var §]$"§:SimpleButton;
      
      private var §"!$§:§9!e§;
      
      private var §>"w§:Timer;
      
      public function §=#5§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§`!!§.mcCrown.stop();
         addLeagueIcon();
         this.§+!M§();
         tabChildren = false;
      }
      
      override public function set data(param1:§4O§) : void
      {
         super.data = param1;
         this.§+!M§();
      }
      
      override public function update() : void
      {
         if(!this.§8#U§)
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
         updatePhoto();
         §=#Q§.§0$,§(this.§`!!§.txtName,this.§8#U§.userName || "",§`"6§);
         if(this.§8#U§.rank <= 3 && this.§8#U§.§6"D§ > 0)
         {
            this.§`!!§.mcCrown.visible = true;
            this.§`!!§.txtRank.visible = false;
            this.§`!!§.mcCrown.gotoAndStop(this.§8#U§.rank);
         }
         else
         {
            this.§`!!§.mcCrown.visible = false;
            this.§`!!§.txtRank.visible = true;
            §=#Q§.§0$,§(this.§`!!§.txtRank,this.§8#U§.rank.toString() || "");
         }
         this.§`!!§.txtScore.text = §!"b§.§@]§(this.§8#U§.§6"D§) || "0";
         if(this.§8#U§.§6"D§ > 0)
         {
            this.§`!!§.txtCoins.visible = true;
            this.§`!!§.CoinsBG.visible = true;
            this.§`!!§.mcCoin.visible = true;
            this.§`!!§.txtCoins.text = this.§8#U§.§7!L§ > 0 ? "+" + this.§8#U§.§7!L§ : this.§8#U§.§7!L§;
         }
         else
         {
            this.§`!!§.mcCoin.visible = false;
            this.§`!!§.CoinsBG.visible = false;
            this.§`!!§.txtCoins.visible = false;
            this.§`!!§.txtCoins.text = "0";
         }
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
         if(!§0#G§ && §2#s§.§6!§.active)
         {
            if(this.§8#U§.§6!3§ > 0)
            {
               §<!Y§.visible = false;
               §1"$§.visible = true;
               §1"$§.txtRakning.text = this.§8#U§.§6!3§.toString();
            }
            else
            {
               §<!Y§.visible = true;
               §1"$§.visible = false;
               if(this.§8#U§.§6"X§ && §=#Q§.§9#H§(§<!Y§,this.§8#U§.§6"X§))
               {
                  §<!Y§.gotoAndStop(this.§8#U§.§6"X§);
               }
               else
               {
                  §<!Y§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§0#G§)
         {
            param1 = false;
         }
         §0#U§.setCanSendGift(param1,param2);
      }
      
      public function get §8#U§() : §5$4§
      {
         return data as §5$4§;
      }
      
      protected function §3#o§() : void
      {
         if(§9=§.§2#p§(§9=§.§1H§))
         {
            if(!§0#G§ && !isMe && this.§8#U§.§'#%§)
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
      
      private function §-$=§(param1:MouseEvent) : void
      {
         if(!this.§>"w§)
         {
            this.§]$"§.removeEventListener(MouseEvent.CLICK,this.§-$=§);
            this.§"!$§.§+#Z§.removeEventListener(MouseEvent.CLICK,this.§-$=§);
            this.§@#9§(true);
            dispatchEvent(new §=Z§(§=Z§.§1d§,this.data,true));
            this.§>"w§ = new Timer(2000);
            this.§>"w§.addEventListener(TimerEvent.TIMER,this.§+#d§);
            this.§>"w§.start();
         }
      }
      
      private function §!?§(param1:String) : void
      {
         if(this.§8#U§ && param1 == this.§8#U§.userId)
         {
            this.§@#9§(false);
            this.§]$"§.visible = false;
            this.§"!$§.§+#Z§.visible = false;
         }
      }
      
      private function §-z§(param1:String) : void
      {
         if(this.§8#U§ && param1 == this.§8#U§.userId)
         {
            this.§@#9§(false);
            this.§]$"§.visible = true;
            this.§"!$§.§+#Z§.visible = true;
         }
      }
      
      private function §@#9§(param1:Boolean) : void
      {
         if(param1)
         {
            §^!K§.addCallback("challengeSentToUser",this.§!?§);
            §^!K§.addCallback("challengeCancelled",this.§-z§);
         }
         else
         {
            §^!K§.§,"i§("challengeSentToUser",this.§!?§);
            §^!K§.§,"i§("challengeCancelled",this.§-z§);
         }
      }
      
      private function §+#d§(param1:TimerEvent) : void
      {
         this.§+!M§();
      }
      
      private function §+!M§() : void
      {
         if(this.§>"w§)
         {
            this.§>"w§.stop();
            this.§>"w§.removeEventListener(TimerEvent.TIMER,this.§+#d§);
            this.§>"w§ = null;
            this.§]$"§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
            this.§"!$§.§+#Z§.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
         }
      }
   }
}
