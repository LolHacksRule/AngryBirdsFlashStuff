package §1#=§
{
   import §&"J§.§%"E§;
   import §&"J§.§3!3§;
   import §&"J§.§9N§;
   import §6!0§.§ "8§;
   import §6V§.§^">§;
   import §@!n§.§`$<§;
   import §[0§.§;$-§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3!7§ extends §%#K§ implements §&#e§
   {
       
      
      private var §#$ §:MovieClip;
      
      private var §[z§:SimpleButton;
      
      private var §5#3§:§?1§;
      
      private var §-!w§:Timer;
      
      public function §3!7§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.§#$ §.mcCrown.stop();
         addLeagueIcon();
         this.§2"K§();
         tabChildren = false;
      }
      
      override public function set data(param1:§3!3§) : void
      {
         super.data = param1;
         this.§2"K§();
      }
      
      override public function update() : void
      {
         if(!this.§2" §)
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
         updatePhoto();
         §@!g§.§["1§(this.§#$ §.txtName,this.§2" §.userName || "",§>"+§);
         if(this.§2" §.rank <= 3 && this.§2" §.§`#e§ > 0)
         {
            this.§#$ §.mcCrown.visible = true;
            this.§#$ §.txtRank.visible = false;
            this.§#$ §.mcCrown.gotoAndStop(this.§2" §.rank);
         }
         else
         {
            this.§#$ §.mcCrown.visible = false;
            this.§#$ §.txtRank.visible = true;
            §@!g§.§["1§(this.§#$ §.txtRank,this.§2" §.rank.toString() || "");
         }
         this.§#$ §.txtScore.text = §^">§.§?"Y§(this.§2" §.§`#e§) || "0";
         if(this.§2" §.§`#e§ > 0)
         {
            this.§#$ §.txtCoins.visible = true;
            this.§#$ §.CoinsBG.visible = true;
            this.§#$ §.mcCoin.visible = true;
            this.§#$ §.txtCoins.text = this.§2" §.§+!K§ > 0 ? "+" + this.§2" §.§+!K§ : this.§2" §.§+!K§;
         }
         else
         {
            this.§#$ §.mcCoin.visible = false;
            this.§#$ §.CoinsBG.visible = false;
            this.§#$ §.txtCoins.visible = false;
            this.§#$ §.txtCoins.text = "0";
         }
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
         if(!§#$1§ && §;$-§.§ "D§.active)
         {
            if(this.§2" §.§8">§ > 0)
            {
               §8!f§.visible = false;
               §0#@§.visible = true;
               §0#@§.txtRakning.text = this.§2" §.§8">§.toString();
            }
            else
            {
               §8!f§.visible = true;
               §0#@§.visible = false;
               if(this.§2" §.§5L§ && §@!g§.§<T§(§8!f§,this.§2" §.§5L§))
               {
                  §8!f§.gotoAndStop(this.§2" §.§5L§);
               }
               else
               {
                  §8!f§.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(§#$1§)
         {
            param1 = false;
         }
         §]n§.setCanSendGift(param1,param2);
      }
      
      public function get §2" §() : §%"E§
      {
         return data as §%"E§;
      }
      
      protected function §,#m§() : void
      {
         if(§9N§.§^"?§(§9N§.§>^§))
         {
            if(!§#$1§ && !isMe && this.§2" §.§9!r§)
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
      
      private function §5$7§(param1:MouseEvent) : void
      {
         if(!this.§-!w§)
         {
            this.§[z§.removeEventListener(MouseEvent.CLICK,this.§5$7§);
            this.§5#3§.§>"4§.removeEventListener(MouseEvent.CLICK,this.§5$7§);
            this.§<H§(true);
            dispatchEvent(new §`$<§(§`$<§.§'$2§,this.data,true));
            this.§-!w§ = new Timer(2000);
            this.§-!w§.addEventListener(TimerEvent.TIMER,this.§ case§);
            this.§-!w§.start();
         }
      }
      
      private function §!"%§(param1:String) : void
      {
         if(this.§2" § && param1 == this.§2" §.userId)
         {
            this.§<H§(false);
            this.§[z§.visible = false;
            this.§5#3§.§>"4§.visible = false;
         }
      }
      
      private function §>T§(param1:String) : void
      {
         if(this.§2" § && param1 == this.§2" §.userId)
         {
            this.§<H§(false);
            this.§[z§.visible = true;
            this.§5#3§.§>"4§.visible = true;
         }
      }
      
      private function §<H§(param1:Boolean) : void
      {
         if(param1)
         {
            § "8§.addCallback("challengeSentToUser",this.§!"%§);
            § "8§.addCallback("challengeCancelled",this.§>T§);
         }
         else
         {
            § "8§.§+#R§("challengeSentToUser",this.§!"%§);
            § "8§.§+#R§("challengeCancelled",this.§>T§);
         }
      }
      
      private function § case§(param1:TimerEvent) : void
      {
         this.§2"K§();
      }
      
      private function §2"K§() : void
      {
         if(this.§-!w§)
         {
            this.§-!w§.stop();
            this.§-!w§.removeEventListener(TimerEvent.TIMER,this.§ case§);
            this.§-!w§ = null;
            this.§[z§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
            this.§5#3§.§>"4§.addEventListener(MouseEvent.CLICK,this.§5$7§,false,0,true);
         }
      }
   }
}
