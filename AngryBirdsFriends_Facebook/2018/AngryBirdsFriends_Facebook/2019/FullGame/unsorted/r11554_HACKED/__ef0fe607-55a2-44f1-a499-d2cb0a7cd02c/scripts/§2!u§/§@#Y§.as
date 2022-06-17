package §2!u§
{
   import §"!>§.§'!x§;
   import §+#B§.§""D§;
   import §6!'§.§@#c§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §]"'§.§8!a§;
   import §]"'§.§[#!§;
   import §]"'§.§default§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §@#Y§ extends §^#h§ implements §'!9§
   {
       
      
      private var §#"r§:MovieClip;
      
      private var §4"?§:SimpleButton;
      
      private var §<!<§:§9_§;
      
      private var §=!R§:Timer;
      
      public function §@#Y§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§#"r§.mcCrown.stop();
         addLeagueIcon();
         this.§6_§();
         tabChildren = false;
      }
      
      override public function set data(param1:§8!a§) : void
      {
         super.data = param1;
         this.§6_§();
      }
      
      override public function update() : void
      {
         if(!this.§ 3§)
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
         updatePhoto();
         §&!b§.§9G§(this.§#"r§.txtName,this.§ 3§.userName || "",§"!!§);
         if(this.§ 3§.rank <= 3 && this.§ 3§.§9!K§ > 0)
         {
            this.§#"r§.mcCrown.visible = true;
            this.§#"r§.txtRank.visible = false;
            this.§#"r§.mcCrown.gotoAndStop(this.§ 3§.rank);
         }
         else
         {
            this.§#"r§.mcCrown.visible = false;
            this.§#"r§.txtRank.visible = true;
            §&!b§.§9G§(this.§#"r§.txtRank,this.§ 3§.rank.toString() || "");
         }
         this.§#"r§.txtScore.text = §""D§.§"k§(this.§ 3§.§9!K§) || "0";
         if(this.§ 3§.§9!K§ > 0)
         {
            this.§#"r§.txtCoins.visible = true;
            this.§#"r§.CoinsBG.visible = true;
            this.§#"r§.mcCoin.visible = true;
            this.§#"r§.txtCoins.text = this.§ 3§.§@$7§ > 0 ? "+" + this.§ 3§.§@$7§ : this.§ 3§.§@$7§;
         }
         else
         {
            this.§#"r§.mcCoin.visible = false;
            this.§#"r§.CoinsBG.visible = false;
            this.§#"r§.txtCoins.visible = false;
            this.§#"r§.txtCoins.text = "0";
         }
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
         if(!§[!F§ && §@#c§.§?q§.active)
         {
            if(this.§ 3§.§&X§ > 0)
            {
               §%#T§.visible = false;
               §!"#§.visible = true;
               §!"#§.txtRakning.text = this.§ 3§.§&X§.toString();
            }
            else
            {
               §%#T§.visible = true;
               §!"#§.visible = false;
               if(this.§ 3§.§2# § && §&!b§.§9!<§(§%#T§,this.§ 3§.§2# §))
               {
                  §%#T§.gotoAndStop(this.§ 3§.§2# §);
               }
               else
               {
                  §%#T§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§[!F§)
         {
            param1 = false;
         }
         §^!W§.setCanSendGift(param1,param2);
      }
      
      public function get § 3§() : §default§
      {
         return data as §default§;
      }
      
      protected function §3"p§() : void
      {
         if(§[#!§.§1!'§(§[#!§.§^"S§))
         {
            if(!§[!F§ && !isMe && this.§ 3§.§5$6§)
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
      
      private function § !4§(param1:MouseEvent) : void
      {
         if(!this.§=!R§)
         {
            this.§4"?§.removeEventListener(MouseEvent.CLICK,this.§ !4§);
            this.§<!<§.§`$7§.removeEventListener(MouseEvent.CLICK,this.§ !4§);
            this.§`#T§(true);
            dispatchEvent(new §'!x§(§'!x§.§[R§,this.data,true));
            this.§=!R§ = new Timer(2000);
            this.§=!R§.addEventListener(TimerEvent.TIMER,this.§^#p§);
            this.§=!R§.start();
         }
      }
      
      private function §;$E§(param1:String) : void
      {
         if(this.§ 3§ && param1 == this.§ 3§.userId)
         {
            this.§`#T§(false);
            this.§4"?§.visible = false;
            this.§<!<§.§`$7§.visible = false;
         }
      }
      
      private function §>>§(param1:String) : void
      {
         if(this.§ 3§ && param1 == this.§ 3§.userId)
         {
            this.§`#T§(false);
            this.§4"?§.visible = true;
            this.§<!<§.§`$7§.visible = true;
         }
      }
      
      private function §`#T§(param1:Boolean) : void
      {
         if(param1)
         {
            §@"F§.addCallback("challengeSentToUser",this.§;$E§);
            §@"F§.addCallback("challengeCancelled",this.§>>§);
         }
         else
         {
            §@"F§.§=F§("challengeSentToUser",this.§;$E§);
            §@"F§.§=F§("challengeCancelled",this.§>>§);
         }
      }
      
      private function §^#p§(param1:TimerEvent) : void
      {
         this.§6_§();
      }
      
      private function §6_§() : void
      {
         if(this.§=!R§)
         {
            this.§=!R§.stop();
            this.§=!R§.removeEventListener(TimerEvent.TIMER,this.§^#p§);
            this.§=!R§ = null;
            this.§4"?§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
            this.§<!<§.§`$7§.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
         }
      }
   }
}
