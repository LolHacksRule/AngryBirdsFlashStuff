package §8"X§
{
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§%"E§;
   import §&"J§.§3!3§;
   import §&"J§.§8h§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §94§.§@"X§;
   import §94§.§`"z§;
   import §<"1§.§'"S§;
   import §@#§.§^#Q§;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §];§.§-!t§;
   import §];§.§0+§;
   import §^#]§.§@!g§;
   import §`!R§.§&"8§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §`"z§ implements §8[§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §6#S§:§8h§;
      
      private var §,!O§:§0+§;
      
      private var §`"I§:§0+§;
      
      private var §""N§:§0+§;
      
      private var §3!B§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§`#§();
      }
      
      override public function deActivate() : void
      {
         if(this.§,!O§)
         {
            this.§,!O§.dispose();
         }
         if(this.§`"I§)
         {
            this.§`"I§.dispose();
         }
         if(this.§""N§)
         {
            this.§""N§.dispose();
         }
         this.§"#H§(this.§3!B§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§3!3§ = null;
         var _loc5_:§4!J§ = null;
         this.§6#S§ = new §8h§();
         this.§6#S§.first = this.§=V§(1);
         this.§6#S§.second = this.§=V§(2);
         this.§6#S§.§?!m§ = this.§=V§(3);
         var _loc1_:Array = §-!t§.§ "D§.§;r§;
         §?Q§.setText(_loc1_[0],"firstPlaceText");
         §?Q§.setText(_loc1_[1],"secondPlaceText");
         §?Q§.setText(_loc1_[2],"thirdPlaceText");
         this.§6#S§.bronzeTrophies = §-!t§.§ "D§.bronzeTrophies;
         this.§6#S§.silverTrophies = §-!t§.§ "D§.silverTrophies;
         this.§6#S§.goldTrophies = §-!t§.§ "D§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §-!t§.§ "D§.§>!j§.players)
         {
            _loc4_ = §%"E§.§2u§(_loc3_);
            if(_loc5_ = §%!?§.§ $;§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§=E§,_loc2_);
         this.§^"W§(this.§6#S§);
         this.§<#'§();
         this.§>8§();
      }
      
      protected function §>8§() : void
      {
         §?Q§.getItemByName("Banner_Info").setVisibility(false);
         §?Q§.getItemByName("Textfield_Banner_Info").setVisibility(false);
      }
      
      private function §=V§(param1:int) : §%"E§
      {
         var _loc2_:Object = null;
         var _loc3_:§4!J§ = null;
         if(§-!t§.§ "D§.§>!j§)
         {
            if(§-!t§.§ "D§.§>!j§.players)
            {
               if(param1 <= §-!t§.§ "D§.§>!j§.players.length)
               {
                  _loc2_ = §-!t§.§ "D§.§>!j§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §%!?§.§ $;§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §%"E§.§2u§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §^"W§(param1:§8h§) : void
      {
         §?Q§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §?Q§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §?Q§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §<#'§() : void
      {
         if(this.§6#S§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §?Q§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §?Q§.getItemByName("BronzeTrophy").mClip;
         if(this.§6#S§.§?!m§)
         {
            this.§,!O§ = new §0+§(_loc1_,this.§6#S§.§?!m§);
            this.§,$2§("TextField_Podium3",this.§6#S§.§?!m§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §?Q§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §?Q§.getItemByName("SilverTrophy").mClip;
         if(this.§6#S§.second)
         {
            this.§`"I§ = new §0+§(_loc3_,this.§6#S§.second);
            this.§,$2§("TextField_Podium2",this.§6#S§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §?Q§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §?Q§.getItemByName("GoldTrophy").mClip;
         if(this.§6#S§.first)
         {
            this.§""N§ = new §0+§(_loc5_,this.§6#S§.first);
            this.§,$2§("TextField_Podium1",this.§6#S§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §,$2§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §?Q§.getItemByName(param1);
         if(_loc3_)
         {
            §@!g§.§["1§((_loc3_ as §^!4§).§[!&§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§^!E§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§^!E§.STATE_NAME);
               break;
            case "showCredits":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§@"X§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §`#§() : void
      {
         this.§##Y§(new Wallet(this,true,false));
         this.§3!B§.§[!R§.scaleY = 1.3;
         this.§3!B§.§[!R§.scaleX = 1.3;
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.getItemByName("walletContainer").mClip;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
   }
}
