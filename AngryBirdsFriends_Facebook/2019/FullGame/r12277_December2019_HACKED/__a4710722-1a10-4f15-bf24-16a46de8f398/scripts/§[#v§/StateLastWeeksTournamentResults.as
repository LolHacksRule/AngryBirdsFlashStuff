package §[#v§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §!!H§.§ $4§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §+!n§.§+!p§;
   import §2$;§.§-$5§;
   import §4#$§.§&#f§;
   import §4#$§.§5"L§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§#!&§;
   import §>#Y§.§%<§;
   import §>#Y§.§1N§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §^1§.§';§;
   import §^1§.§+!Y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §';§ implements §;"P§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §#$"§:§%<§;
      
      private var §3"G§:§&#f§;
      
      private var §;"a§:§&#f§;
      
      private var §-"z§:§&#f§;
      
      private var §1"w§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§-#y§();
      }
      
      override public function deActivate() : void
      {
         if(this.§3"G§)
         {
            this.§3"G§.dispose();
         }
         if(this.§;"a§)
         {
            this.§;"a§.dispose();
         }
         if(this.§-"z§)
         {
            this.§-"z§.dispose();
         }
         this.§+E§(this.§1"w§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§1N§ = null;
         var _loc5_:§9$§ = null;
         this.§#$"§ = new §%<§();
         this.§#$"§.first = this.§#!i§(1);
         this.§#$"§.second = this.§#!i§(2);
         this.§#$"§.§=#v§ = this.§#!i§(3);
         var _loc1_:Array = §5"L§.§3"1§.§^!q§;
         §@!D§.setText(_loc1_[0],"firstPlaceText");
         §@!D§.setText(_loc1_[1],"secondPlaceText");
         §@!D§.setText(_loc1_[2],"thirdPlaceText");
         this.§#$"§.bronzeTrophies = §5"L§.§3"1§.bronzeTrophies;
         this.§#$"§.silverTrophies = §5"L§.§3"1§.silverTrophies;
         this.§#$"§.goldTrophies = §5"L§.§3"1§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §5"L§.§3"1§.§4#^§.players)
         {
            _loc4_ = §#!&§.§5!I§(_loc3_);
            if(_loc5_ = §-#]§.§0B§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§6$@§,_loc2_);
         this.§-P§(this.§#$"§);
         this.§["G§();
      }
      
      private function §#!i§(param1:int) : §#!&§
      {
         var _loc2_:Object = null;
         var _loc3_:§9$§ = null;
         if(§5"L§.§3"1§.§4#^§)
         {
            if(§5"L§.§3"1§.§4#^§.players)
            {
               if(param1 <= §5"L§.§3"1§.§4#^§.players.length)
               {
                  _loc2_ = §5"L§.§3"1§.§4#^§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §-#]§.§0B§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §#!&§.§5!I§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §-P§(param1:§%<§) : void
      {
         §@!D§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §@!D§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §@!D§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §["G§() : void
      {
         if(this.§#$"§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §@!D§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §@!D§.getItemByName("BronzeTrophy").mClip;
         if(this.§#$"§.§=#v§)
         {
            this.§3"G§ = new §&#f§(_loc1_,this.§#$"§.§=#v§);
            this.§""8§("TextField_Podium3",this.§#$"§.§=#v§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §@!D§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §@!D§.getItemByName("SilverTrophy").mClip;
         if(this.§#$"§.second)
         {
            this.§;"a§ = new §&#f§(_loc3_,this.§#$"§.second);
            this.§""8§("TextField_Podium2",this.§#$"§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §@!D§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §@!D§.getItemByName("GoldTrophy").mClip;
         if(this.§#$"§.first)
         {
            this.§-"z§ = new §&#f§(_loc5_,this.§#$"§.first);
            this.§""8§("TextField_Podium1",this.§#$"§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §""8§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §@!D§.getItemByName(param1);
         if(_loc3_)
         {
            § $4§.§'#d§((_loc3_ as §-$5§).§>$D§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§4e§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§4e§.STATE_NAME);
               break;
            case "showCredits":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§+!Y§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §-#y§() : void
      {
         this.§ "@§(new Wallet(this,true,false));
         this.§1"w§.§6""§.scaleY = 1.3;
         this.§1"w§.§6""§.scaleX = 1.3;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.getItemByName("walletContainer").mClip;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
   }
}
