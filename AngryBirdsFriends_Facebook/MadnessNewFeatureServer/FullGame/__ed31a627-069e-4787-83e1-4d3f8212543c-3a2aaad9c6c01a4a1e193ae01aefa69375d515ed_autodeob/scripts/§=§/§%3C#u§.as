package §=§#0
{
   import §!#C§.§0#;§;
   import §!#C§.§3" §;
   import §!#C§.§5H§;
   import §"!n§.§;"x§;
   import §##Z§.§<$2§;
   import §&!_§.§9#%§;
   import §?!]§.§6#k§;
   import §]C§.§ !+§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<#u§ extends § #i§ implements §0V§
   {
       
      
      private var §8"@§:MovieClip;
      
      private var §4#6§:SimpleButton;
      
      private var §2#T§:§`#H§;
      
      private var §="P§:Timer;
      
      public function §<#u§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§8"@§.mcCrown.stop();
         addLeagueIcon();
         this.§[! §();
         tabChildren = false;
      }
      
      override public function set data(param1:§0#;§) : void
      {
         super.data = param1;
         this.§[! §();
      }
      
      override public function update() : void
      {
         if(!this.§;#-§)
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
         updatePhoto();
         §;"x§.§+>§(this.§8"@§.txtName,this.§;#-§.userName || "",§4#I§);
         if(this.§;#-§.rank <= 3 && this.§;#-§.§ q§ > 0)
         {
            this.§8"@§.mcCrown.visible = true;
            this.§8"@§.txtRank.visible = false;
            this.§8"@§.mcCrown.gotoAndStop(this.§;#-§.rank);
         }
         else
         {
            this.§8"@§.mcCrown.visible = false;
            this.§8"@§.txtRank.visible = true;
            §;"x§.§+>§(this.§8"@§.txtRank,this.§;#-§.rank.toString() || "");
         }
         this.§8"@§.txtScore.text = §9#%§.§##W§(this.§;#-§.§ q§) || "0";
         if(this.§;#-§.§ q§ > 0)
         {
            this.§8"@§.txtCoins.visible = true;
            this.§8"@§.CoinsBG.visible = true;
            this.§8"@§.mcCoin.visible = true;
            this.§8"@§.txtCoins.text = this.§;#-§.§?#C§ > 0 ? "+" + this.§;#-§.§?#C§ : this.§;#-§.§?#C§;
         }
         else
         {
            this.§8"@§.mcCoin.visible = false;
            this.§8"@§.CoinsBG.visible = false;
            this.§8"@§.txtCoins.visible = false;
            this.§8"@§.txtCoins.text = "0";
         }
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
         if(!§6#O§ && §<$2§.§`"H§.active)
         {
            if(this.§;#-§.leagueStars > 0)
            {
               §'"X§.visible = false;
               §;#I§.visible = true;
               §;#I§.txtRakning.text = this.§;#-§.leagueStars.toString();
            }
            else
            {
               §'"X§.visible = true;
               §;#I§.visible = false;
               if(this.§;#-§.§]"t§ && §;"x§.§=!`§(§'"X§,this.§;#-§.§]"t§))
               {
                  §'"X§.gotoAndStop(this.§;#-§.§]"t§);
               }
               else
               {
                  §'"X§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§6#O§)
         {
            param1 = false;
         }
         §6-§.setCanSendGift(param1,param2);
      }
      
      public function get §;#-§() : §3" §
      {
         return data as §3" §;
      }
      
      protected function §;#"§() : void
      {
         if(§5H§.§^"M§(§5H§.§,"5§))
         {
            if(!§6#O§ && !isMe && this.§;#-§.§^!w§)
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
      
      private function §+!O§(param1:MouseEvent) : void
      {
         if(!this.§="P§)
         {
            this.§4#6§.removeEventListener(MouseEvent.CLICK,this.§+!O§);
            this.§2#T§.§?#c§.removeEventListener(MouseEvent.CLICK,this.§+!O§);
            this.§?"H§(true);
            dispatchEvent(new §6#k§(§6#k§.§4!x§,this.data,true));
            this.§="P§ = new Timer(2000);
            this.§="P§.addEventListener(TimerEvent.TIMER,this.§ A§);
            this.§="P§.start();
         }
      }
      
      private function §&!m§(param1:String) : void
      {
         if(this.§;#-§ && param1 == this.§;#-§.userId)
         {
            this.§?"H§(false);
            this.§4#6§.visible = false;
            this.§2#T§.§?#c§.visible = false;
         }
      }
      
      private function §0$1§(param1:String) : void
      {
         if(this.§;#-§ && param1 == this.§;#-§.userId)
         {
            this.§?"H§(false);
            this.§4#6§.visible = true;
            this.§2#T§.§?#c§.visible = true;
         }
      }
      
      private function §?"H§(param1:Boolean) : void
      {
         if(param1)
         {
            § !+§.addCallback("challengeSentToUser",this.§&!m§);
            § !+§.addCallback("challengeCancelled",this.§0$1§);
         }
         else
         {
            § !+§.§?!§("challengeSentToUser",this.§&!m§);
            § !+§.§?!§("challengeCancelled",this.§0$1§);
         }
      }
      
      private function § A§(param1:TimerEvent) : void
      {
         this.§[! §();
      }
      
      private function §[! §() : void
      {
         if(this.§="P§)
         {
            this.§="P§.stop();
            this.§="P§.removeEventListener(TimerEvent.TIMER,this.§ A§);
            this.§="P§ = null;
            this.§4#6§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
            this.§2#T§.§?#c§.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
         }
      }
   }
}
