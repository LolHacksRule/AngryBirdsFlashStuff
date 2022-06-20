package §<G§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §+I§.§9!%§;
   import §1"2§.§,!]§;
   import §2!,§.§!Q§;
   import §2!,§.§3"B§;
   import §2!,§.§=n§;
   import §<!e§.§"!]§;
   import §<!e§.§[!t§;
   import §>y§.§%D§;
   import §?"#§.§%!X§;
   import §?"#§.§'@§;
   import §[!K§.§2&§;
   import §[!K§.§=!e§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §,-§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §0!=§:§%D§;
      
      private var §&!1§:§3"B§;
      
      private var §7a§:§"!]§;
      
      private var §'d§:§"!]§;
      
      private var §'r§:§"!]§;
      
      public function StateLastWeeksTournamentResults(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§0!=§ == null)
         {
            this.§0!=§ = new §%D§((§2"-§.getItemByName("FireworksArea") as §"Z§).mClip);
         }
         this.§0!=§.activate();
         this.injectData();
         § W§.§%!y§.§1!z§("Last week\'s scores");
      }
      
      override public function deActivate() : void
      {
         if(this.§0!=§)
         {
            this.§0!=§.deActivate();
         }
         if(this.§7a§)
         {
            this.§7a§.dispose();
         }
         if(this.§'d§)
         {
            this.§'d§.dispose();
         }
         if(this.§'r§)
         {
            this.§'r§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§=n§ = null;
         var _loc5_:§=n§ = null;
         var _loc6_:§'@§ = null;
         this.§&!1§ = new §3"B§();
         this.§&!1§.§=,§ = this.§'"1§(1);
         this.§&!1§.§&?§ = this.§'"1§(2);
         this.§&!1§.§#!z§ = this.§'"1§(3);
         var _loc1_:Array = §[!t§.§8c§.§+"2§;
         §2"-§.setText(_loc1_[0],"firstPlaceText");
         §2"-§.setText(_loc1_[1],"secondPlaceText");
         §2"-§.setText(_loc1_[2],"thirdPlaceText");
         this.§&!1§.bronzeTrophies = §[!t§.§8c§.bronzeTrophies;
         this.§&!1§.silverTrophies = §[!t§.§8c§.silverTrophies;
         this.§&!1§.goldTrophies = §[!t§.§8c§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §[!t§.§8c§.previousTournament.players)
         {
            _loc5_ = §!Q§.§ N§(_loc3_);
            if(_loc6_ = §%!X§.§'E§(_loc3_.u))
            {
               _loc5_.userName = _loc6_.name;
            }
            else
            {
               _loc5_.userName = "";
            }
            _loc2_.push(_loc5_);
         }
         for each(_loc4_ in §[!t§.§8c§.§%j§())
         {
            _loc2_.push(_loc4_);
         }
         (§9!%§.§ !W§ as § W§).§[!E§.§09§(_loc2_);
         this.§>!'§(this.§&!1§);
         this.§,">§();
      }
      
      private function §'"1§(param1:int) : §!Q§
      {
         var _loc2_:Object = null;
         var _loc3_:§'@§ = null;
         if(§[!t§.§8c§.previousTournament)
         {
            if(§[!t§.§8c§.previousTournament.players)
            {
               for each(_loc2_ in §[!t§.§8c§.previousTournament.players)
               {
                  if(_loc2_)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §%!X§.§'E§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §!Q§.§ N§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §>!'§(param1:§3"B§) : void
      {
         §2"-§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §2"-§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §2"-§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §,">§() : void
      {
         if(this.§&!1§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §2"-§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §2"-§.getItemByName("BronzeTrophy").mClip;
         if(this.§&!1§.§#!z§)
         {
            this.§7a§ = new §"!]§(_loc1_,this.§&!1§.§#!z§);
            §2"-§.setText(this.§&!1§.§#!z§.userName,"TextField_Podium3");
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §2"-§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §2"-§.getItemByName("SilverTrophy").mClip;
         if(this.§&!1§.§&?§)
         {
            this.§'d§ = new §"!]§(_loc3_,this.§&!1§.§&?§);
            §2"-§.setText(this.§&!1§.§&?§.userName,"TextField_Podium2");
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §2"-§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §2"-§.getItemByName("GoldTrophy").mClip;
         if(this.§&!1§.§=,§)
         {
            this.§'r§ = new §"!]§(_loc5_,this.§&!1§.§=,§);
            §2"-§.setText(this.§&!1§.§=,§.userName,"TextField_Podium1");
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §=!e§.STATE_NAME;
               break;
            case "CURRENT_TOURNAMENT":
               mNextState = §5w§.STATE_NAME;
               break;
            case "showCredits":
               mNextState = §2&§.STATE_NAME;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
   }
}
