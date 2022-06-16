package §6k§
{
   import §#!^§.§1!1§;
   import §#!^§.§2t§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§="0§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import §?"§.§4C§;
   import §@",§.§6!B§;
   import §@",§.§`f§;
   import §^!U§.§,J§;
   import §^!U§.§2!M§;
   import §^!U§.§9!!§;
   import §^!o§.§=1§;
   import §^!o§.§@?§;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §5!S§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §0"F§:§4C§;
      
      private var §4!f§:§9!!§;
      
      private var §>]§:§@?§;
      
      private var §4^§:§@?§;
      
      private var §^"6§:§@?§;
      
      public function StateLastWeeksTournamentResults(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§0"F§ == null)
         {
            this.§0"F§ = new §4C§((§2!K§.getItemByName("FireworksArea") as §="0§).mClip);
         }
         this.§0"F§.activate();
         this.injectData();
         §,"I§.§&q§.§ h§("Last week\'s scores");
      }
      
      override public function deActivate() : void
      {
         if(this.§0"F§)
         {
            this.§0"F§.deActivate();
         }
         if(this.§>]§)
         {
            this.§>]§.dispose();
         }
         if(this.§4^§)
         {
            this.§4^§.dispose();
         }
         if(this.§^"6§)
         {
            this.§^"6§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§2!M§ = null;
         var _loc5_:§2!M§ = null;
         var _loc6_:§2t§ = null;
         this.§4!f§ = new §9!!§();
         this.§4!f§.§=!V§ = this.§2"$§(1);
         this.§4!f§.§5K§ = this.§2"$§(2);
         this.§4!f§.§]!]§ = this.§2"$§(3);
         var _loc1_:Array = §=1§.§1[§.§!!W§;
         §2!K§.setText(_loc1_[0],"firstPlaceText");
         §2!K§.setText(_loc1_[1],"secondPlaceText");
         §2!K§.setText(_loc1_[2],"thirdPlaceText");
         this.§4!f§.bronzeTrophies = §=1§.§1[§.bronzeTrophies;
         this.§4!f§.silverTrophies = §=1§.§1[§.silverTrophies;
         this.§4!f§.goldTrophies = §=1§.§1[§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §=1§.§1[§.previousTournament.players)
         {
            _loc5_ = §,J§.§@6§(_loc3_);
            if(_loc6_ = §1!1§.§7"8§(_loc3_.u))
            {
               _loc5_.userName = _loc6_.name;
            }
            else
            {
               _loc5_.userName = "";
            }
            _loc2_.push(_loc5_);
         }
         for each(_loc4_ in §=1§.§1[§.§^!6§())
         {
            _loc2_.push(_loc4_);
         }
         (§&2§.§5!k§ as §,"I§).§6!b§.§5#§(_loc2_);
         this.§`8§(this.§4!f§);
         this.§`6§();
      }
      
      private function §2"$§(param1:int) : §,J§
      {
         var _loc2_:Object = null;
         var _loc3_:§2t§ = null;
         if(§=1§.§1[§.previousTournament)
         {
            if(§=1§.§1[§.previousTournament.players)
            {
               for each(_loc2_ in §=1§.§1[§.previousTournament.players)
               {
                  if(_loc2_)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §1!1§.§7"8§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §,J§.§@6§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function §`8§(param1:§9!!§) : void
      {
         §2!K§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §2!K§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §2!K§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §`6§() : void
      {
         if(this.§4!f§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §2!K§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §2!K§.getItemByName("BronzeTrophy").mClip;
         if(this.§4!f§.§]!]§)
         {
            this.§>]§ = new §@?§(_loc1_,this.§4!f§.§]!]§);
            §2!K§.setText(this.§4!f§.§]!]§.userName,"TextField_Podium3");
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §2!K§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §2!K§.getItemByName("SilverTrophy").mClip;
         if(this.§4!f§.§5K§)
         {
            this.§4^§ = new §@?§(_loc3_,this.§4!f§.§5K§);
            §2!K§.setText(this.§4!f§.§5K§.userName,"TextField_Podium2");
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §2!K§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §2!K§.getItemByName("GoldTrophy").mClip;
         if(this.§4!f§.§=!V§)
         {
            this.§^"6§ = new §@?§(_loc5_,this.§4!f§.§=!V§);
            §2!K§.setText(this.§4!f§.§=!V§.userName,"TextField_Podium1");
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §6!B§.STATE_NAME;
               break;
            case "CURRENT_TOURNAMENT":
               mNextState = §-#§.STATE_NAME;
               break;
            case "showCredits":
               mNextState = §`f§.STATE_NAME;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
   }
}
