package §3>§
{
   import §3!S§.§<5§;
   import §>"2§.§8k§;
   import §`!w§.§^!$§;
   import flash.utils.Dictionary;
   
   public class §]!N§
   {
       
      
      protected var §^" §:XML;
      
      protected var §%!"§:XML;
      
      protected var §,[§:Dictionary;
      
      protected var §8!5§:§]V§;
      
      protected var §7!§:§-R§;
      
      protected var §0P§:§1M§;
      
      public function §]!N§()
      {
         this.§,[§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§+!y§();
         this.§;!u§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§8!5§ = new §]V§();
      }
      
      protected function §+!y§() : void
      {
         this.§7!§ = new §-R§();
      }
      
      protected function §;!u§() : void
      {
         this.§0P§ = new §1M§();
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
         this.§^" § = param1;
         this.§8!5§.§>"F§(this.§^" §.Item_Materials,this.§^" §.Material_Damage_Multipliers,this.§^" §.Material_Velocity_Multipliers);
         this.§0P§.§9!9§(this.§^" §.Item_Resources_Sounds);
         this.§7!§.§>L§(this.§^" §.Item_Shapes);
         this.§,[§ = new Dictionary();
         for each(_loc2_ in this.§^" §.Items.Item)
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
            this.§2"+§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§2"1§(this.§^" §.SoundChannels);
      }
      
      public function §2"+§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§,[§[param1.toLowerCase()] = new §-"8§(param1,param2,this.§8!5§.getMaterial(param3),this.§0P§.§0?§(param4),!!param5 ? this.§7!§.§4V§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function getItem(param1:String) : §-"8§
      {
         var _loc2_:§-"8§ = this.§,[§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §,!t§(param1:String) : Array
      {
         var _loc3_:§-"8§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§,[§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §@!]§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §2"1§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §^!$§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §^!$§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §^!$§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §<5§.§@6§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §6"+§(param1:String) : Boolean
      {
         var _loc2_:§-"8§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§-"8§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§,[§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §8k§.§;!]§.animationManager.§?+§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
