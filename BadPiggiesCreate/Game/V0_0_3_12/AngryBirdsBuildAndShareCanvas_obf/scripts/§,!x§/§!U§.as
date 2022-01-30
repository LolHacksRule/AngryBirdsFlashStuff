package §,!x§
{
   import §-!@§.§6P§;
   import §-=§.§0"9§;
   import §-=§.§8"1§;
   import §0O§.§<!x§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §>";§.§#§;
   import §^H§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §!U§ extends EventDispatcher implements §]!'§, IEventDispatcher
   {
       
      
      private var §[",§:§]S§;
      
      private var §]w§:§+I§;
      
      private var §;!E§:MovieClip;
      
      private var §>!`§:MovieClip;
      
      private var §;!q§:MovieClip;
      
      private var §[&§:§+!?§;
      
      private var §33§:§+!?§;
      
      private var §68§:§+!?§;
      
      private var §^!y§:§+!?§;
      
      private var §>9§:§+!?§;
      
      private var §[x§:Boolean = false;
      
      private var §+E§:Number = 1;
      
      private var §<$§:int = 0;
      
      private var §2>§:§;!Z§;
      
      private var §'A§:§;!Z§;
      
      private var §9"#§:§;!Z§;
      
      public function §!U§(param1:§]S§)
      {
         super();
         this.§[",§ = param1;
         this.addEventListener(§0"9§.§[!M§,this.§var §);
         this.§[",§.§<" §.addEventListener(§8"1§.CHANGE,this.§`" §);
         this.§[",§.§<" §.addEventListener(§8"1§.§-!Z§,this.§3]§);
         this.§33§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_ProfileBar_Right") as §+!?§;
         this.§[&§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_ProfileBar_Left") as §+!?§;
         this.§68§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_Blocks_Small") as §+!?§;
         this.§^!y§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_Bolts_Small") as §+!?§;
         this.§>9§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_Coins_Small") as §+!?§;
         this.§2>§ = this.§68§.getItemByName("Button_Add_Blocks") as §;!Z§;
         this.§'A§ = this.§68§.getItemByName("Button_Add_Bolts") as §;!Z§;
         this.§2>§ = this.§>9§.getItemByName("Button_Add_Coins") as §;!Z§;
         this.§;!E§ = ((this.§33§.getItemByName("Container_XP_Bar") as §+!?§).getItemByName("MovieClip_XP_Progress_Small") as §;!P§).mClip;
         this.§>!`§ = ((this.§68§.getItemByName("Container_Blocks_Bar") as §+!?§).getItemByName("MovieClip_Blocks_Progress_Small") as §;!P§).mClip;
         this.§;!q§ = ((this.§^!y§.getItemByName("Container_Bolts_Bar") as §+!?§).getItemByName("MovieClip_Bolts_Progress_Small") as §;!P§).mClip;
         param1.§]!c§.addEventListener(§8"1§.§,!S§,this.§'`§);
         param1.§]!c§.addEventListener(§8"1§.§7!0§,this.§'`§);
         param1.§]!c§.addEventListener(§8"1§.§8"8§,this.§'`§);
      }
      
      protected function §'`§(param1:Event) : void
      {
         switch(param1.type)
         {
            case §8"1§.§,!S§:
               §6P§.§=!4§();
               break;
            case §8"1§.§7!0§:
               §6P§.§4! §();
               break;
            case §8"1§.§8"8§:
               §<!x§.§ "!§.§]!A§(§<!x§.§"Q§,1);
         }
      }
      
      protected function §3]§(param1:Event) : void
      {
         §6P§.§'!P§("We have run out of blocks! Buy me some new ones!");
      }
      
      private function §`" §(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§+I§ = null;
         if(this.§[",§.§<" §.§"3§() != (AngryBirdsFP11.§`!j§ as §#§).blocks)
         {
            _loc2_ = (AngryBirdsFP11.§`!j§ as §#§).blocks;
            _loc3_ = this.§[",§.§<" §.§"3§();
            _loc4_ = 0;
            _loc5_ = 0;
            this.§+E§ = _loc3_ / this.§<$§;
            if(this.§[",§.§<" §.§"3§() < _loc2_)
            {
               _loc4_ = this.§>!`§.scaleX;
               _loc5_ = this.§+E§;
            }
            else if(this.§[",§.§<" §.§"3§() > _loc2_)
            {
               _loc4_ = this.§>!`§.scaleX;
               _loc5_ = this.§+E§;
            }
            _loc6_ = this.§1!H§(_loc4_,_loc5_,§-!M§.§0!;§);
            (AngryBirdsFP11.§`!j§ as §#§).blocks = this.§[",§.§<" §.§"3§();
            _loc6_.play();
            this.§+x§();
         }
      }
      
      private function §<"'§() : void
      {
         var _loc1_:§+I§ = this.§1!H§(0,1,§-!M§.§0!;§);
         _loc1_.play();
         ((this.§68§.getItemByName("Container_Blocks_Bar") as §+!?§).getItemByName("TextField_Blocks_Progress_Small_Text") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).§5"#§.toString());
      }
      
      private function §var §(param1:§0"9§ = null) : void
      {
         this.§<$§ = (AngryBirdsFP11.§`!j§ as §#§).§5"#§;
         this.§+x§();
         this.§'"%§();
         this.§;!u§();
         this.§`<§();
         var _loc2_:§+I§ = this.§1Y§();
         var _loc3_:Number = (AngryBirdsFP11.§`!j§ as §#§).§'b§ / (AngryBirdsFP11.§`!j§ as §#§).§5"#§;
         if(!_loc3_)
         {
            _loc3_ = 1;
         }
         var _loc4_:§+I§ = this.§1!H§(0,_loc3_);
         var _loc5_:§+I§ = this.§=6§();
         this.§]w§ = §-!M§.§ "!§.§["!§(_loc2_,_loc4_,_loc5_);
         this.§]w§.onComplete = this.§<c§;
         this.§]w§.play();
      }
      
      private function §=6§() : §+I§
      {
         var _loc2_:Number = (AngryBirdsFP11.§`!j§ as §#§).bolts / (AngryBirdsFP11.§`!j§ as §#§).boltsMax;
         this.§;!q§.scaleX = 0;
         if(this.§]w§ != null)
         {
            this.§]w§.stop();
         }
         return §-!M§.§ "!§.§+d§(this.§;!q§,{"scaleX":_loc2_},{"scaleX":0},2,§-!M§.§ §);
      }
      
      private function §1!H§(param1:Number, param2:Number, param3:Function = null) : §+I§
      {
         if(param3 == null)
         {
            param3 = §-!M§.§0!;§;
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
         this.§>!`§.scaleX = param1;
         return §-!M§.§ "!§.§+d§(this.§>!`§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
      }
      
      private function §1Y§() : §+I§
      {
         var _loc1_:Number = (AngryBirdsFP11.§`!j§ as §#§).oldXp / (AngryBirdsFP11.§`!j§ as §#§).maxXp;
         var _loc2_:Number = (AngryBirdsFP11.§`!j§ as §#§).newXp / (AngryBirdsFP11.§`!j§ as §#§).maxXp;
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         this.§;!E§.scaleX = _loc1_;
         return §-!M§.§ "!§.§+d§(this.§;!E§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§-!M§.§ §);
      }
      
      private function §+x§() : void
      {
         ((this.§68§.getItemByName("Container_Blocks_Bar") as §+!?§).getItemByName("TextField_Blocks_Progress_Small_Text") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).blocks.toString());
      }
      
      private function §'"%§() : void
      {
         (((this.§33§.getItemByName("Container_XP_Small") as §+!?§).getItemByName("Container_Profile_XP") as §+!?§).getItemByName("TextField_Progress_Level") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).§#]§().toString());
      }
      
      private function §;!u§() : void
      {
         ((this.§^!y§.getItemByName("Container_Bolts_Bar") as §+!?§).getItemByName("TextField_Bolts_Small_Text") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).bolts.toString());
      }
      
      private function §`<§() : void
      {
         ((this.§>9§.getItemByName("Container_Coins_Bar") as §+!?§).getItemByName("TextField_Coins_Small_Text") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).coins.toString());
      }
      
      private function §<c§() : void
      {
         var _loc1_:§+!?§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_Blocks_Small") as §+!?§;
         _loc1_.getItemByName("Container_Blocks_Bar");
         ((_loc1_.getItemByName("Container_Blocks_Bar") as §+!?§).getItemByName("TextField_Blocks_Progress_Small_Text") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).blocks.toString());
         var _loc2_:§+!?§ = this.§[",§.§]!c§.§!!=§().getItemByName("Container_Bolts_Small") as §+!?§;
         _loc2_.getItemByName("Container_Bolts_Bar");
         var _loc3_:MovieClip = ((_loc1_.getItemByName("Container_Blocks_Bar") as §+!?§).getItemByName("MovieClip_Blocks_Progress_Small") as §;!P§).mClip;
         var _loc4_:MovieClip = ((_loc2_.getItemByName("Container_Bolts_Bar") as §+!?§).getItemByName("MovieClip_Bolts_Progress_Small") as §;!P§).mClip;
      }
      
      public function initialize() : void
      {
         this.§var §();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§[x§)
         {
            this.§[x§ = true;
            _loc2_ = (AngryBirdsFP11.§`!j§ as §#§).newXp / (AngryBirdsFP11.§`!j§ as §#§).maxXp;
            this.§;!E§.scaleX = _loc2_;
            _loc3_ = (AngryBirdsFP11.§`!j§ as §#§).§'b§ / (AngryBirdsFP11.§`!j§ as §#§).§5"#§;
            this.§>!`§.scaleX = _loc3_;
            _loc4_ = (AngryBirdsFP11.§`!j§ as §#§).bolts / (AngryBirdsFP11.§`!j§ as §#§).boltsMax;
            this.§;!q§.scaleX = _loc4_;
         }
      }
      
      public function activate() : void
      {
         this.§[x§ = false;
         var _loc1_:Number = (AngryBirdsFP11.§`!j§ as §#§).newXp / (AngryBirdsFP11.§`!j§ as §#§).maxXp;
         this.§;!E§.scaleX = 0;
         this.§;!E§.scaleX = _loc1_;
         var _loc2_:Number = (AngryBirdsFP11.§`!j§ as §#§).§'b§ / (AngryBirdsFP11.§`!j§ as §#§).§5"#§;
         this.§>!`§.scaleX = _loc2_;
         var _loc3_:Number = (AngryBirdsFP11.§`!j§ as §#§).bolts / (AngryBirdsFP11.§`!j§ as §#§).boltsMax;
         this.§;!q§.scaleX = _loc3_;
         this.§<"'§();
      }
      
      public function §]!+§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§`!j§ as §#§).§;!O§;
         if(_loc2_ == null)
         {
            return true;
         }
         for each(_loc3_ in _loc2_)
         {
            if(Inventory.§]h§(param1,_loc3_))
            {
               return true;
            }
         }
         return false;
      }
   }
}
