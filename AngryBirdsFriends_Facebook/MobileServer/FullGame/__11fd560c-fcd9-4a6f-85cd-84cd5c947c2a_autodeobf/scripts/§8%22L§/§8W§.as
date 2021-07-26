package §8"L§
{
   import §3$"§.§4t§;
   import §;#D§.§3#U§;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §]!6§.§6Y§;
   import §^"S§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class §8W§
   {
       
      
      protected var §4W§:XML;
      
      protected var §5"5§:XML;
      
      protected var §6$!§:Dictionary;
      
      protected var §@#'§:§`"!§;
      
      protected var §[!>§:§ c§;
      
      protected var §&#x§:§?$>§;
      
      protected var §0#=§:§^c§;
      
      public function §8W§()
      {
         this.§6$!§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§9n§();
         this.§8#x§();
         this.§!Z§();
      }
      
      private function §!Z§() : void
      {
         this.§0#=§ = new §^c§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§@#'§ = new §`"!§();
      }
      
      protected function §9n§() : void
      {
         this.§[!>§ = new § c§();
      }
      
      protected function §8#x§() : void
      {
         this.§&#x§ = new §?$>§();
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:* = false;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc17_:* = false;
         var _loc18_:Boolean = false;
         var _loc19_:String = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         this.§4W§ = param1;
         this.§@#'§.§-X§(this.§4W§.Item_Materials,this.§4W§.Material_Damage_Multipliers,this.§4W§.Material_Velocity_Multipliers);
         this.§&#x§.§0"V§(this.§4W§.Item_Resources_Sounds);
         this.§[!>§.§%m§(this.§4W§.Item_Shapes);
         this.§6$!§ = new Dictionary();
         for each(_loc2_ in this.§4W§.Items.Item)
         {
            _loc3_ = _loc2_.@id;
            _loc4_ = _loc2_.@type;
            _loc5_ = _loc2_.@material;
            _loc6_ = _loc2_.@sounds;
            _loc7_ = _loc2_.@shape;
            _loc8_ = _loc2_.@destroyedScoreInc;
            _loc9_ = _loc2_.@floatingScoreFont;
            _loc10_ = -1;
            if("@damageScore" in _loc2_)
            {
               _loc10_ = _loc2_.@damageScore;
            }
            _loc11_ = _loc2_.@category;
            _loc12_ = _loc2_.@strength;
            _loc13_ = 1;
            _loc14_ = String(_loc2_.@front).toLowerCase() == "true";
            _loc15_ = _loc2_.@particleJSONId;
            _loc16_ = int(_loc2_.@particleVariationCount);
            _loc17_ = String(_loc2_.@disableBirdPassThrough).toLowerCase() == "true";
            _loc18_ = _loc2_.@collision != undefined ? String(_loc2_.@collision).toLowerCase() == "true" : true;
            _loc19_ = _loc2_.@textureType;
            _loc20_ = _loc2_.@bubbleDamage;
            _loc21_ = -1;
            if("@particleAmount" in _loc2_)
            {
               _loc21_ = _loc2_.@particleAmount;
            }
            this.§]#U§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc21_,_loc17_,_loc18_,_loc19_,_loc20_);
         }
         this.§""%§(this.§4W§.SoundChannels);
      }
      
      public function §]#U§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number, param12:Boolean, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = true, param18:String = null, param19:int = 0) : void
      {
         var _loc22_:§+"L§ = null;
         var _loc23_:DisplayObject = null;
         var _loc20_:§!!C§;
         if(!(_loc20_ = !!param5 ? this.§[!>§.§#!U§(param5) : null))
         {
            _loc23_ = §3#U§.§#$4§.animationManager.getAnimation(param1).getFrame(0);
            _loc20_ = new §?!i§(_loc23_.width * §%!q§.§6q§ / 2,_loc23_.height * §%!q§.§6q§ / 2,param1);
            _loc23_.dispose();
         }
         var _loc21_:§?"b§ = this.§@#'§.getMaterial(param3);
         if(param4 != "")
         {
            _loc22_ = this.getSoundResource(param4);
         }
         else if(_loc21_ != null)
         {
            _loc22_ = this.getSoundResource(_loc21_.sounds);
         }
         this.§6$!§[param1.toLowerCase()] = new §4U§(param1,param2,_loc21_,_loc22_,_loc20_,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,false,param17,param18,param19);
      }
      
      public function getItem(param1:String) : §4U§
      {
         var _loc2_:§4U§ = this.§6$!§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §#!U§(param1:String) : §!!C§
      {
         return this.§[!>§.§#!U§(param1);
      }
      
      public function §7h§(param1:String) : Array
      {
         var _loc3_:§4U§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§6$!§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §`B§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §""%§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §!"p§.§5#4§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §7#N§(param1:String) : Boolean
      {
         var _loc2_:§4U§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §3m§(param1:Array = null) : void
      {
         var levelItem:§4U§ = null;
         var add:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§6$!§)
         {
            try
            {
               add = true;
               if(onlyItems && onlyItems.length > 0)
               {
                  i = onlyItems.indexOf(levelItem);
                  add = onlyItems.indexOf(levelItem) != -1;
               }
               if(add)
               {
                  animationDefinitions = levelItem.getAnimationDefinitions();
                  §3#U§.§#$4§.animationManager.§3"5§(levelItem.itemName,animationDefinitions);
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §>G§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§6$!§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §"M§(param1:String) : §4t§
      {
         return this.§0#=§.§?u§(param1);
      }
      
      public function getSoundResource(param1:String) : §+"L§
      {
         return this.§&#x§.getSoundResource(param1);
      }
   }
}
