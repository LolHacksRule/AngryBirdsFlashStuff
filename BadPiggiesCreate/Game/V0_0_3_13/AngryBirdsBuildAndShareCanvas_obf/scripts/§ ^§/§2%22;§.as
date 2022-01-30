package § ^§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §""§.§]!^§;
   import §-!H§.§0!]§;
   import §7!g§.§0!q§;
   import §7!g§.§?!i§;
   import §;W§.Inventory;
   import §=!&§.§3h§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §2";§ extends EventDispatcher implements §-!"§, IEventDispatcher
   {
       
      
      private var §`5§:§0c§;
      
      private var §'T§:§-!m§;
      
      private var §-"8§:MovieClip;
      
      private var §&y§:MovieClip;
      
      private var §>q§:MovieClip;
      
      private var §]!s§:§1H§;
      
      private var §#s§:§1H§;
      
      private var §0!-§:§1H§;
      
      private var §^">§:§1H§;
      
      private var §,%§:§1H§;
      
      private var §switch§:Boolean = false;
      
      private var § l§:Number = 1;
      
      private var §]!w§:int = 0;
      
      private var §#9§:§8K§;
      
      private var § !e§:§8K§;
      
      private var §^Y§:§8K§;
      
      public function §2";§(param1:§0c§)
      {
         super();
         this.§`5§ = param1;
         this.addEventListener(§0!q§.§]3§,this.§?@§);
         this.§`5§.§6%§.addEventListener(§?!i§.CHANGE,this.§#!§);
         this.§`5§.§6%§.addEventListener(§?!i§.§&?§,this.§["4§);
         this.§#s§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_ProfileBar_Right") as §1H§;
         this.§]!s§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_ProfileBar_Left") as §1H§;
         this.§0!-§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_Blocks_Small") as §1H§;
         this.§^">§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_Bolts_Small") as §1H§;
         this.§,%§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_Coins_Small") as §1H§;
         this.§#9§ = this.§0!-§.getItemByName("Button_Add_Blocks") as §8K§;
         this.§ !e§ = this.§0!-§.getItemByName("Button_Add_Bolts") as §8K§;
         this.§#9§ = this.§,%§.getItemByName("Button_Add_Coins") as §8K§;
         this.§-"8§ = ((this.§#s§.getItemByName("Container_XP_Bar") as §1H§).getItemByName("MovieClip_XP_Progress_Small") as §%!7§).mClip;
         this.§&y§ = ((this.§0!-§.getItemByName("Container_Blocks_Bar") as §1H§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!7§).mClip;
         this.§>q§ = ((this.§^">§.getItemByName("Container_Bolts_Bar") as §1H§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!7§).mClip;
         param1.§!A§.addEventListener(§?!i§.§6j§,this.§+q§);
         param1.§!A§.addEventListener(§?!i§.§>!q§,this.§+q§);
         param1.§!A§.addEventListener(§?!i§.§ !C§,this.§+q§);
      }
      
      protected function §+q§(param1:Event) : void
      {
         switch(param1.type)
         {
            case §?!i§.§6j§:
               §]!^§.§2!P§();
               break;
            case §?!i§.§>!q§:
               §]!^§.§>!'§();
               break;
            case §?!i§.§ !C§:
               §3h§.§7!?§.§]!f§(§3h§.§@!>§,1);
         }
      }
      
      protected function §["4§(param1:Event) : void
      {
         §]!^§.§8!8§("We have run out of blocks! Buy me some new ones!");
      }
      
      private function §#!§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§-!m§ = null;
         if(this.§`5§.§6%§.§ W§() != (AngryBirdsFP11.§"!c§ as §0!]§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§"!c§ as §0!]§).blocks;
            _loc3_ = this.§`5§.§6%§.§ W§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§ l§ = _loc3_ / this.§]!w§;
            if(this.§`5§.§6%§.§ W§() < _loc2_)
            {
               _loc4_ = this.§&y§.scaleX;
               _loc5_ = this.§ l§;
            }
            else if(this.§`5§.§6%§.§ W§() > _loc2_)
            {
               _loc4_ = this.§&y§.scaleX;
               _loc5_ = this.§ l§;
            }
            _loc6_ = this.§&!m§(_loc4_,_loc5_,§"L§.§6_§);
            (AngryBirdsFP11.§"!c§ as §0!]§).blocks = this.§`5§.§6%§.§ W§();
            _loc6_.play();
            this.§;t§();
         }
      }
      
      private function §8!C§() : void
      {
         var _loc1_:§-!m§ = this.§&!m§(0,1,§"L§.§6_§);
         _loc1_.play();
         ((this.§0!-§.getItemByName("Container_Blocks_Bar") as §1H§).getItemByName("TextField_Blocks_Progress_Small_Text") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).§<`§.toString());
      }
      
      private function §?@§(param1:§0!q§ = null) : void
      {
         this.§]!w§ = (AngryBirdsFP11.§"!c§ as §0!]§).§<`§;
         this.§;t§();
         this.§`[§();
         this.§9!f§();
         this.§-%§();
         var _loc2_:§-!m§ = this.§;!K§();
         var _loc3_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).§2!T§ / (AngryBirdsFP11.§"!c§ as §0!]§).§<`§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§-!m§ = this.§&!m§(0,_loc3_);
         var _loc5_:§-!m§ = this.§'!§();
         this.§'T§ = §"L§.§7!?§.§#!x§(_loc2_,_loc4_,_loc5_);
         this.§'T§.onComplete = this.§1!b§;
         this.§'T§.play();
      }
      
      private function §'!§() : §-!m§
      {
         var _loc2_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).bolts / (AngryBirdsFP11.§"!c§ as §0!]§).boltsMax;
         this.§>q§.scaleX = 0;
         if(this.§'T§ != null)
         {
            this.§'T§.stop();
         }
         return §"L§.§7!?§.§4!P§(this.§>q§,{"scaleX":_loc2_},{"scaleX":0},2,§"L§.§@v§);
      }
      
      private function §&!m§(param1:Number, param2:Number, param3:Function = null) : §-!m§
      {
         if(param3 == null)
         {
            param3 = §"L§.§6_§;
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
         this.§&y§.scaleX = param1;
         return §"L§.§7!?§.§4!P§(this.§&y§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §;!K§() : §-!m§
      {
         var _loc1_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).oldXp / (AngryBirdsFP11.§"!c§ as §0!]§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).newXp / (AngryBirdsFP11.§"!c§ as §0!]§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§-"8§.scaleX = _loc1_;
         return §"L§.§7!?§.§4!P§(this.§-"8§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§"L§.§@v§);
      }
      
      private function §;t§() : void
      {
         ((this.§0!-§.getItemByName("Container_Blocks_Bar") as §1H§).getItemByName("TextField_Blocks_Progress_Small_Text") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).blocks.toString());
      }
      
      private function §`[§() : void
      {
         (((this.§#s§.getItemByName("Container_XP_Small") as §1H§).getItemByName("Container_Profile_XP") as §1H§).getItemByName("TextField_Progress_Level") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).§<"4§().toString());
      }
      
      private function §9!f§() : void
      {
         ((this.§^">§.getItemByName("Container_Bolts_Bar") as §1H§).getItemByName("TextField_Bolts_Small_Text") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).bolts.toString());
      }
      
      private function §-%§() : void
      {
         ((this.§,%§.getItemByName("Container_Coins_Bar") as §1H§).getItemByName("TextField_Coins_Small_Text") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).coins.toString());
      }
      
      private function §1!b§() : void
      {
         var _loc1_:§1H§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_Blocks_Small") as §1H§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §1H§).getItemByName("TextField_Blocks_Progress_Small_Text") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).blocks.toString());
         var _loc2_:§1H§ = this.§`5§.§!A§.§2!o§().getItemByName("Container_Bolts_Small") as §1H§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §1H§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!7§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §1H§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!7§).mClip;
      }
      
      public function initialize() : void
      {
         this.§?@§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§switch§)
         {
            this.§switch§ = true;
            _loc2_ = (AngryBirdsFP11.§"!c§ as §0!]§).newXp / (AngryBirdsFP11.§"!c§ as §0!]§).maxXp;
            this.§-"8§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§"!c§ as §0!]§).§2!T§ / (AngryBirdsFP11.§"!c§ as §0!]§).§<`§;
            this.§&y§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§"!c§ as §0!]§).bolts / (AngryBirdsFP11.§"!c§ as §0!]§).boltsMax;
            this.§>q§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§switch§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).newXp / (AngryBirdsFP11.§"!c§ as §0!]§).maxXp;
         this.§-"8§.scaleX = 0;
         this.§-"8§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).§2!T§ / (AngryBirdsFP11.§"!c§ as §0!]§).§<`§;
         this.§&y§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).bolts / (AngryBirdsFP11.§"!c§ as §0!]§).boltsMax;
         this.§>q§.scaleX = _loc3_;
         this.§8!C§();
      }
      
      public function §8!b§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§"!c§ as §0!]§).§<!§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§[%§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
