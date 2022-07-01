package §2!5§
{
   import §"!2§.§>9§;
   import §1g§.;
   import §9!l§.Inventory;
   import §;!§.§8V§;
   import §;!§.§?!]§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7[§ extends EventDispatcher implements §4!]§
   {
       
      
      private var §!^§:§0!X§;
      
      private var §=!e§:§8!K§;
      
      private var §-!h§:MovieClip;
      
      private var §6!s§:MovieClip;
      
      private var §="3§:MovieClip;
      
      private var §"!O§:§;!u§;
      
      private var §'!I§:§;!u§;
      
      private var § w§:§;!u§;
      
      private var §1"+§:§;!u§;
      
      private var §1>§:§;!u§;
      
      private var §1!u§:Boolean = false;
      
      private var § var§:Number = 1;
      
      private var §?!1§:int = 0;
      
      public function §7[§(param1:§0!X§)
      {
         super();
         this.§!^§ = param1;
         this.addEventListener(§?!]§.§;"!§,this.§>C§);
         this.§!^§.§@s§.addEventListener(§8V§.CHANGE,this.§4!1§);
         this.§!^§.§@s§.addEventListener(§8V§.§3!w§,this.§5'§);
         this.§'!I§ = this.§!^§.§!e§.§<8§().getItemByName("Container_ProfileBar_Right") as §;!u§;
         this.§"!O§ = this.§!^§.§!e§.§<8§().getItemByName("Container_ProfileBar_Left") as §;!u§;
         this.§ w§ = this.§!^§.§!e§.§<8§().getItemByName("Container_Blocks_Small") as §;!u§;
         this.§1"+§ = this.§!^§.§!e§.§<8§().getItemByName("Container_Bolts_Small") as §;!u§;
         this.§1>§ = this.§!^§.§!e§.§<8§().getItemByName("Container_Coins_Small") as §;!u§;
         this.§-!h§ = ((this.§'!I§.getItemByName("Container_XP_Bar") as §;!u§).getItemByName("MovieClip_XP_Progress_Small") as §%!`§).mClip;
         this.§6!s§ = ((this.§ w§.getItemByName("Container_Blocks_Bar") as §;!u§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!`§).mClip;
         this.§="3§ = ((this.§1"+§.getItemByName("Container_Bolts_Bar") as §;!u§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!`§).mClip;
      }
      
      protected function §5'§(param1:Event) : void
      {
         var _loc2_:§#6§ = new §#6§(§8!O§.§'!J§.Views.PopupView_Prompt[0],this.§!^§.§!e§.§<8§(),"We have run out of blocks! Buy me some new ones!");
         _loc2_.open();
      }
      
      private function §4!1§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§8!K§ = null;
         if(this.§!^§.§@s§.§>!§() != (AngryBirdsFP11.§8!I§ as §>9§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§8!I§ as §>9§).blocks;
            _loc3_ = this.§!^§.§@s§.§>!§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§ var§ = _loc3_ / this.§?!1§;
            if(this.§!^§.§@s§.§>!§() < _loc2_)
            {
               _loc4_ = this.§6!s§.scaleX;
               _loc5_ = this.§ var§;
            }
            else if(this.§!^§.§@s§.§>!§() > _loc2_)
            {
               _loc4_ = this.§6!s§.scaleX;
               _loc5_ = this.§ var§;
            }
            _loc6_ = this.§1"1§(_loc4_,_loc5_,§%!Z§.§1R§);
            (AngryBirdsFP11.§8!I§ as §>9§).blocks = this.§!^§.§@s§.§>!§();
            _loc6_.play();
            this.§4!0§();
         }
      }
      
      private function §^!k§() : void
      {
         var _loc1_:§8!K§ = this.§1"1§(0,1,§%!Z§.§1R§);
         _loc1_.play();
         ((this.§ w§.getItemByName("Container_Blocks_Bar") as §;!u§).getItemByName("TextField_Blocks_Progress_Small_Text") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).§1!m§.toString());
      }
      
      private function §>C§(param1:§?!]§ = null) : void
      {
         this.§?!1§ = (AngryBirdsFP11.§8!I§ as §>9§).§1!m§;
         this.§4!0§();
         this.§#p§();
         this.§1'§();
         this.§<!4§();
         var _loc2_:§8!K§ = this.§!!#§();
         var _loc3_:Number = (AngryBirdsFP11.§8!I§ as §>9§).§=!S§ / (AngryBirdsFP11.§8!I§ as §>9§).§1!m§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§8!K§ = this.§1"1§(0,_loc3_);
         var _loc5_:§8!K§ = this.§0!'§();
         this.§=!e§ = §%!Z§.§if §.§"U§(_loc2_,_loc4_,_loc5_);
         this.§=!e§.onComplete = this.§]""§;
         this.§=!e§.play();
      }
      
      private function §0!'§() : §8!K§
      {
         var _loc2_:Number = (AngryBirdsFP11.§8!I§ as §>9§).bolts / (AngryBirdsFP11.§8!I§ as §>9§).boltsMax;
         this.§="3§.scaleX = 0;
         if(this.§=!e§ != null)
         {
            this.§=!e§.stop();
         }
         return §%!Z§.§if §.§"<§(this.§="3§,{"scaleX":_loc2_},{"scaleX":0},2,§%!Z§.§,!%§);
      }
      
      private function §1"1§(param1:Number, param2:Number, param3:Function = null) : §8!K§
      {
         if(param3 == null)
         {
            param3 = §%!Z§.§1R§;
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
         this.§6!s§.scaleX = param1;
         return §%!Z§.§if §.§"<§(this.§6!s§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §!!#§() : §8!K§
      {
         var _loc1_:Number = (AngryBirdsFP11.§8!I§ as §>9§).oldXp / (AngryBirdsFP11.§8!I§ as §>9§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§8!I§ as §>9§).newXp / (AngryBirdsFP11.§8!I§ as §>9§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§-!h§.scaleX = _loc1_;
         return §%!Z§.§if §.§"<§(this.§-!h§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§%!Z§.§,!%§);
      }
      
      private function §4!0§() : void
      {
         ((this.§ w§.getItemByName("Container_Blocks_Bar") as §;!u§).getItemByName("TextField_Blocks_Progress_Small_Text") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).blocks.toString());
      }
      
      private function §#p§() : void
      {
         (((this.§'!I§.getItemByName("Container_XP_Small") as §;!u§).getItemByName("Container_Profile_XP") as §;!u§).getItemByName("TextField_Progress_Level") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).§]!F§().toString());
      }
      
      private function §1'§() : void
      {
         ((this.§1"+§.getItemByName("Container_Bolts_Bar") as §;!u§).getItemByName("TextField_Bolts_Small_Text") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).bolts.toString());
      }
      
      private function §<!4§() : void
      {
         ((this.§1>§.getItemByName("Container_Coins_Bar") as §;!u§).getItemByName("TextField_Coins_Small_Text") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).coins.toString());
      }
      
      private function §]""§() : void
      {
         var _loc1_:§;!u§ = this.§!^§.§!e§.§<8§().getItemByName("Container_Blocks_Small") as §;!u§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §;!u§).getItemByName("TextField_Blocks_Progress_Small_Text") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).blocks.toString());
         var _loc2_:§;!u§ = this.§!^§.§!e§.§<8§().getItemByName("Container_Bolts_Small") as §;!u§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §;!u§).getItemByName("MovieClip_Blocks_Progress_Small") as §%!`§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §;!u§).getItemByName("MovieClip_Bolts_Progress_Small") as §%!`§).mClip;
      }
      
      public function initialize() : void
      {
         this.§>C§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§1!u§)
         {
            this.§1!u§ = true;
            _loc2_ = (AngryBirdsFP11.§8!I§ as §>9§).newXp / (AngryBirdsFP11.§8!I§ as §>9§).maxXp;
            this.§-!h§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§8!I§ as §>9§).§=!S§ / (AngryBirdsFP11.§8!I§ as §>9§).§1!m§;
            this.§6!s§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§8!I§ as §>9§).bolts / (AngryBirdsFP11.§8!I§ as §>9§).boltsMax;
            this.§="3§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§1!u§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§8!I§ as §>9§).newXp / (AngryBirdsFP11.§8!I§ as §>9§).maxXp;
         this.§-!h§.scaleX = 0;
         this.§-!h§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§8!I§ as §>9§).§=!S§ / (AngryBirdsFP11.§8!I§ as §>9§).§1!m§;
         this.§6!s§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§8!I§ as §>9§).bolts / (AngryBirdsFP11.§8!I§ as §>9§).boltsMax;
         this.§="3§.scaleX = _loc3_;
         this.§^!k§();
      }
      
      public function §?!b§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§8!I§ as §>9§).§]F§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§&!o§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
