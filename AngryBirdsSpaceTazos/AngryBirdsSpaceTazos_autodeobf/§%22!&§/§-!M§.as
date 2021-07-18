package §"!&§
{
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §3"#§.§<!O§;
   import flash.utils.Dictionary;
   
   public class §-!M§
   {
       
      
      protected var §[Z§:XML;
      
      protected var §7<§:XML;
      
      protected var §1"0§:Dictionary;
      
      protected var §]X§:§8!T§;
      
      protected var §0M§:§4]§;
      
      protected var §3%§:§%o§;
      
      public function §-!M§()
      {
         this.§1"0§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§ R§();
         this.§>"#§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§]X§ = new §8!T§();
      }
      
      protected function § R§() : void
      {
         this.§0M§ = new §4]§();
      }
      
      protected function §>"#§() : void
      {
         this.§3%§ = new §%o§();
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
         this.§[Z§ = param1;
         this.§]X§.§#K§(this.§[Z§.Item_Materials,this.§[Z§.Material_Damage_Multipliers,this.§[Z§.Material_Velocity_Multipliers);
         this.§3%§.§?O§(this.§[Z§.Item_Resources_Sounds);
         this.§0M§.§7-§(this.§[Z§.Item_Shapes);
         this.§1"0§ = new Dictionary();
         for each(_loc2_ in this.§[Z§.Items.Item)
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
            this.§=V§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§4k§(this.§[Z§.SoundChannels);
      }
      
      public function §=V§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§1"0§[param1.toLowerCase()] = new §8X§(param1,param2,this.§]X§.getMaterial(param3),this.§3%§.§ V§(param4),!!param5 ? this.§0M§.§;!u§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function getItem(param1:String) : §8X§
      {
         var _loc2_:§8X§ = this.§1"0§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §"!W§(param1:String) : Array
      {
         var _loc3_:§8X§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§1"0§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §&!y§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §4k§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §2!@§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §2!@§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §2!@§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §<!O§.§;!D§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §@!#§(param1:String) : Boolean
      {
         var _loc2_:§8X§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§8X§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§1"0§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §9q§.§>!L§.animationManager.§'x§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
