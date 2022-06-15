package §!!L§
{
   import § "L§.§7`§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+`§.§%"q§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§>#§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §]§.§1$?§;
   import §]§.§[#t§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import §`,§.§[!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §1$?§ implements §+#?§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §3!t§:§>#§;
      
      private var §=!§:§[!h§;
      
      private var §@!e§:§[!h§;
      
      private var §<!w§:§[!h§;
      
      private var §"#W§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§&!J§();
      }
      
      override public function deActivate() : void
      {
         if(this.§=!§)
         {
            this.§=!§.dispose();
         }
         if(this.§@!e§)
         {
            this.§@!e§.dispose();
         }
         if(this.§<!w§)
         {
            this.§<!w§.dispose();
         }
         this.§7=§(this.§"#W§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§0!u§ = null;
         var _loc5_:§"5§ = null;
         this.§3!t§ = new §>#§();
         this.§3!t§.first = this.§ K§(1);
         this.§3!t§.second = this.§ K§(2);
         this.§3!t§.§]"j§ = this.§ K§(3);
         var _loc1_:Array = §7!$§.§+!,§.§-"K§;
         §;!w§.setText(_loc1_[0],"firstPlaceText");
         §;!w§.setText(_loc1_[1],"secondPlaceText");
         §;!w§.setText(_loc1_[2],"thirdPlaceText");
         this.§3!t§.bronzeTrophies = §7!$§.§+!,§.bronzeTrophies;
         this.§3!t§.silverTrophies = §7!$§.§+!,§.silverTrophies;
         this.§3!t§.goldTrophies = §7!$§.§+!,§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §7!$§.§+!,§.§%&§.players)
         {
            _loc4_ = §2#9§.§"!U§(_loc3_);
            if(_loc5_ = §8#g§.§^!O§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§9"^§,_loc2_);
         this.§?!z§(this.§3!t§);
         this.§,!k§();
      }
      
      private function § K§(param1:int) : §2#9§
      {
         var _loc2_:Object = null;
         var _loc3_:§"5§ = null;
         if(§7!$§.§+!,§.§%&§)
         {
            if(§7!$§.§+!,§.§%&§.players)
            {
               if(param1 <= §7!$§.§+!,§.§%&§.players.length)
               {
                  _loc2_ = §7!$§.§+!,§.§%&§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §8#g§.§^!O§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §2#9§.§"!U§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §?!z§(param1:§>#§) : void
      {
         §;!w§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §;!w§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §;!w§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §,!k§() : void
      {
         if(this.§3!t§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §;!w§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §;!w§.getItemByName("BronzeTrophy").mClip;
         if(this.§3!t§.§]"j§)
         {
            this.§=!§ = new §[!h§(_loc1_,this.§3!t§.§]"j§);
            this.§>$6§("TextField_Podium3",this.§3!t§.§]"j§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §;!w§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §;!w§.getItemByName("SilverTrophy").mClip;
         if(this.§3!t§.second)
         {
            this.§@!e§ = new §[!h§(_loc3_,this.§3!t§.second);
            this.§>$6§("TextField_Podium2",this.§3!t§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §;!w§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §;!w§.getItemByName("GoldTrophy").mClip;
         if(this.§3!t§.first)
         {
            this.§<!w§ = new §[!h§(_loc5_,this.§3!t§.first);
            this.§>$6§("TextField_Podium1",this.§3!t§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §>$6§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §;!w§.getItemByName(param1);
         if(_loc3_)
         {
            §7"U§.§+$5§((_loc3_ as §7`§).§%!8§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§ !8§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§ !8§.STATE_NAME);
               break;
            case "showCredits":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§[#t§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §&!J§() : void
      {
         this.§6"h§(new Wallet(this,true,false));
         this.§"#W§.§`#8§.scaleY = 1.3;
         this.§"#W§.§`#8§.scaleX = 1.3;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.getItemByName("walletContainer").mClip;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
   }
}
