package §!"+§
{
   import §-![§.DisplayObject;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §;4§.§]!%§;
   import com.angrybirds.§4"6§;
   import flash.utils.Dictionary;
   
   public class §2!H§
   {
       
      
      protected var §7"'§:XML;
      
      protected var § m§:XML;
      
      protected var §[3§:Dictionary;
      
      protected var §,!c§:§^!Y§;
      
      protected var §4"5§:§,=§;
      
      protected var §2!N§:§@]§;
      
      public function §2!H§()
      {
         this.§[3§ = new Dictionary();
         super();
         this.§7"5§();
         this.§^#§();
         this.§9!F§();
      }
      
      protected function §7"5§() : void
      {
         this.§,!c§ = new §^!Y§();
      }
      
      protected function §^#§() : void
      {
         this.§4"5§ = new §,=§();
      }
      
      protected function §9!F§() : void
      {
         this.§2!N§ = new §@]§();
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
         var _loc13_:String = null;
         var _loc14_:int = 0;
         this.§7"'§ = param1;
         this.§,!c§.§"%§(this.§7"'§.Item_Materials,this.§7"'§.Material_Damage_Multipliers,this.§7"'§.Material_Velocity_Multipliers);
         this.§2!N§.§@!§(this.§7"'§.Item_Resources_Sounds);
         this.§4"5§.§0!L§(this.§7"'§.Item_Shapes);
         this.§[3§ = new Dictionary();
         for each(_loc2_ in this.§7"'§.Items.Item)
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
            _loc13_ = _loc2_.@particleJSONId;
            _loc14_ = int(_loc2_.@particleVariationCount);
            this.§&R§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         }
         this.§7!`§(this.§7"'§.SoundChannels);
      }
      
      public function §&R§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc14_:DisplayObject = null;
         var _loc13_:§ !S§;
         if(!(_loc13_ = !!param5 ? this.§4"5§.§-"§(param5) : null))
         {
            _loc14_ = §4"6§.§;!k§.§<a§.§#!r§(param1).getFrame(0);
            _loc13_ = new §]!G§(_loc14_.width * §2F§.§6+§ / 2,_loc14_.height * §2F§.§6+§ / 2);
            _loc14_.dispose();
         }
         this.§[3§[param1.toLowerCase()] = new §!o§(param1,param2,this.§,!c§.§2"4§(param3),this.§2!N§.§]z§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function §8!f§(param1:String) : §!o§
      {
         var _loc2_:§!o§ = this.§[3§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §7!M§(param1:String) : Array
      {
         var _loc3_:§!o§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§[3§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §"!p§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §7!`§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §]d§.§[!$§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §-Y§(param1:String) : Boolean
      {
         var _loc2_:§!o§ = this.§8!f§(param1);
         if(_loc2_)
         {
            return _loc2_.§8-§;
         }
         return true;
      }
      
      public function §>z§() : void
      {
         var levelItem:§!o§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§[3§)
         {
            try
            {
               animationDefinitions = levelItem.§>"6§();
               §4"6§.§;!k§.§<a§.§[+§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
