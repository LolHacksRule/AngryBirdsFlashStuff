package §1" §
{
   import §"_§.§!"8§;
   import §"_§.§^!J§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §>!d§.§,$§;
   import §?!'§.§]!]§;
   import §^!k§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §%&§ extends EventDispatcher implements §4!x§, IEventDispatcher
   {
       
      
      private var §9J§:§#!j§;
      
      private var §4"0§:§=!r§;
      
      private var §^!<§:MovieClip;
      
      private var §!"'§:MovieClip;
      
      private var §-"!§:MovieClip;
      
      private var §,!'§:§6W§;
      
      private var §`R§:§6W§;
      
      private var §+!i§:§6W§;
      
      private var §1"&§:§6W§;
      
      private var §-!C§:§6W§;
      
      private var §15§:Boolean = false;
      
      private var § 2§:Number = 1;
      
      private var §<y§:int = 0;
      
      private var §1]§:§9"8§;
      
      private var §,!Y§:§9"8§;
      
      private var §2!a§:§9"8§;
      
      public function §%&§(param1:§#!j§)
      {
         super();
         this.§9J§ = param1;
         this.addEventListener(§^!J§.§[!H§,this.§#" §);
         this.§9J§.§0"!§.addEventListener(§!"8§.CHANGE,this.§;"1§);
         this.§9J§.§0"!§.addEventListener(§!"8§.§%"-§,this.§6v§);
         this.§`R§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_ProfileBar_Right") as §6W§;
         this.§,!'§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_ProfileBar_Left") as §6W§;
         this.§+!i§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Blocks_Small") as §6W§;
         this.§1"&§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Bolts_Small") as §6W§;
         this.§-!C§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Coins_Small") as §6W§;
         this.§1]§ = this.§+!i§.getItemByName("Button_Add_Blocks") as §9"8§;
         this.§,!Y§ = this.§+!i§.getItemByName("Button_Add_Bolts") as §9"8§;
         this.§1]§ = this.§-!C§.getItemByName("Button_Add_Coins") as §9"8§;
         this.§^!<§ = ((this.§`R§.getItemByName("Container_XP_Bar") as §6W§).getItemByName("MovieClip_XP_Progress_Small") as §@u§).mClip;
         this.§!"'§ = ((this.§+!i§.getItemByName("Container_Blocks_Bar") as §6W§).getItemByName("MovieClip_Blocks_Progress_Small") as §@u§).mClip;
         this.§-"!§ = ((this.§1"&§.getItemByName("Container_Bolts_Bar") as §6W§).getItemByName("MovieClip_Bolts_Progress_Small") as §@u§).mClip;
         param1.§<!_§.addEventListener(§!"8§.§#!e§,this.§1U§);
         param1.§<!_§.addEventListener(§!"8§.§5!c§,this.§1U§);
         param1.§<!_§.addEventListener(§!"8§.§@m§,this.§1U§);
      }
      
      protected function §1U§(param1:Event) : void
      {
         switch(param1.type)
         {
            case §!"8§.§#!e§:
               §]!]§.§!!<§();
               break;
            case §!"8§.§5!c§:
               §]!]§.§-!T§();
               break;
            case §!"8§.§@m§:
               §,$§.§[E§.§9!j§(§,$§.§53§,1);
         }
      }
      
      protected function §6v§(param1:Event) : void
      {
         §]!]§.§;"%§("We have run out of blocks! Buy me some new ones!");
      }
      
      private function §;"1§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§=!r§ = null;
         if(this.§9J§.§0"!§.§=!I§() != (AngryBirdsFP11.§>!7§ as §+`§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§>!7§ as §+`§).blocks;
            _loc3_ = this.§9J§.§0"!§.§=!I§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§ 2§ = _loc3_ / this.§<y§;
            if(this.§9J§.§0"!§.§=!I§() < _loc2_)
            {
               _loc4_ = this.§!"'§.scaleX;
               _loc5_ = this.§ 2§;
            }
            else if(this.§9J§.§0"!§.§=!I§() > _loc2_)
            {
               _loc4_ = this.§!"'§.scaleX;
               _loc5_ = this.§ 2§;
            }
            _loc6_ = this.§3!C§(_loc4_,_loc5_,§7I§.§,S§);
            (AngryBirdsFP11.§>!7§ as §+`§).blocks = this.§9J§.§0"!§.§=!I§();
            _loc6_.play();
            this.§4a§();
         }
      }
      
      private function §%"6§(param1:Number) : void
      {
         if(!param1 || param1 > 1)
         {
            param1 = 1;
         }
         var _loc2_:§=!r§ = this.§3!C§(0,param1,§7I§.§,S§);
         _loc2_.play();
         ((this.§+!i§.getItemByName("Container_Blocks_Bar") as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
      }
      
      private function §#" §(param1:§^!J§ = null) : void
      {
         this.§<y§ = (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
         this.§4a§();
         this.§%k§();
         this.§6N§();
         this.§6!R§();
         var _loc2_:§=!r§ = this.§[!W§();
         var _loc3_:Number = (AngryBirdsFP11.§>!7§ as §+`§).blocks / (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§=!r§ = this.§3!C§(0,_loc3_);
         var _loc5_:§=!r§ = this.§<!<§();
         this.§4"0§ = §7I§.§[E§.§]g§(_loc2_,_loc4_,_loc5_);
         this.§4"0§.onComplete = this.§@!R§;
         this.§4"0§.play();
      }
      
      private function §<!<§() : §=!r§
      {
         var _loc2_:Number = (AngryBirdsFP11.§>!7§ as §+`§).bolts / (AngryBirdsFP11.§>!7§ as §+`§).boltsMax;
         this.§-"!§.scaleX = 0;
         if(this.§4"0§ != null)
         {
            this.§4"0§.stop();
         }
         return §7I§.§[E§.§ ";§(this.§-"!§,{"scaleX":_loc2_},{"scaleX":0},2,§7I§.§;!C§);
      }
      
      private function §3!C§(param1:Number, param2:Number, param3:Function = null) : §=!r§
      {
         if(param3 == null)
         {
            param3 = §7I§.§,S§;
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
         this.§!"'§.scaleX = param1;
         return §7I§.§[E§.§ ";§(this.§!"'§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §[!W§() : §=!r§
      {
         var _loc1_:Number = (AngryBirdsFP11.§>!7§ as §+`§).oldXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§>!7§ as §+`§).newXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§^!<§.scaleX = _loc1_;
         return §7I§.§[E§.§ ";§(this.§^!<§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§7I§.§;!C§);
      }
      
      private function §4a§() : void
      {
         ((this.§+!i§.getItemByName("Container_Blocks_Bar") as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
      }
      
      private function §%k§() : void
      {
         (((this.§`R§.getItemByName("Container_XP_Small") as §6W§).getItemByName("Container_Profile_XP") as §6W§).getItemByName("TextField_Progress_Level") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).§]!T§().toString());
      }
      
      private function §6N§() : void
      {
         ((this.§1"&§.getItemByName("Container_Bolts_Bar") as §6W§).getItemByName("TextField_Bolts_Small_Text") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).bolts.toString());
      }
      
      private function §6!R§() : void
      {
         ((this.§-!C§.getItemByName("Container_Coins_Bar") as §6W§).getItemByName("TextField_Coins_Small_Text") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).coins.toString());
      }
      
      private function §@!R§() : void
      {
         var _loc1_:§6W§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Blocks_Small") as §6W§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §6W§).getItemByName("TextField_Blocks_Progress_Small_Text") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).blocks.toString());
         var _loc2_:§6W§ = this.§9J§.§<!_§.§"p§().getItemByName("Container_Bolts_Small") as §6W§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §6W§).getItemByName("MovieClip_Blocks_Progress_Small") as §@u§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §6W§).getItemByName("MovieClip_Bolts_Progress_Small") as §@u§).mClip;
      }
      
      public function initialize() : void
      {
         this.§#" §();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§15§)
         {
            this.§15§ = true;
            _loc2_ = (AngryBirdsFP11.§>!7§ as §+`§).newXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
            this.§^!<§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§>!7§ as §+`§).blocks / (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
            this.§!"'§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§>!7§ as §+`§).bolts / (AngryBirdsFP11.§>!7§ as §+`§).boltsMax;
            this.§-"!§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§15§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§>!7§ as §+`§).newXp / (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
         this.§^!<§.scaleX = 0;
         this.§^!<§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§>!7§ as §+`§).blocks / (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
         this.§!"'§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§>!7§ as §+`§).bolts / (AngryBirdsFP11.§>!7§ as §+`§).boltsMax;
         this.§-"!§.scaleX = _loc3_;
         this.§%"6§(_loc2_);
      }
      
      public function §'-§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§>!7§ as §+`§).§^1§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§^!D§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
