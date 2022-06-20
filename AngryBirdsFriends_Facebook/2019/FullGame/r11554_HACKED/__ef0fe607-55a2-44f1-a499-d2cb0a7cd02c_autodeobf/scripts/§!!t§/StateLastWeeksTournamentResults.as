package §!!t§
{
   import §"$=§.§'![§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+"u§.§>#l§;
   import §+"u§.§^"C§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §3"G§.§16§;
   import §3=§.§-"4§;
   import §3=§.§1U§;
   import §4!n§.§'!,§;
   import §5!$§.§-#j§;
   import §8"b§.§&!b§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"'§.§-!@§;
   import §]"'§.§8!a§;
   import §]"'§.§default§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §-"4§ implements §["b§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var § $E§:§-!@§;
      
      private var §&#[§:§>#l§;
      
      private var §;o§:§>#l§;
      
      private var §5e§:§>#l§;
      
      private var §?3§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§+"^§();
      }
      
      override public function deActivate() : void
      {
         if(this.§&#[§)
         {
            this.§&#[§.dispose();
         }
         if(this.§;o§)
         {
            this.§;o§.dispose();
         }
         if(this.§5e§)
         {
            this.§5e§.dispose();
         }
         this.§"[§(this.§?3§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§8!a§ = null;
         var _loc5_:§8c§ = null;
         this.§ $E§ = new §-!@§();
         this.§ $E§.first = this.§]"§(1);
         this.§ $E§.second = this.§]"§(2);
         this.§ $E§.§,!n§ = this.§]"§(3);
         var _loc1_:Array = §^"C§.§?q§.§^#L§;
         §<"`§.setText(_loc1_[0],"firstPlaceText");
         §<"`§.setText(_loc1_[1],"secondPlaceText");
         §<"`§.setText(_loc1_[2],"thirdPlaceText");
         this.§ $E§.bronzeTrophies = §^"C§.§?q§.bronzeTrophies;
         this.§ $E§.silverTrophies = §^"C§.§?q§.silverTrophies;
         this.§ $E§.goldTrophies = §^"C§.§?q§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §^"C§.§?q§.§>$ §.players)
         {
            _loc4_ = §default§.§]"B§(_loc3_);
            if(_loc5_ = §5!b§.§8#'§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§ !z§,_loc2_);
         this.§<]§(this.§ $E§);
         this.§8J§();
      }
      
      private function §]"§(param1:int) : §default§
      {
         var _loc2_:Object = null;
         var _loc3_:§8c§ = null;
         if(§^"C§.§?q§.§>$ §)
         {
            if(§^"C§.§?q§.§>$ §.players)
            {
               if(param1 <= §^"C§.§?q§.§>$ §.players.length)
               {
                  _loc2_ = §^"C§.§?q§.§>$ §.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §5!b§.§8#'§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §default§.§]"B§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §<]§(param1:§-!@§) : void
      {
         §<"`§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §<"`§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §<"`§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §8J§() : void
      {
         if(this.§ $E§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §<"`§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §<"`§.getItemByName("BronzeTrophy").mClip;
         if(this.§ $E§.§,!n§)
         {
            this.§&#[§ = new §>#l§(_loc1_,this.§ $E§.§,!n§);
            this.§=6§("TextField_Podium3",this.§ $E§.§,!n§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §<"`§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §<"`§.getItemByName("SilverTrophy").mClip;
         if(this.§ $E§.second)
         {
            this.§;o§ = new §>#l§(_loc3_,this.§ $E§.second);
            this.§=6§("TextField_Podium2",this.§ $E§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §<"`§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §<"`§.getItemByName("GoldTrophy").mClip;
         if(this.§ $E§.first)
         {
            this.§5e§ = new §>#l§(_loc5_,this.§ $E§.first);
            this.§=6§("TextField_Podium1",this.§ $E§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §=6§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §<"`§.getItemByName(param1);
         if(_loc3_)
         {
            §&!b§.§9G§((_loc3_ as §-#j§).§^g§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§'8§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§'8§.STATE_NAME);
               break;
            case "showCredits":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§1U§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §+"^§() : void
      {
         this.§[D§(new Wallet(this,true,false));
         this.§?3§.§5#k§.scaleY = 1.3;
         this.§?3§.§5#k§.scaleX = 1.3;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.getItemByName("walletContainer").mClip;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
   }
}
