package §-"i§
{
   import §#v§.§#!?§;
   import §%$!§.§&!S§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §,!=§.§"$6§;
   import §,!=§.§7"S§;
   import §0#d§.§<#u§;
   import §1!@§.§&#a§;
   import §5"$§.§+#Y§;
   import §5"$§.§]!m§;
   import §6"r§.§]$!§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §7"S§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §,#4§:§&!S§;
      
      private var §%k§:§+#Y§;
      
      private var §>;§:§+#Y§;
      
      private var §^R§:§+#Y§;
      
      public function StateLastWeeksTournamentResults(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
      }
      
      override public function deActivate() : void
      {
         if(this.§%k§)
         {
            this.§%k§.dispose();
         }
         if(this.§>;§)
         {
            this.§>;§.dispose();
         }
         if(this.§^R§)
         {
            this.§^R§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9$6§ = null;
         var _loc5_:§2"U§ = null;
         this.§,#4§ = new §&!S§();
         this.§,#4§.first = this.§ _§(1);
         this.§,#4§.second = this.§ _§(2);
         this.§,#4§.§;m§ = this.§ _§(3);
         var _loc1_:Array = §]!m§.§3!]§.§#$5§;
         §!$§.setText(_loc1_[0],"firstPlaceText");
         §!$§.setText(_loc1_[1],"secondPlaceText");
         §!$§.setText(_loc1_[2],"thirdPlaceText");
         this.§,#4§.bronzeTrophies = §]!m§.§3!]§.bronzeTrophies;
         this.§,#4§.silverTrophies = §]!m§.§3!]§.silverTrophies;
         this.§,#4§.goldTrophies = §]!m§.§3!]§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §]!m§.§3!]§.§8#,§.players)
         {
            _loc4_ = §8!t§.§>!§(_loc3_);
            if(_loc5_ = §7"m§.§;#F§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§^c§,_loc2_);
         this.§,#e§(this.§,#4§);
         this.§^#5§();
         this.§"9§();
      }
      
      protected function §"9§() : void
      {
         §!$§.getItemByName("Banner_Info").setVisibility(false);
         §!$§.getItemByName("Textfield_Banner_Info").setVisibility(false);
      }
      
      private function § _§(param1:int) : §8!t§
      {
         var _loc2_:Object = null;
         var _loc3_:§2"U§ = null;
         if(§]!m§.§3!]§.§8#,§)
         {
            if(§]!m§.§3!]§.§8#,§.players)
            {
               if(param1 <= §]!m§.§3!]§.§8#,§.players.length)
               {
                  _loc2_ = §]!m§.§3!]§.§8#,§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §7"m§.§;#F§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §8!t§.§>!§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §,#e§(param1:§&!S§) : void
      {
         §!$§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §!$§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §!$§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §^#5§() : void
      {
         if(this.§,#4§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §!$§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §!$§.getItemByName("BronzeTrophy").mClip;
         if(this.§,#4§.§;m§)
         {
            this.§%k§ = new §+#Y§(_loc1_,this.§,#4§.§;m§);
            this.§8+§("TextField_Podium3",this.§,#4§.§;m§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §!$§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §!$§.getItemByName("SilverTrophy").mClip;
         if(this.§,#4§.second)
         {
            this.§>;§ = new §+#Y§(_loc3_,this.§,#4§.second);
            this.§8+§("TextField_Podium2",this.§,#4§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §!$§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §!$§.getItemByName("GoldTrophy").mClip;
         if(this.§,#4§.first)
         {
            this.§^R§ = new §+#Y§(_loc5_,this.§,#4§.first);
            this.§8+§("TextField_Podium1",this.§,#4§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §8+§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §!$§.getItemByName(param1);
         if(_loc3_)
         {
            §&#a§.§^E§((_loc3_ as §]$!§).§@]§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§%!'§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§%!'§.STATE_NAME);
               break;
            case "showCredits":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§"$6§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
   }
}
