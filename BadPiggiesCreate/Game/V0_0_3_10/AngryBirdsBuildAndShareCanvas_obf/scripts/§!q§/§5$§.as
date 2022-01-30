package §!q§
{
   import §%!Z§.§`L§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§`G§;
   import §1!p§.§`!#§;
   import §3;§.§#!C§;
   import §3;§.§7!k§;
   import §4!t§.§1!=§;
   import §9!z§.Inventory;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §5$§ extends EventDispatcher implements §2j§
   {
       
      
      private var §5!V§:§84§;
      
      private var §8O§:§^F§;
      
      private var §?!$§:MovieClip;
      
      private var §46§:MovieClip;
      
      private var §5"0§:MovieClip;
      
      private var §!"!§:§7!a§;
      
      private var §>!B§:§7!a§;
      
      private var §;""§:§7!a§;
      
      private var §7E§:§7!a§;
      
      private var §`3§:§7!a§;
      
      private var §+!L§:Boolean = false;
      
      private var §9!m§:Number = 1;
      
      private var §9e§:int = 0;
      
      public function §5$§(param1:§84§)
      {
         super();
         this.§5!V§ = param1;
         this.addEventListener(§7!k§.§6!^§,this.§90§);
         this.§5!V§.§"j§.addEventListener(§#!C§.CHANGE,this.§`P§);
         this.§5!V§.§"j§.addEventListener(§#!C§.§`k§,this.§5!^§);
         this.§>!B§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_ProfileBar_Right") as §7!a§;
         this.§!"!§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_ProfileBar_Left") as §7!a§;
         this.§;""§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_Blocks_Small") as §7!a§;
         this.§7E§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_Bolts_Small") as §7!a§;
         this.§`3§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_Coins_Small") as §7!a§;
         this.§?!$§ = ((this.§>!B§.getItemByName("Container_XP_Bar") as §7!a§).getItemByName("MovieClip_XP_Progress_Small") as §%!9§).mClip;
         this.§46§ = ((this.§;""§.getItemByName("Container_Blocks_Bar") as §7!a§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!9§).mClip;
         this.§5"0§ = ((this.§7E§.getItemByName("Container_Bolts_Bar") as §7!a§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!9§).mClip;
      }
      
      protected function §5!^§(param1:Event) : void
      {
         var _loc2_:§`L§ = new §`L§(§1!=§.§8X§.Views.PopupView_Prompt[0],this.§5!V§.§<B§.§#Y§(),"We have run out of blocks! Buy me some new ones!");
         _loc2_.open();
      }
      
      private function §`P§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§^F§ = null;
         if(this.§5!V§.§"j§.§7@§() != (AngryBirdsFP11.§<U§ as §`!#§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§<U§ as §`!#§).blocks;
            _loc3_ = this.§5!V§.§"j§.§7@§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§9!m§ = _loc3_ / this.§9e§;
            if(this.§5!V§.§"j§.§7@§() < _loc2_)
            {
               _loc4_ = this.§46§.scaleX;
               _loc5_ = this.§9!m§;
            }
            else if(this.§5!V§.§"j§.§7@§() > _loc2_)
            {
               _loc4_ = this.§46§.scaleX;
               _loc5_ = this.§9!m§;
            }
            _loc6_ = this.§@e§(_loc4_,_loc5_,§<y§.§6[§);
            (AngryBirdsFP11.§<U§ as §`!#§).blocks = this.§5!V§.§"j§.§7@§();
            _loc6_.play();
            this.§=n§();
         }
      }
      
      private function §false§() : void
      {
         var _loc1_:§^F§ = this.§@e§(0,1,§<y§.§6[§);
         _loc1_.play();
         ((this.§;""§.getItemByName("Container_Blocks_Bar") as §7!a§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).§+y§.toString());
      }
      
      private function §90§(param1:§7!k§ = null) : void
      {
         this.§9e§ = (AngryBirdsFP11.§<U§ as §`!#§).§+y§;
         this.§=n§();
         this.§#!W§();
         this.§3x§();
         this.§@l§();
         var _loc2_:§^F§ = this.§7!T§();
         var _loc3_:Number = (AngryBirdsFP11.§<U§ as §`!#§).§#!n§ / (AngryBirdsFP11.§<U§ as §`!#§).§+y§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§^F§ = this.§@e§(0,_loc3_);
         var _loc5_:§^F§ = this.§#!4§();
         this.§8O§ = §<y§.§,l§.§'!^§(_loc2_,_loc4_,_loc5_);
         this.§8O§.onComplete = this.§8!D§;
         this.§8O§.play();
      }
      
      private function §#!4§() : §^F§
      {
         var _loc2_:Number = (AngryBirdsFP11.§<U§ as §`!#§).bolts / (AngryBirdsFP11.§<U§ as §`!#§).boltsMax;
         this.§5"0§.scaleX = 0;
         if(this.§8O§ != null)
         {
            this.§8O§.stop();
         }
         return §<y§.§,l§.§]!C§(this.§5"0§,{"scaleX":_loc2_},{"scaleX":0},2,§<y§.§9!=§);
      }
      
      private function §@e§(param1:Number, param2:Number, param3:Function = null) : §^F§
      {
         if(param3 == null)
         {
            param3 = §<y§.§6[§;
         }
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param2 < 0)
         {
            param2 = 0;
         }
         if(param2 > 1)
         {
            param2 = 1;
         }
         this.§46§.scaleX = param1;
         return §<y§.§,l§.§]!C§(this.§46§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §7!T§() : §^F§
      {
         var _loc1_:Number = (AngryBirdsFP11.§<U§ as §`!#§).oldXp / (AngryBirdsFP11.§<U§ as §`!#§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§<U§ as §`!#§).newXp / (AngryBirdsFP11.§<U§ as §`!#§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§?!$§.scaleX = _loc1_;
         return §<y§.§,l§.§]!C§(this.§?!$§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§<y§.§9!=§);
      }
      
      private function §=n§() : void
      {
         ((this.§;""§.getItemByName("Container_Blocks_Bar") as §7!a§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).blocks.toString());
      }
      
      private function §#!W§() : void
      {
         (((this.§>!B§.getItemByName("Container_XP_Small") as §7!a§).getItemByName("Container_Profile_XP") as §7!a§).getItemByName("TextField_Progress_Level") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).§8j§().toString());
      }
      
      private function §3x§() : void
      {
         ((this.§7E§.getItemByName("Container_Bolts_Bar") as §7!a§).getItemByName("TextField_Bolts_Small_Text") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).bolts.toString());
      }
      
      private function §@l§() : void
      {
         ((this.§`3§.getItemByName("Container_Coins_Bar") as §7!a§).getItemByName("TextField_Coins_Small_Text") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).coins.toString());
      }
      
      private function §8!D§() : void
      {
         var _loc1_:§7!a§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_Blocks_Small") as §7!a§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §7!a§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).blocks.toString());
         var _loc2_:§7!a§ = this.§5!V§.§<B§.§#Y§().getItemByName("Container_Bolts_Small") as §7!a§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §7!a§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!9§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §7!a§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!9§).mClip;
      }
      
      public function initialize() : void
      {
         this.§90§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§+!L§)
         {
            this.§+!L§ = true;
            _loc2_ = (AngryBirdsFP11.§<U§ as §`!#§).newXp / (AngryBirdsFP11.§<U§ as §`!#§).maxXp;
            this.§?!$§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§<U§ as §`!#§).§#!n§ / (AngryBirdsFP11.§<U§ as §`!#§).§+y§;
            this.§46§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§<U§ as §`!#§).bolts / (AngryBirdsFP11.§<U§ as §`!#§).boltsMax;
            this.§5"0§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§+!L§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§<U§ as §`!#§).newXp / (AngryBirdsFP11.§<U§ as §`!#§).maxXp;
         this.§?!$§.scaleX = 0;
         this.§?!$§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§<U§ as §`!#§).§#!n§ / (AngryBirdsFP11.§<U§ as §`!#§).§+y§;
         this.§46§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§<U§ as §`!#§).bolts / (AngryBirdsFP11.§<U§ as §`!#§).boltsMax;
         this.§5"0§.scaleX = _loc3_;
         this.§false§();
      }
      
      public function §7Y§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§<U§ as §`!#§).§=!k§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§[`§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
