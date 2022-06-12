package §7"2§
{
   import § !%§.§^2§;
   import §5!k§.§%"§;
   import §5!k§.§6"6§;
   import §8!7§.Inventory;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §&!w§ extends EventDispatcher implements §!"1§
   {
       
      
      private var §"Z§:§;!5§;
      
      private var §]0§:§^!#§;
      
      private var §?"'§:MovieClip;
      
      private var §2!L§:MovieClip;
      
      private var §'j§:MovieClip;
      
      private var §"!E§:§>"-§;
      
      private var §&!y§:§>"-§;
      
      private var §;!D§:§>"-§;
      
      private var §>j§:§>"-§;
      
      private var §,%§:§>"-§;
      
      private var § !W§:Boolean = false;
      
      private var §5!m§:Number = 1;
      
      private var §6'§:int = 0;
      
      public function §&!w§(param1:§;!5§)
      {
         super();
         this.§"Z§ = param1;
         this.addEventListener(§%"§.§"!u§,this.§6A§);
         this.§"Z§.§94§.addEventListener(§6"6§.CHANGE,this.§@h§);
         this.§&!y§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_ProfileBar_Right") as §>"-§;
         this.§"!E§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_ProfileBar_Left") as §>"-§;
         this.§;!D§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_Blocks_Small") as §>"-§;
         this.§>j§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_Bolts_Small") as §>"-§;
         this.§,%§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_Coins_Small") as §>"-§;
         this.§?"'§ = ((this.§&!y§.getItemByName("Container_XP_Bar") as §>"-§).getItemByName("MovieClip_XP_Progress_Small") as §&5§).mClip;
         this.§2!L§ = ((this.§;!D§.getItemByName("Container_Blocks_Bar") as §>"-§).getItemByName("MovieClip_Blocks_Progress_Small") as §&5§).mClip;
         this.§'j§ = ((this.§>j§.getItemByName("Container_Bolts_Bar") as §>"-§).getItemByName("MovieClip_Bolts_Progress_Small") as §&5§).mClip;
      }
      
      private function §@h§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§^!#§ = null;
         if(this.§"Z§.§94§.§=<§() != (AngryBirdsFP11.§5!c§ as §^2§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§5!c§ as §^2§).blocks;
            _loc3_ = this.§"Z§.§94§.§=<§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§5!m§ = _loc3_ / this.§6'§;
            if(this.§"Z§.§94§.§=<§() < _loc2_)
            {
               _loc4_ = this.§2!L§.scaleX;
               _loc5_ = this.§5!m§;
            }
            else if(this.§"Z§.§94§.§=<§() > _loc2_)
            {
               _loc4_ = this.§2!L§.scaleX;
               _loc5_ = this.§5!m§;
            }
            _loc6_ = this.§6_§(_loc4_,_loc5_,§"g§.§7!§);
            (AngryBirdsFP11.§5!c§ as §^2§).blocks = this.§"Z§.§94§.§=<§();
            _loc6_.play();
            this.§'!=§();
         }
      }
      
      private function §6A§(param1:§%"§ = null) : void
      {
         this.§6'§ = (AngryBirdsFP11.§5!c§ as §^2§).§[4§;
         this.§'!=§();
         this.§3!R§();
         this.§1!7§();
         this.§7s§();
         var _loc2_:§^!#§ = this.§'!§();
         var _loc3_:Number = (AngryBirdsFP11.§5!c§ as §^2§).§&N§ / (AngryBirdsFP11.§5!c§ as §^2§).§[4§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§^!#§ = this.§6_§(0,_loc3_);
         var _loc5_:§^!#§ = this.§-P§();
         this.§]0§ = §"g§.§'!o§.§3!p§(_loc2_,_loc4_,_loc5_);
         this.§]0§.onComplete = this.§>!h§;
         this.§]0§.play();
      }
      
      private function §-P§() : §^!#§
      {
         var _loc2_:Number = (AngryBirdsFP11.§5!c§ as §^2§).bolts / (AngryBirdsFP11.§5!c§ as §^2§).boltsMax;
         this.§'j§.scaleX = 0;
         if(this.§]0§ != null)
         {
            this.§]0§.stop();
         }
         return §"g§.§'!o§.§while§(this.§'j§,{"scaleX":_loc2_},{"scaleX":0},2,§"g§.§'!9§);
      }
      
      private function §6_§(param1:Number, param2:Number, param3:Function = null) : §^!#§
      {
         if(param3 == null)
         {
            param3 = §"g§.§7!§;
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
         this.§2!L§.scaleX = param1;
         return §"g§.§'!o§.§while§(this.§2!L§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §'!§() : §^!#§
      {
         var _loc1_:Number = (AngryBirdsFP11.§5!c§ as §^2§).oldXp / (AngryBirdsFP11.§5!c§ as §^2§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§5!c§ as §^2§).newXp / (AngryBirdsFP11.§5!c§ as §^2§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§?"'§.scaleX = _loc1_;
         return §"g§.§'!o§.§while§(this.§?"'§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§"g§.§'!9§);
      }
      
      private function §'!=§() : void
      {
         ((this.§;!D§.getItemByName("Container_Blocks_Bar") as §>"-§).getItemByName("TextField_Blocks_Progress_Small_Text") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).blocks.toString());
      }
      
      private function §3!R§() : void
      {
         (((this.§&!y§.getItemByName("Container_XP_Small") as §>"-§).getItemByName("Container_Profile_XP") as §>"-§).getItemByName("TextField_Progress_Level") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).§^!1§().toString());
      }
      
      private function §1!7§() : void
      {
         ((this.§>j§.getItemByName("Container_Bolts_Bar") as §>"-§).getItemByName("TextField_Bolts_Small_Text") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).bolts.toString());
      }
      
      private function §7s§() : void
      {
         ((this.§,%§.getItemByName("Container_Coins_Bar") as §>"-§).getItemByName("TextField_Coins_Small_Text") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).coins.toString());
      }
      
      private function §>!h§() : void
      {
         var _loc1_:§>"-§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_Blocks_Small") as §>"-§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §>"-§).getItemByName("TextField_Blocks_Progress_Small_Text") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).blocks.toString());
         var _loc2_:§>"-§ = this.§"Z§.§[U§.§^A§().getItemByName("Container_Bolts_Small") as §>"-§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §>"-§).getItemByName("MovieClip_Blocks_Progress_Small") as §&5§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §>"-§).getItemByName("MovieClip_Bolts_Progress_Small") as §&5§).mClip;
      }
      
      public function initialize() : void
      {
         this.§6A§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§ !W§)
         {
            this.§ !W§ = true;
            _loc2_ = (AngryBirdsFP11.§5!c§ as §^2§).newXp / (AngryBirdsFP11.§5!c§ as §^2§).maxXp;
            this.§?"'§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§5!c§ as §^2§).§&N§ / (AngryBirdsFP11.§5!c§ as §^2§).§[4§;
            this.§2!L§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§5!c§ as §^2§).bolts / (AngryBirdsFP11.§5!c§ as §^2§).boltsMax;
            this.§'j§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§ !W§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§5!c§ as §^2§).newXp / (AngryBirdsFP11.§5!c§ as §^2§).maxXp;
         this.§?"'§.scaleX = 0;
         this.§?"'§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§5!c§ as §^2§).§&N§ / (AngryBirdsFP11.§5!c§ as §^2§).§[4§;
         this.§2!L§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§5!c§ as §^2§).bolts / (AngryBirdsFP11.§5!c§ as §^2§).boltsMax;
         this.§'j§.scaleX = _loc3_;
      }
      
      public function §#!§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§5!c§ as §^2§).§`=§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§;j§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
