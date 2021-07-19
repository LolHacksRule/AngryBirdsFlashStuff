package §2!X§
{
   import §%$!§.§0"F§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §+"%§.§6X§;
   import §1!@§.§&#a§;
   import §7g§.§4!q§;
   import §9!s§.§!#d§;
   import §>!#§.§9#a§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2"C§ extends §5$<§ implements §;z§
   {
       
      
      private var §["h§:MovieClip;
      
      private var §;#R§:SimpleButton;
      
      private var § #c§:§>"Y§;
      
      private var §]+§:Timer;
      
      public function §2"C§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§["h§.mcCrown.stop();
         addLeagueIcon();
         this.§9!Y§();
         tabChildren = false;
      }
      
      override public function set data(param1:§9$6§) : void
      {
         super.data = param1;
         this.§9!Y§();
      }
      
      override public function update() : void
      {
         if(!this.§0#>§)
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
         updatePhoto();
         §&#a§.§^E§(this.§["h§.txtName,this.§0#>§.userName || "",§2#0§);
         if(this.§0#>§.rank <= 3 && this.§0#>§.§[Q§ > 0)
         {
            this.§["h§.mcCrown.visible = true;
            this.§["h§.txtRank.visible = false;
            this.§["h§.mcCrown.gotoAndStop(this.§0#>§.rank);
         }
         else
         {
            this.§["h§.mcCrown.visible = false;
            this.§["h§.txtRank.visible = true;
            §&#a§.§^E§(this.§["h§.txtRank,this.§0#>§.rank.toString() || "");
         }
         this.§["h§.txtScore.text = §9#a§.§^#&§(this.§0#>§.§[Q§) || "0";
         if(this.§0#>§.§[Q§ > 0)
         {
            this.§["h§.txtCoins.visible = true;
            this.§["h§.CoinsBG.visible = true;
            this.§["h§.mcCoin.visible = true;
            this.§["h§.txtCoins.text = this.§0#>§.§^#E§ > 0 ? "+" + this.§0#>§.§^#E§ : this.§0#>§.§^#E§;
         }
         else
         {
            this.§["h§.mcCoin.visible = false;
            this.§["h§.CoinsBG.visible = false;
            this.§["h§.txtCoins.visible = false;
            this.§["h§.txtCoins.text = "0";
         }
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
         if(!§>$,§ && §4!q§.§3!]§.active)
         {
            if(this.§0#>§.§8U§ > 0)
            {
               §[#3§.visible = false;
               §7#-§.visible = true;
               §7#-§.txtRakning.text = this.§0#>§.§8U§.toString();
            }
            else
            {
               §[#3§.visible = true;
               §7#-§.visible = false;
               if(this.§0#>§.§+"t§ && §&#a§.§,!T§(§[#3§,this.§0#>§.§+"t§))
               {
                  §[#3§.gotoAndStop(this.§0#>§.§+"t§);
               }
               else
               {
                  §[#3§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§>$,§)
         {
            param1 = false;
         }
         §,!X§.setCanSendGift(param1,param2);
      }
      
      public function get §0#>§() : §8!t§
      {
         return data as §8!t§;
      }
      
      protected function §""c§() : void
      {
         if(§0"F§.§7#"§(§0"F§.§0i§))
         {
            if(!§>$,§ && !isMe && this.§0#>§.§[!Y§)
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
      
      private function §^#b§(param1:String) : void
      {
         if(this.§0#>§ && param1 == this.§0#>§.userId)
         {
            this.§<!J§(false);
            this.§;#R§.visible = false;
            this.§ #c§.§=";§.visible = false;
         }
      }
      
      private function §;$#§(param1:String) : void
      {
         if(this.§0#>§ && param1 == this.§0#>§.userId)
         {
            this.§<!J§(false);
            this.§;#R§.visible = true;
            this.§ #c§.§=";§.visible = true;
         }
      }
      
      private function §<!J§(param1:Boolean) : void
      {
         if(param1)
         {
            §6X§.addCallback("challengeSentToUser",this.§^#b§);
            §6X§.addCallback("challengeCancelled",this.§;$#§);
         }
         else
         {
            §6X§.§5!3§("challengeSentToUser",this.§^#b§);
            §6X§.§5!3§("challengeCancelled",this.§;$#§);
         }
      }
      
      private function §1"A§(param1:TimerEvent) : void
      {
         this.§9!Y§();
      }
      
      private function §9!Y§() : void
      {
         if(this.§]+§)
         {
            this.§]+§.stop();
            this.§]+§.removeEventListener(TimerEvent.TIMER,this.§1"A§);
            this.§]+§ = null;
            this.§;#R§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
            this.§ #c§.§=";§.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
         }
      }
   }
}
