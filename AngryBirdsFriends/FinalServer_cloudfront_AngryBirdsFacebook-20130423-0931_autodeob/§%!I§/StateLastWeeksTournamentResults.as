package §%!I§
{
   import §%i§.§^n§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§7"L§;
   import §0D§.§3!R§;
   import §0D§.§`!k§;
   import §1!t§.§""B§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §8";§.§+d§;
   import §;u§.§&"[§;
   import §;u§.§9!V§;
   import §@!"§.§?l§;
   import §["6§.§^!C§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §+d§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §%!d§:§^!C§;
      
      private var §;"3§:§7"L§;
      
      private var §="8§:§`!k§;
      
      private var §#k§:§`!k§;
      
      private var §,!a§:§`!k§;
      
      public function StateLastWeeksTournamentResults(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§%!d§ == null)
         {
            this.§%!d§ = new §^!C§((§2"@§.getItemByName("FireworksArea") as §^n§).mClip);
         }
         this.§%!d§.activate();
         this.injectData();
         §%"S§.§!C§.§]"Y§("Last week\'s scores");
      }
      
      override public function deActivate() : void
      {
         if(this.§%!d§)
         {
            this.§%!d§.deActivate();
         }
         if(this.§="8§)
         {
            this.§="8§.dispose();
         }
         if(this.§#k§)
         {
            this.§#k§.dispose();
         }
         if(this.§,!a§)
         {
            this.§,!a§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§#!>§ = null;
         var _loc5_:§#!>§ = null;
         var _loc6_:§@"E§ = null;
         this.§;"3§ = new §7"L§();
         this.§;"3§.§;"O§ = this.§1!S§(1);
         this.§;"3§.§ !e§ = this.§1!S§(2);
         this.§;"3§.§3J§ = this.§1!S§(3);
         var _loc1_:Array = §3!R§.§&"5§.§7k§;
         §2"@§.setText(_loc1_[0],"firstPlaceText");
         §2"@§.setText(_loc1_[1],"secondPlaceText");
         §2"@§.setText(_loc1_[2],"thirdPlaceText");
         this.§;"3§.bronzeTrophies = §3!R§.§&"5§.bronzeTrophies;
         this.§;"3§.silverTrophies = §3!R§.§&"5§.silverTrophies;
         this.§;"3§.goldTrophies = §3!R§.§&"5§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §3!R§.§&"5§.previousTournament.players)
         {
            _loc5_ = §1U§.§?$§(_loc3_);
            if(_loc6_ = §&k§.§`!]§(_loc3_.u))
            {
               _loc5_.userName = _loc6_.name;
            }
            _loc2_.push(_loc5_);
         }
         for each(_loc4_ in §3!R§.§&"5§.§@!X§())
         {
            _loc2_.push(_loc4_);
         }
         (§?l§.§ "G§ as §%"S§).§'u§.§]"+§(_loc2_);
         this.§""$§(this.§;"3§);
         this.§`&§();
      }
      
      private function §1!S§(param1:int) : §1U§
      {
         var _loc2_:Object = null;
         var _loc3_:§@"E§ = null;
         if(§3!R§.§&"5§.previousTournament)
         {
            if(§3!R§.§&"5§.previousTournament.players)
            {
               for each(_loc2_ in §3!R§.§&"5§.previousTournament.players)
               {
                  if(_loc2_)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §&k§.§`!]§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §1U§.§?$§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §""$§(param1:§7"L§) : void
      {
         §2"@§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §2"@§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §2"@§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §`&§() : void
      {
         var _loc4_:MovieClip = null;
         if(this.§;"3§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §2"@§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §2"@§.getItemByName("BronzeTrophy").mClip;
         if(this.§;"3§.§3J§)
         {
            this.§="8§ = new §`!k§(_loc1_,this.§;"3§.§3J§);
            §2"@§.setText(this.§;"3§.§3J§.userName,"TextField_Podium3");
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §2"@§.getItemByName("SilverAvatarHolder").mClip;
         _loc4_ = §2"@§.getItemByName("SilverTrophy").mClip;
         if(this.§;"3§.§ !e§)
         {
            this.§#k§ = new §`!k§(_loc3_,this.§;"3§.§ !e§);
            §2"@§.setText(this.§;"3§.§ !e§.userName,"TextField_Podium2");
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §2"@§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §2"@§.getItemByName("GoldTrophy").mClip;
         if(this.§;"3§.§;"O§)
         {
            this.§,!a§ = new §`!k§(_loc5_,this.§;"3§.§;"O§);
            §2"@§.setText(this.§;"3§.§;"O§.userName,"TextField_Podium1");
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §9!V§.STATE_NAME;
               break;
            case "CURRENT_TOURNAMENT":
               mNextState = §]!M§.STATE_NAME;
               break;
            case "showCredits":
               mNextState = §&"[§.STATE_NAME;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
   }
}
