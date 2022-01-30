package §]!b§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §,m§.§?"%§;
   import §,m§.§[n§;
   import §9e§.§"!e§;
   import §@!H§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0!'§ extends EventDispatcher implements §9h§
   {
       
      
      private var §8O§:§]?§;
      
      private var §?4§:§;!5§;
      
      private var §continue§:MovieClip;
      
      private var § !4§:MovieClip;
      
      private var §@Y§:MovieClip;
      
      private var §<7§:§ use§;
      
      private var §=!x§:§ use§;
      
      private var §>"1§:§ use§;
      
      private var §[!"§:§ use§;
      
      private var §2!W§:§ use§;
      
      private var §2" §:Boolean = false;
      
      private var §%i§:Number = 1;
      
      private var §[]§:int = 0;
      
      public function §0!'§(param1:§]?§)
      {
         super();
         this.§8O§ = param1;
         this.addEventListener(§[n§.§&V§,this.§&!e§);
         this.§8O§.§4+§.addEventListener(§?"%§.CHANGE,this.§"!s§);
         this.§=!x§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_ProfileBar_Right") as § use§;
         this.§<7§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_ProfileBar_Left") as § use§;
         this.§>"1§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_Blocks_Small") as § use§;
         this.§[!"§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_Bolts_Small") as § use§;
         this.§2!W§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_Coins_Small") as § use§;
         this.§continue§ = ((this.§=!x§.getItemByName("Container_XP_Bar") as § use§).getItemByName("MovieClip_XP_Progress_Small") as §<!5§).mClip;
         this.§ !4§ = ((this.§>"1§.getItemByName("Container_Blocks_Bar") as § use§).getItemByName("MovieClip_Blocks_Progress_Small") as §<!5§).mClip;
         this.§@Y§ = ((this.§[!"§.getItemByName("Container_Bolts_Bar") as § use§).getItemByName("MovieClip_Bolts_Progress_Small") as §<!5§).mClip;
      }
      
      private function §"!s§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;!5§ = null;
         if(this.§8O§.§4+§.§!J§() != (AngryBirdsFP11.§8!v§ as §"!e§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§8!v§ as §"!e§).blocks;
            _loc3_ = this.§8O§.§4+§.§!J§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§%i§ = _loc3_ / this.§[]§;
            if(this.§8O§.§4+§.§!J§() < _loc2_)
            {
               _loc4_ = this.§ !4§.scaleX;
               _loc5_ = this.§%i§;
            }
            else if(this.§8O§.§4+§.§!J§() > _loc2_)
            {
               _loc4_ = this.§ !4§.scaleX;
               _loc5_ = this.§%i§;
            }
            _loc6_ = this.§?&§(_loc4_,_loc5_,§"!5§.§0!1§);
            (AngryBirdsFP11.§8!v§ as §"!e§).blocks = this.§8O§.§4+§.§!J§();
            _loc6_.play();
            this.§[!1§();
         }
      }
      
      private function §&!e§(param1:§[n§ = null) : void
      {
         this.§[]§ = (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§;
         this.§[!1§();
         this.§14§();
         this.§'E§();
         this.§>y§();
         var _loc2_:§;!5§ = this.§`!b§();
         var _loc3_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).§]!a§ / (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§;!5§ = this.§?&§(0,_loc3_);
         var _loc5_:§;!5§ = this.§6!G§();
         this.§?4§ = §"!5§.§9j§.§&>§(_loc2_,_loc4_,_loc5_);
         this.§?4§.onComplete = this.§5!D§;
         this.§?4§.play();
      }
      
      private function §6!G§() : §;!5§
      {
         var _loc2_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).bolts / (AngryBirdsFP11.§8!v§ as §"!e§).boltsMax;
         this.§@Y§.scaleX = 0;
         if(this.§?4§ != null)
         {
            this.§?4§.stop();
         }
         return §"!5§.§9j§.§4!p§(this.§@Y§,{"scaleX":_loc2_},{"scaleX":0},2,§"!5§.§1a§);
      }
      
      private function §?&§(param1:Number, param2:Number, param3:String = "bounce_out") : §;!5§
      {
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
         this.§ !4§.scaleX = param1;
         return §"!5§.§9j§.§4!p§(this.§ !4§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §`!b§() : §;!5§
      {
         var _loc1_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).oldXp / (AngryBirdsFP11.§8!v§ as §"!e§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).newXp / (AngryBirdsFP11.§8!v§ as §"!e§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§continue§.scaleX = _loc1_;
         return §"!5§.§9j§.§4!p§(this.§continue§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§"!5§.§1a§);
      }
      
      private function §[!1§() : void
      {
         ((this.§>"1§.getItemByName("Container_Blocks_Bar") as § use§).getItemByName("TextField_Blocks_Progress_Small_Text") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).blocks.toString());
      }
      
      private function §14§() : void
      {
         (((this.§=!x§.getItemByName("Container_XP_Small") as § use§).getItemByName("Container_Profile_XP") as § use§).getItemByName("TextField_Progress_Level") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).§0!C§().toString());
      }
      
      private function §'E§() : void
      {
         ((this.§[!"§.getItemByName("Container_Bolts_Bar") as § use§).getItemByName("TextField_Bolts_Small_Text") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).bolts.toString());
      }
      
      private function §>y§() : void
      {
         ((this.§2!W§.getItemByName("Container_Coins_Bar") as § use§).getItemByName("TextField_Coins_Small_Text") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).coins.toString());
      }
      
      private function §5!D§() : void
      {
         var _loc1_:§ use§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_Blocks_Small") as § use§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as § use§).getItemByName("TextField_Blocks_Progress_Small_Text") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).blocks.toString());
         var _loc2_:§ use§ = this.§8O§.§%H§.§<!9§().getItemByName("Container_Bolts_Small") as § use§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as § use§).getItemByName("MovieClip_Blocks_Progress_Small") as §<!5§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as § use§).getItemByName("MovieClip_Bolts_Progress_Small") as §<!5§).mClip;
      }
      
      public function initialize() : void
      {
         this.§&!e§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§2" §)
         {
            this.§2" § = true;
            _loc2_ = (AngryBirdsFP11.§8!v§ as §"!e§).newXp / (AngryBirdsFP11.§8!v§ as §"!e§).maxXp;
            this.§continue§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§8!v§ as §"!e§).§]!a§ / (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§;
            this.§ !4§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§8!v§ as §"!e§).bolts / (AngryBirdsFP11.§8!v§ as §"!e§).boltsMax;
            this.§@Y§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§2" § = false;
         var _loc1_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).newXp / (AngryBirdsFP11.§8!v§ as §"!e§).maxXp;
         this.§continue§.scaleX = 0;
         this.§continue§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).§]!a§ / (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§;
         this.§ !4§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).bolts / (AngryBirdsFP11.§8!v§ as §"!e§).boltsMax;
         this.§@Y§.scaleX = _loc3_;
      }
      
      public function isCategoryAvailable(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§8!v§ as §"!e§).§4!-§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§-!"§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
