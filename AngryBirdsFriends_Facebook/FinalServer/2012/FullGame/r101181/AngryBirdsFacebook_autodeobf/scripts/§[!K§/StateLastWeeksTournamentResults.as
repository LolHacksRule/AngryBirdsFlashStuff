package §[!K§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §'K§.§+"@§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §4!e§.§7"-§;
   import §7"@§.§9<§;
   import §7"@§.§?'§;
   import §7-§.§,!C§;
   import §7-§.§<"+§;
   import §]!>§.§#"1§;
   import §]!>§.§6!<§;
   import §]!>§.§[Q§;
   import §]!A§.;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §1-§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §8"-§:§+"@§;
      
      private var §8$§:§6!<§;
      
      private var §+R§:§<"+§;
      
      private var §1!]§:§<"+§;
      
      private var §-!J§:§<"+§;
      
      public function StateLastWeeksTournamentResults(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§8"-§ == null)
         {
            this.§8"-§ = new §+"@§((§6w§.getItemByName("FireworksArea") as §7"-§).mClip);
         }
         this.§8"-§.activate();
         this.injectData();
         §3T§.§67§.§6!l§("Last week\'s scores");
      }
      
      override public function deActivate() : void
      {
         if(this.§8"-§)
         {
            this.§8"-§.deActivate();
         }
         if(this.§+R§)
         {
            this.§+R§.dispose();
         }
         if(this.§1!]§)
         {
            this.§1!]§.dispose();
         }
         if(this.§-!J§)
         {
            this.§-!J§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§#"1§ = null;
         var _loc5_:§#"1§ = null;
         var _loc6_:§@!5§ = null;
         this.§8$§ = new §6!<§();
         this.§8$§.§,!@§ = this.§ "'§(1);
         this.§8$§.§9!2§ = this.§ "'§(2);
         this.§8$§.§!!$§ = this.§ "'§(3);
         var _loc1_:Array = §,!C§.§;"§.§ !Q§;
         §6w§.setText(_loc1_[0],"firstPlaceText");
         §6w§.setText(_loc1_[1],"secondPlaceText");
         §6w§.setText(_loc1_[2],"thirdPlaceText");
         this.§8$§.bronzeTrophies = §,!C§.§;"§.bronzeTrophies;
         this.§8$§.silverTrophies = §,!C§.§;"§.silverTrophies;
         this.§8$§.goldTrophies = §,!C§.§;"§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §,!C§.§;"§.previousTournament.players)
         {
            _loc5_ = §[Q§.§!!t§(_loc3_);
            if(_loc6_ = §1z§.§@Z§(_loc3_.u))
            {
               _loc5_.userName = _loc6_.name;
            }
            else
            {
               _loc5_.userName = "";
            }
            _loc2_.push(_loc5_);
         }
         for each(_loc4_ in §,!C§.§;"§.§=!V§())
         {
            _loc2_.push(_loc4_);
         }
         (§#6§.§ q§ as §3T§).§0#§.§[!L§(_loc2_);
         this.§@!;§(this.§8$§);
         this.§8"9§();
      }
      
      private function § "'§(param1:int) : §[Q§
      {
         var _loc2_:Object = null;
         var _loc3_:§@!5§ = null;
         if(§,!C§.§;"§.previousTournament)
         {
            if(§,!C§.§;"§.previousTournament.players)
            {
               for each(_loc2_ in §,!C§.§;"§.previousTournament.players)
               {
                  if(_loc2_)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §1z§.§@Z§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §[Q§.§!!t§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §@!;§(param1:§6!<§) : void
      {
         §6w§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §6w§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §6w§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §8"9§() : void
      {
         if(this.§8$§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §6w§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §6w§.getItemByName("BronzeTrophy").mClip;
         if(this.§8$§.§!!$§)
         {
            this.§+R§ = new §<"+§(_loc1_,this.§8$§.§!!$§);
            §6w§.setText(this.§8$§.§!!$§.userName,"TextField_Podium3");
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §6w§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §6w§.getItemByName("SilverTrophy").mClip;
         if(this.§8$§.§9!2§)
         {
            this.§1!]§ = new §<"+§(_loc3_,this.§8$§.§9!2§);
            §6w§.setText(this.§8$§.§9!2§.userName,"TextField_Podium2");
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §6w§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §6w§.getItemByName("GoldTrophy").mClip;
         if(this.§8$§.§,!@§)
         {
            this.§-!J§ = new §<"+§(_loc5_,this.§8$§.§,!@§);
            §6w§.setText(this.§8$§.§,!@§.userName,"TextField_Podium1");
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §?'§.STATE_NAME;
               break;
            case "CURRENT_TOURNAMENT":
               mNextState = §-k§.STATE_NAME;
               break;
            case "showCredits":
               mNextState = §9<§.STATE_NAME;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
   }
}
