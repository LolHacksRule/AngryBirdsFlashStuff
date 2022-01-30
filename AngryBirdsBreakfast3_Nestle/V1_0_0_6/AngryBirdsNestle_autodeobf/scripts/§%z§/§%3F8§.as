package §%z§
{
   import §0!$§.§#!-§;
   import §@!6§.§3!5§;
   import com.angrybirds.§6!E§;
   import flash.utils.Dictionary;
   
   public class §?8§
   {
       
      
      protected var §7!O§:XML;
      
      protected var §6H§:XML;
      
      protected var § !C§:Dictionary;
      
      protected var §9C§:§`o§;
      
      protected var §"" §:§"O§;
      
      protected var §%B§:§!"!§;
      
      public function §?8§()
      {
         this.§ !C§ = new Dictionary();
         super();
         this.§2!F§();
         this.§^!?§();
         this.§="!§();
      }
      
      protected function §2!F§() : void
      {
         this.§9C§ = new §`o§();
      }
      
      protected function §^!?§() : void
      {
         this.§"" § = new §"O§();
      }
      
      protected function §="!§() : void
      {
         this.§%B§ = new §!"!§();
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = false;
         this.§7!O§ = param1;
         this.§9C§.§7!%§(this.§7!O§.Item_Materials,this.§7!O§.Material_Damage_Multipliers,this.§7!O§.Material_Velocity_Multipliers);
         this.§%B§.§!!F§(this.§7!O§.Item_Resources_Sounds);
         this.§"" §.§[V§(this.§7!O§.Item_Shapes);
         this.§ !C§ = new Dictionary();
         for each(_loc2_ in this.§7!O§.Items.Item)
         {
            _loc3_ = _loc2_.@id;
            _loc4_ = _loc2_.@type;
            _loc5_ = _loc2_.@material;
            _loc6_ = _loc2_.@sounds;
            _loc7_ = _loc2_.@shape;
            _loc8_ = _loc2_.@score;
            _loc9_ = _loc2_.@category;
            _loc10_ = _loc2_.@health;
            _loc11_ = 1;
            _loc12_ = String(_loc2_.@front).toLowerCase() == "true";
            this.§2! §(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§-D§(this.§7!O§.SoundChannels);
      }
      
      public function §2! §(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§ !C§[param1.toLowerCase()] = new §9!n§(param1,param2,this.§9C§.§6&§(param3),this.§%B§.§0!2§(param4),!!param5 ? this.§"" §.§2!,§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function §4!1§(param1:String) : §9!n§
      {
         var _loc2_:§9!n§ = this.§ !C§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §6"2§(param1:String) : Array
      {
         var _loc3_:§9!n§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§ !C§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §8!<§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §-D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §#!-§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §#!-§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §#!-§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §3!5§.§`Z§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §[!q§(param1:String) : Boolean
      {
         var _loc2_:§9!n§ = this.§4!1§(param1);
         if(_loc2_)
         {
            return _loc2_.§3!l§;
         }
         return true;
      }
      
      public function §@!$§() : void
      {
         var levelItem:§9!n§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§ !C§)
         {
            try
            {
               animationDefinitions = levelItem.§#!#§();
               §6!E§.§7I§.§-h§.§6Q§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
