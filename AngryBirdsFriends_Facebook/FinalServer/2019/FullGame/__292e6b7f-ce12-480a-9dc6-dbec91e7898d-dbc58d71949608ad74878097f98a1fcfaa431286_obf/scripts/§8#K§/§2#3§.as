package §8#K§
{
   import § #>§.§3b§;
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §3"V§.§ b§;
   import §6"p§.§^"t§;
   import §?#z§.§]$?§;
   import flash.utils.Dictionary;
   
   public class §2#3§
   {
       
      
      protected var §,$9§:XML;
      
      protected var §"!b§:XML;
      
      protected var §2p§:Dictionary;
      
      protected var §3!v§:§<!E§;
      
      protected var §"#P§:§?"G§;
      
      protected var §[""§:§3!@§;
      
      protected var §8!O§:§=#;§;
      
      public function §2#3§()
      {
         this.§2p§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§-"f§();
         this.§-#,§();
         this.§,$$§();
      }
      
      private function §,$$§() : void
      {
         this.§8!O§ = new §=#;§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§3!v§ = new §<!E§();
      }
      
      protected function §-"f§() : void
      {
         this.§"#P§ = new §?"G§();
      }
      
      protected function §-#,§() : void
      {
         this.§[""§ = new §3!@§();
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
         var _loc22_:* = false;
         this.§,$9§ = param1;
         this.§3!v§.§+#1§(this.§,$9§.Item_Materials,this.§,$9§.Material_Damage_Multipliers,this.§,$9§.Material_Velocity_Multipliers);
         this.§[""§.§!"M§(this.§,$9§.Item_Resources_Sounds);
         this.§"#P§.§[!y§(this.§,$9§.Item_Shapes);
         this.§2p§ = new Dictionary();
         for each(_loc2_ in this.§,$9§.Items.Item)
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
            _loc22_ = String(_loc2_.@specialtyAvailableAfterCollision).toLowerCase() == "true";
            this.§[!8§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc21_,_loc17_,_loc18_,_loc19_,_loc20_,_loc22_);
         }
         this.§?J§(this.§,$9§.SoundChannels);
      }
      
      public function §[!8§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number, param12:Boolean, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = true, param18:String = null, param19:int = 0, param20:Boolean = false) : void
      {
         var _loc23_:§8$-§ = null;
         var _loc24_:DisplayObject = null;
         var _loc21_:§46§;
         if(!(_loc21_ = !!param5 ? this.§"#P§.§>"§(param5) : null))
         {
            _loc24_ = §]$?§.§2#§.animationManager.getAnimation(param1).getFrame(0);
            _loc21_ = new §`!j§(_loc24_.width * §8#3§.§2K§ / 2,_loc24_.height * §8#3§.§2K§ / 2,param1);
            _loc24_.dispose();
         }
         var _loc22_:§+#y§ = this.§3!v§.getMaterial(param3);
         if(param4 != "")
         {
            _loc23_ = this.getSoundResource(param4);
         }
         else if(_loc22_ != null)
         {
            _loc23_ = this.getSoundResource(_loc22_.sounds);
         }
         this.§2p§[param1.toLowerCase()] = new §&2§(param1,param2,_loc22_,_loc23_,_loc21_,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,false,param17,param18,param19,param20);
      }
      
      public function getItem(param1:String) : §&2§
      {
         var _loc2_:§&2§ = this.§2p§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §>"§(param1:String) : §46§
      {
         return this.§"#P§.§>"§(param1);
      }
      
      public function §[#%§(param1:String) : Array
      {
         var _loc3_:§&2§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§2p§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function § #_§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §?J§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §^"t§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §^"t§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §^"t§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § b§.§%#C§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §1"4§(param1:String) : Boolean
      {
         var _loc2_:§&2§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §""%§(param1:Array = null) : void
      {
         var levelItem:§&2§ = null;
         var add:Boolean = false;
         var overwriteExistingGraphics:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§2p§)
         {
            try
            {
               add = true;
               overwriteExistingGraphics = false;
               if(onlyItems && onlyItems.length > 0)
               {
                  i = onlyItems.indexOf(levelItem);
                  add = onlyItems.indexOf(levelItem) != -1;
                  overwriteExistingGraphics = true;
               }
               if(add)
               {
                  if(!§]$?§.§2#§.animationManager.getAnimation(levelItem.itemName) || overwriteExistingGraphics)
                  {
                     animationDefinitions = levelItem.getAnimationDefinitions();
                     §]$?§.§2#§.animationManager.§9!w§(levelItem.itemName,animationDefinitions);
                  }
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §##-§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§2p§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §;#$§(param1:String) : §3b§
      {
         return this.§8!O§.§-$3§(param1);
      }
      
      public function getSoundResource(param1:String) : §8$-§
      {
         return this.§[""§.getSoundResource(param1);
      }
   }
}
