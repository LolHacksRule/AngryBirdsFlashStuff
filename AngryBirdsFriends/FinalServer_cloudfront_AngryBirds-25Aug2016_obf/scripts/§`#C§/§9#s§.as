package §`#C§
{
   import §!x§.§4"d§;
   import §2]§.§5"z§;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §?§.§>"$§;
   import flash.utils.Dictionary;
   
   public class §9#s§
   {
       
      
      protected var §5$+§:XML;
      
      protected var §;!O§:XML;
      
      protected var §5&§:Dictionary;
      
      protected var §3"z§:§;$0§;
      
      protected var §&"'§:§<!t§;
      
      protected var §0#$§:§;p§;
      
      protected var §8!<§:§'""§;
      
      public function §9#s§()
      {
         this.§5&§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§-#U§();
         this.§<!C§();
         this.§=X§();
      }
      
      private function §=X§() : void
      {
         this.§8!<§ = new §'""§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§3"z§ = new §;$0§();
      }
      
      protected function §-#U§() : void
      {
         this.§&"'§ = new §<!t§();
      }
      
      protected function §<!C§() : void
      {
         this.§0#$§ = new §;p§();
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
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:* = false;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:* = false;
         var _loc17_:Boolean = false;
         var _loc18_:String = null;
         this.§5$+§ = param1;
         this.§3"z§.§8"^§(this.§5$+§.Item_Materials,this.§5$+§.Material_Damage_Multipliers,this.§5$+§.Material_Velocity_Multipliers);
         this.§0#$§.§!#6§(this.§5$+§.Item_Resources_Sounds);
         this.§&"'§.§8T§(this.§5$+§.Item_Shapes);
         this.§5&§ = new Dictionary();
         for each(_loc2_ in this.§5$+§.Items.Item)
         {
            _loc3_ = _loc2_.@id;
            _loc4_ = _loc2_.@type;
            _loc5_ = _loc2_.@material;
            _loc6_ = _loc2_.@sounds;
            _loc7_ = _loc2_.@shape;
            _loc8_ = _loc2_.@destroyedScoreInc;
            _loc9_ = -1;
            if("@damageScore" in _loc2_)
            {
               _loc9_ = _loc2_.@damageScore;
            }
            _loc10_ = _loc2_.@category;
            _loc11_ = _loc2_.@strength;
            _loc12_ = 1;
            _loc13_ = String(_loc2_.@front).toLowerCase() == "true";
            _loc14_ = _loc2_.@particleJSONId;
            _loc15_ = int(_loc2_.@particleVariationCount);
            _loc16_ = String(_loc2_.@disableBirdPassThrough).toLowerCase() == "true";
            _loc17_ = _loc2_.@collision != undefined ? String(_loc2_.@collision).toLowerCase() == "true" : true;
            _loc18_ = _loc2_.@textureType;
            this.§3#3§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
         }
         this.§!"-§(this.§5$+§.SoundChannels);
      }
      
      public function §3#3§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:int, param8:String, param9:int, param10:Number, param11:Boolean, param12:String = "", param13:int = 1, param14:Boolean = false, param15:Boolean = true, param16:String = null) : void
      {
         var _loc18_:DisplayObject = null;
         var _loc17_:§-"L§;
         if(!(_loc17_ = !!param5 ? this.§&"'§.§3#d§(param5) : null))
         {
            _loc18_ = §>"$§.§3#'§.animationManager.getAnimation(param1).getFrame(0);
            _loc17_ = new §3"F§(_loc18_.width * §#!,§.§?$#§ / 2,_loc18_.height * §#!,§.§?$#§ / 2,param1);
            _loc18_.dispose();
         }
         this.§5&§[param1.toLowerCase()] = new §8K§(param1,param2,this.§3"z§.getMaterial(param3),this.§0#$§.getSoundResource(param4),_loc17_,param6,param7,param8,param9,param10,param11,param12,param13,param14,false,param15,param16);
      }
      
      public function getItem(param1:String) : §8K§
      {
         var _loc2_:§8K§ = this.§5&§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §3#d§(param1:String) : §-"L§
      {
         return this.§&"'§.§3#d§(param1);
      }
      
      public function §7"N§(param1:String) : Array
      {
         var _loc3_:§8K§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§5&§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §7!L§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §!"-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §4"d§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §4"d§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §4"d§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §#$+§.§9"]§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §?h§(param1:String) : Boolean
      {
         var _loc2_:§8K§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §!B§(param1:Array = null) : void
      {
         var levelItem:§8K§ = null;
         var add:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§5&§)
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
                  §>"$§.§3#'§.animationManager.§3!A§(levelItem.itemName,animationDefinitions);
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §0#§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§5&§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §,!^§(param1:String) : §5"z§
      {
         return this.§8!<§.§@,§(param1);
      }
   }
}
