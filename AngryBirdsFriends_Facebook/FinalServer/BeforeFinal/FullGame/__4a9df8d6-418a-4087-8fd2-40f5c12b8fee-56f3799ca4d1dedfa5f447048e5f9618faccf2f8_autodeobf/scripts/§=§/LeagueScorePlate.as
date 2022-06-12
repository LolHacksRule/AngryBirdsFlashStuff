package §=§#0
{
   import §!#C§.§[§;
   import §"!n§.§;"x§;
   import §##Z§.§<$2§;
   import §&!_§.§9#%§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §;#l§.§+#i§;
   import §>z§.§#"l§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import §[!o§.§4!F§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueScorePlate extends § #i§
   {
      
      private static var §'"a§:Object = {};
       
      
      private var §8"@§:MovieClip;
      
      private var § "s§:int;
      
      private var §]#n§:int;
      
      private var §]$7§:int;
      
      private var §6p§:int;
      
      private var §;"f§:int;
      
      public function LeagueScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§8"@§ = new §6$A§.§1!m§("LeagueScorePlate")();
         this.brandThePlate();
         addChild(this.§8"@§);
         this.§8"@§.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function brandThePlate() : void
      {
         this.§ "s§ = 2;
         this.§]#n§ = 2;
         this.§]$7§ = 1;
         this.§6p§ = 1;
         this.§;"f§ = 3;
         if(§7"L§.§`"H§.§0!a§() == §4!F§.§0#V§)
         {
            this.§]#n§ = 5;
            this.§6p§ = 4;
         }
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         if(this.isMe)
         {
            if(this.§1!+§.rank <= 3)
            {
               this.§8"@§.gotoAndStop(this.§]#n§);
            }
            else
            {
               this.§8"@§.gotoAndStop(this.§ "s§);
            }
            this.addEventListener(MouseEvent.CLICK,this.§'!>§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§'!>§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§1!+§.§ !2§)
            {
               this.§8"@§.gotoAndStop(this.§;"f§);
            }
            else if(this.§1!+§.rank <= 3)
            {
               this.§8"@§.gotoAndStop(this.§6p§);
            }
            else
            {
               this.§8"@§.gotoAndStop(this.§]$7§);
            }
         }
         this.§8"@§.mcCrown.visible = false;
         this.§8"@§.txtRank.text = this.§1!+§.rank.toString();
         this.§8"@§.txtRank.visible = this.§8"@§.txtRank.text != "0";
         if(this.§1!+§.§ !2§)
         {
            if(§7#j§ && §7#j§.parent == this)
            {
               removeChild(§7#j§);
               §7#j§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            §;"x§.§+>§(this.§8"@§.txtName,this.§1!+§.userName || "",§4#I§);
            this.§8"@§.txtScore.text = §9#%§.§##W§(this.§1!+§.§^"l§) || "0";
         }
         this.§8"@§.txtCoins.text = this.§1!+§.coins.toString();
         this.§8"@§.txtCoins.visible = this.§1!+§.coins > 0;
         if(this.§8"@§.txtLeagueGain)
         {
            this.§8"@§.txtLeagueGain.text = this.§1!+§.§<#n§ > 0 ? "+" + this.§1!+§.§<#n§ : this.§1!+§.§<#n§.toString();
            this.§8"@§.txtLeagueGain.visible = this.§1!+§.§<#n§ != 0;
            this.§8"@§.mcLeagueGainIcon.visible = this.§1!+§.§<#n§ != 0;
            this.§8"@§.mcLeagueGainBGGreen.visible = this.§1!+§.§<#n§ > 0;
            this.§8"@§.mcLeagueGainBGRed.visible = this.§1!+§.§<#n§ < 0;
         }
         this.§8"@§.CoinsBG.visible = this.§1!+§.coins > 0;
         this.§8"@§.mcCoin.visible = this.§1!+§.coins > 0;
         if(!this.§1!+§.§ !2§)
         {
            this.§8"@§.mcLeagueMoveUp.visible = this.§1!+§.§'"t§ == "u";
            this.§8"@§.mcLeagueMoveDown.visible = this.§1!+§.§'"t§ == "d";
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§;#I§)
         {
            return;
         }
         if(§<$2§.§`"H§.active)
         {
            if(this.§1!+§.§##L§ > 0)
            {
               §;#I§.visible = true;
               §;#I§.txtRakning.text = this.§1!+§.§##L§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§1!+§.isMe;
      }
      
      private function get §1!+§() : §[#8§
      {
         return data as §[#8§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§;#I§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §'!>§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+#i§(§#"l§.NORMAL,§]"Y§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = §##'§().profilePicture;
         var _loc2_:§[#8§ = §[#8§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§7#j§ && §7#j§.parent == this && §7#j§ == §'"a§[_loc4_])
         {
            return;
         }
         if(§7#j§ && §7#j§.parent == this)
         {
            removeChild(§7#j§);
            §7#j§ = null;
         }
         if(§'"a§[_loc4_])
         {
            addChild(§7#j§ = §'"a§[_loc4_]);
         }
         else
         {
            §7#j§ = new §4" §(data.userId,§##'§().profilePicture,data.avatarString,false,§6#b§.§?^§);
            §7#j§.x = 5;
            §7#j§.y = 5;
            §'"a§[_loc4_] = §7#j§;
            addChild(§7#j§);
         }
      }
   }
}
