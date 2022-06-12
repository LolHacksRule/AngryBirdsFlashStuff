package §'i§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.§^!]§;
   import §62§.§0!t§;
   import §62§.§9o§;
   import §9!O§.§0x§;
   import §^!y§.§'"#§;
   import §^[§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §5A§ extends EventDispatcher implements §8p§, IEventDispatcher
   {
       
      
      private var §6!^§:§'!;§;
      
      private var §4!X§:§3^§;
      
      private var §=!3§:MovieClip;
      
      private var §3C§:MovieClip;
      
      private var §1<§:MovieClip;
      
      private var §`"%§:§`!T§;
      
      private var § !k§:§`!T§;
      
      private var §[!7§:§`!T§;
      
      private var §>!s§:§`!T§;
      
      private var §"3§:§`!T§;
      
      private var §>!S§:Boolean = false;
      
      private var §5!G§:Number = 1;
      
      private var §%!D§:int = 0;
      
      private var §]!3§:§="#§;
      
      private var §""8§:§="#§;
      
      private var §5!v§:§="#§;
      
      public function §5A§(param1:§'!;§)
      {
         super();
         this.§6!^§ = param1;
         this.addEventListener(§9o§.§,0§,this.§^j§);
         this.§6!^§.§8#§.addEventListener(§0!t§.CHANGE,this.§@^§);
         this.§6!^§.§8#§.addEventListener(§0!t§.§ 6§,this.§&!#§);
         this.§ !k§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_ProfileBar_Right") as §`!T§;
         this.§`"%§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_ProfileBar_Left") as §`!T§;
         this.§[!7§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Blocks_Small") as §`!T§;
         this.§>!s§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Bolts_Small") as §`!T§;
         this.§"3§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Coins_Small") as §`!T§;
         this.§]!3§ = this.§[!7§.getItemByName("Button_Add_Blocks") as §="#§;
         this.§""8§ = this.§[!7§.getItemByName("Button_Add_Bolts") as §="#§;
         this.§]!3§ = this.§"3§.getItemByName("Button_Add_Coins") as §="#§;
         this.§=!3§ = ((this.§ !k§.getItemByName("Container_XP_Bar") as §`!T§).getItemByName("MovieClip_XP_Progress_Small") as §%+§).mClip;
         this.§3C§ = ((this.§[!7§.getItemByName("Container_Blocks_Bar") as §`!T§).getItemByName("MovieClip_Blocks_Progress_Small") as §%+§).mClip;
         this.§1<§ = ((this.§>!s§.getItemByName("Container_Bolts_Bar") as §`!T§).getItemByName("MovieClip_Bolts_Progress_Small") as §%+§).mClip;
         param1.§+"2§.addEventListener(§0!t§.§+8§,this.§=[§);
         param1.§+"2§.addEventListener(§0!t§.§>!n§,this.§=[§);
         param1.§+"2§.addEventListener(§0!t§.§%"+§,this.§=[§);
      }
      
      protected function §=[§(param1:Event) : void
      {
         switch(param1.type)
         {
            case §0!t§.§+8§:
               §^!]§.§>!c§();
               break;
            case §0!t§.§>!n§:
               §^!]§.§ !]§();
               break;
            case §0!t§.§%"+§:
               §0x§.§2=§.§"""§(§0x§.§5!C§,1);
         }
      }
      
      protected function §&!#§(param1:Event) : void
      {
         §^!]§.§3"4§("We have run out of blocks! Buy me some new ones!");
      }
      
      private function §@^§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§3^§ = null;
         if(this.§6!^§.§8#§.§4!3§() != (AngryBirdsFP11.§>" § as §'"#§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§>" § as §'"#§).blocks;
            _loc3_ = this.§6!^§.§8#§.§4!3§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§5!G§ = _loc3_ / this.§%!D§;
            if(this.§6!^§.§8#§.§4!3§() < _loc2_)
            {
               _loc4_ = this.§3C§.scaleX;
               _loc5_ = this.§5!G§;
            }
            else if(this.§6!^§.§8#§.§4!3§() > _loc2_)
            {
               _loc4_ = this.§3C§.scaleX;
               _loc5_ = this.§5!G§;
            }
            _loc6_ = this.§1d§(_loc4_,_loc5_,§7!E§.§+!E§);
            (AngryBirdsFP11.§>" § as §'"#§).blocks = this.§6!^§.§8#§.§4!3§();
            _loc6_.play();
            this.§4a§();
         }
      }
      
      private function §8!>§() : void
      {
         var _loc1_:§3^§ = this.§1d§(0,1,§7!E§.§+!E§);
         _loc1_.play();
         ((this.§[!7§.getItemByName("Container_Blocks_Bar") as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).§!T§.toString());
      }
      
      private function §^j§(param1:§9o§ = null) : void
      {
         this.§%!D§ = (AngryBirdsFP11.§>" § as §'"#§).§!T§;
         this.§4a§();
         this.§2!s§();
         this.§<![§();
         this.§',§();
         var _loc2_:§3^§ = this.§,!i§();
         var _loc3_:Number = (AngryBirdsFP11.§>" § as §'"#§).§=!Q§ / (AngryBirdsFP11.§>" § as §'"#§).§!T§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§3^§ = this.§1d§(0,_loc3_);
         var _loc5_:§3^§ = this.§ !g§();
         this.§4!X§ = §7!E§.§2=§.§7#§(_loc2_,_loc4_,_loc5_);
         this.§4!X§.onComplete = this.§6"#§;
         this.§4!X§.play();
      }
      
      private function § !g§() : §3^§
      {
         var _loc2_:Number = (AngryBirdsFP11.§>" § as §'"#§).bolts / (AngryBirdsFP11.§>" § as §'"#§).boltsMax;
         this.§1<§.scaleX = 0;
         if(this.§4!X§ != null)
         {
            this.§4!X§.stop();
         }
         return §7!E§.§2=§.§<!C§(this.§1<§,{"scaleX":_loc2_},{"scaleX":0},2,§7!E§.§8""§);
      }
      
      private function §1d§(param1:Number, param2:Number, param3:Function = null) : §3^§
      {
         if(param3 == null)
         {
            param3 = §7!E§.§+!E§;
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
         this.§3C§.scaleX = param1;
         return §7!E§.§2=§.§<!C§(this.§3C§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §,!i§() : §3^§
      {
         var _loc1_:Number = (AngryBirdsFP11.§>" § as §'"#§).oldXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§>" § as §'"#§).newXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§=!3§.scaleX = _loc1_;
         return §7!E§.§2=§.§<!C§(this.§=!3§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§7!E§.§8""§);
      }
      
      private function §4a§() : void
      {
         ((this.§[!7§.getItemByName("Container_Blocks_Bar") as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).blocks.toString());
      }
      
      private function §2!s§() : void
      {
         (((this.§ !k§.getItemByName("Container_XP_Small") as §`!T§).getItemByName("Container_Profile_XP") as §`!T§).getItemByName("TextField_Progress_Level") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).§'L§().toString());
      }
      
      private function §<![§() : void
      {
         ((this.§>!s§.getItemByName("Container_Bolts_Bar") as §`!T§).getItemByName("TextField_Bolts_Small_Text") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).bolts.toString());
      }
      
      private function §',§() : void
      {
         ((this.§"3§.getItemByName("Container_Coins_Bar") as §`!T§).getItemByName("TextField_Coins_Small_Text") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).coins.toString());
      }
      
      private function §6"#§() : void
      {
         var _loc1_:§`!T§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Blocks_Small") as §`!T§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).blocks.toString());
         var _loc2_:§`!T§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Bolts_Small") as §`!T§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §`!T§).getItemByName("MovieClip_Blocks_Progress_Small") as §%+§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §`!T§).getItemByName("MovieClip_Bolts_Progress_Small") as §%+§).mClip;
      }
      
      public function initialize() : void
      {
         this.§^j§();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§>!S§)
         {
            this.§>!S§ = true;
            _loc2_ = (AngryBirdsFP11.§>" § as §'"#§).newXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp;
            this.§=!3§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§>" § as §'"#§).§=!Q§ / (AngryBirdsFP11.§>" § as §'"#§).§!T§;
            this.§3C§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§>" § as §'"#§).bolts / (AngryBirdsFP11.§>" § as §'"#§).boltsMax;
            this.§1<§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§>!S§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§>" § as §'"#§).newXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp;
         this.§=!3§.scaleX = 0;
         this.§=!3§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§>" § as §'"#§).§=!Q§ / (AngryBirdsFP11.§>" § as §'"#§).§!T§;
         this.§3C§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§>" § as §'"#§).bolts / (AngryBirdsFP11.§>" § as §'"#§).boltsMax;
         this.§1<§.scaleX = _loc3_;
         this.§8!>§();
      }
      
      public function §["$§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§>" § as §'"#§).§]!s§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§1!>§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
