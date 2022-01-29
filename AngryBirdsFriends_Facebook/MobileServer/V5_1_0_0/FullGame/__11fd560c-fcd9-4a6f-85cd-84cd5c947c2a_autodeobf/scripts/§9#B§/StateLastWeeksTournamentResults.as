package §9#B§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §"!@§.§ !K§;
   import §"!@§.§@"S§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §2G§.§1T§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §8#!§.§!4§;
   import §8#!§.§5`§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §@"S§ implements §9#a§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §<"y§:§1T§;
      
      private var §?!Y§:§!4§;
      
      private var §9Y§:§!4§;
      
      private var §!_§:§!4§;
      
      private var §&"K§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§`!J§();
      }
      
      override public function deActivate() : void
      {
         if(this.§?!Y§)
         {
            this.§?!Y§.dispose();
         }
         if(this.§9Y§)
         {
            this.§9Y§.dispose();
         }
         if(this.§!_§)
         {
            this.§!_§.dispose();
         }
         this.§8!3§(this.§&"K§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4O§ = null;
         var _loc5_:§,^§ = null;
         this.§<"y§ = new §1T§();
         this.§<"y§.first = this.§="G§(1);
         this.§<"y§.second = this.§="G§(2);
         this.§<"y§.§^!y§ = this.§="G§(3);
         var _loc1_:Array = §5`§.§6!§.§;7§;
         §`!H§.setText(_loc1_[0],"firstPlaceText");
         §`!H§.setText(_loc1_[1],"secondPlaceText");
         §`!H§.setText(_loc1_[2],"thirdPlaceText");
         this.§<"y§.bronzeTrophies = §5`§.§6!§.bronzeTrophies;
         this.§<"y§.silverTrophies = §5`§.§6!§.silverTrophies;
         this.§<"y§.goldTrophies = §5`§.§6!§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §5`§.§6!§.§4d§.players)
         {
            _loc4_ = §5$4§.§+!@§(_loc3_);
            if(_loc5_ = §4"I§.§2!K§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§&!7§,_loc2_);
         this.§>]§(this.§<"y§);
         this.§02§();
      }
      
      private function §="G§(param1:int) : §5$4§
      {
         var _loc2_:Object = null;
         var _loc3_:§,^§ = null;
         if(§5`§.§6!§.§4d§)
         {
            if(§5`§.§6!§.§4d§.players)
            {
               if(param1 <= §5`§.§6!§.§4d§.players.length)
               {
                  _loc2_ = §5`§.§6!§.§4d§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §4"I§.§2!K§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §5$4§.§+!@§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §>]§(param1:§1T§) : void
      {
         §`!H§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §`!H§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §`!H§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §02§() : void
      {
         if(this.§<"y§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §`!H§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §`!H§.getItemByName("BronzeTrophy").mClip;
         if(this.§<"y§.§^!y§)
         {
            this.§?!Y§ = new §!4§(_loc1_,this.§<"y§.§^!y§);
            this.§>#J§("TextField_Podium3",this.§<"y§.§^!y§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §`!H§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §`!H§.getItemByName("SilverTrophy").mClip;
         if(this.§<"y§.second)
         {
            this.§9Y§ = new §!4§(_loc3_,this.§<"y§.second);
            this.§>#J§("TextField_Podium2",this.§<"y§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §`!H§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §`!H§.getItemByName("GoldTrophy").mClip;
         if(this.§<"y§.first)
         {
            this.§!_§ = new §!4§(_loc5_,this.§<"y§.first);
            this.§>#J§("TextField_Podium1",this.§<"y§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §>#J§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §`!H§.getItemByName(param1);
         if(_loc3_)
         {
            §=#Q§.§0$,§((_loc3_ as §%M§).§4!"§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§=!L§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§=!L§.STATE_NAME);
               break;
            case "showCredits":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§ !K§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §`!J§() : void
      {
         this.§[?§(new Wallet(this,true,false));
         this.§&"K§.§=#-§.scaleY = 1.3;
         this.§&"K§.§=#-§.scaleX = 1.3;
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.getItemByName("walletContainer").mClip;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
   }
}
