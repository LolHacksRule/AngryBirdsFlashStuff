package §3+§
{
   import § !j§.§4#c§;
   import §!#C§.§0#;§;
   import §!#C§.§3" §;
   import §!#C§.§3"?§;
   import §"!n§.§;"x§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §1"l§.§`""§;
   import §2";§.§'#J§;
   import §2";§.§7!z§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §<!r§.§`"@§;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class StateLastWeeksTournamentResults extends §7!z§ implements §&>§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      private var §9!G§:§3"?§;
      
      private var §;"g§:§`"@§;
      
      private var §3#,§:§`"@§;
      
      private var §;#w§:§`"@§;
      
      private var §1!B§:Wallet;
      
      public function StateLastWeeksTournamentResults(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_TournamentPrevious[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.injectData();
         this.§=3§();
      }
      
      override public function deActivate() : void
      {
         if(this.§;"g§)
         {
            this.§;"g§.dispose();
         }
         if(this.§3#,§)
         {
            this.§3#,§.dispose();
         }
         if(this.§;#w§)
         {
            this.§;#w§.dispose();
         }
         this.§&!U§(this.§1!B§);
      }
      
      public function injectData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§0#;§ = null;
         var _loc5_:§@u§ = null;
         this.§9!G§ = new §3"?§();
         this.§9!G§.first = this.§4w§(1);
         this.§9!G§.second = this.§4w§(2);
         this.§9!G§.§9$<§ = this.§4w§(3);
         var _loc1_:Array = §'##§.§`"H§.§3#2§;
         §[$5§.setText(_loc1_[0],"firstPlaceText");
         §[$5§.setText(_loc1_[1],"secondPlaceText");
         §[$5§.setText(_loc1_[2],"thirdPlaceText");
         this.§9!G§.bronzeTrophies = §'##§.§`"H§.bronzeTrophies;
         this.§9!G§.silverTrophies = §'##§.§`"H§.silverTrophies;
         this.§9!G§.goldTrophies = §'##§.§`"H§.goldTrophies;
         var _loc2_:Array = [];
         for each(_loc3_ in §'##§.§`"H§.§[#_§.players)
         {
            _loc4_ = §3" §.§5+§(_loc3_);
            if(_loc5_ = §<T§.§<#§(_loc3_.uid))
            {
               _loc4_.userName = _loc5_.name;
            }
            _loc2_.push(_loc4_);
         }
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§7#Z§,_loc2_);
         this.§`"m§(this.§9!G§);
         this.§!!r§();
      }
      
      private function §4w§(param1:int) : §3" §
      {
         var _loc2_:Object = null;
         var _loc3_:§@u§ = null;
         if(§'##§.§`"H§.§[#_§)
         {
            if(§'##§.§`"H§.§[#_§.players)
            {
               if(param1 <= §'##§.§`"H§.§[#_§.players.length)
               {
                  _loc2_ = §'##§.§`"H§.§[#_§.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §<T§.§<#§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §3" §.§5+§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §`"m§(param1:§3"?§) : void
      {
         §[$5§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
         §[$5§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
         §[$5§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
      }
      
      public function §!!r§() : void
      {
         if(this.§9!G§ == null)
         {
            return;
         }
         var _loc1_:MovieClip = §[$5§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §[$5§.getItemByName("BronzeTrophy").mClip;
         if(this.§9!G§.§9$<§)
         {
            this.§;"g§ = new §`"@§(_loc1_,this.§9!G§.§9$<§);
            this.§2"j§("TextField_Podium3",this.§9!G§.§9$<§.userName);
            _loc1_.visible = true;
            _loc2_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
            _loc2_.visible = false;
         }
         var _loc3_:MovieClip = §[$5§.getItemByName("SilverAvatarHolder").mClip;
         var _loc4_:MovieClip = §[$5§.getItemByName("SilverTrophy").mClip;
         if(this.§9!G§.second)
         {
            this.§3#,§ = new §`"@§(_loc3_,this.§9!G§.second);
            this.§2"j§("TextField_Podium2",this.§9!G§.second.userName);
            _loc3_.visible = true;
            _loc4_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc4_.visible = false;
         }
         var _loc5_:MovieClip = §[$5§.getItemByName("GoldAvatarHolder").mClip;
         var _loc6_:MovieClip = §[$5§.getItemByName("GoldTrophy").mClip;
         if(this.§9!G§.first)
         {
            this.§;#w§ = new §`"@§(_loc5_,this.§9!G§.first);
            this.§2"j§("TextField_Podium1",this.§9!G§.first.userName);
            _loc5_.visible = true;
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.visible = false;
            _loc6_.visible = false;
         }
      }
      
      protected function §2"j§(param1:String, param2:String) : void
      {
         var _loc3_:Object = §[$5§.getItemByName(param1);
         if(_loc3_)
         {
            §;"x§.§+>§((_loc3_ as §`"$§).§2"<§,param2);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§;!H§.STATE_NAME);
               break;
            case "CURRENT_TOURNAMENT":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§;!H§.STATE_NAME);
               break;
            case "showCredits":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§'#J§.STATE_NAME);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      private function §=3§() : void
      {
         this.§0!A§(new Wallet(this,true,false));
         this.§1!B§.§+F§.scaleY = 1.3;
         this.§1!B§.§+F§.scaleX = 1.3;
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.getItemByName("walletContainer").mClip;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
   }
}
