package §?$<§
{
   import §1#v§.§;!Y§;
   import §6#H§.DisplayObject;
   import §8#K§.§3Z§;
   import §>2§.§!6§;
   import §^"Z§.§2"l§;
   import §`#@§.§7n§;
   import flash.utils.Dictionary;
   
   public class §2#W§
   {
       
      
      protected var §^#6§:XML;
      
      protected var §#=§:XML;
      
      protected var §!$"§:Dictionary;
      
      protected var §%"e§:§6f§;
      
      protected var §"e§:§&Z§;
      
      protected var §`!3§:§9!a§;
      
      protected var §'$4§:§2#X§;
      
      public function §2#W§()
      {
         this.§!$"§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§"!l§();
         this.§7"W§();
         this.§7"q§();
      }
      
      private function §7"q§() : void
      {
         this.§'$4§ = new §2#X§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§%"e§ = new §6f§();
      }
      
      protected function §"!l§() : void
      {
         this.§"e§ = new §&Z§();
      }
      
      protected function §7"W§() : void
      {
         this.§`!3§ = new §9!a§();
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
         this.§^#6§ = param1;
         this.§%"e§.§2#[§(this.§^#6§.Item_Materials,this.§^#6§.Material_Damage_Multipliers,this.§^#6§.Material_Velocity_Multipliers);
         this.§`!3§.§##s§(this.§^#6§.Item_Resources_Sounds);
         this.§"e§.§7!T§(this.§^#6§.Item_Shapes);
         this.§!$"§ = new Dictionary();
         for each(_loc2_ in this.§^#6§.Items.Item)
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
            this.§[-§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc21_,_loc17_,_loc18_,_loc19_,_loc20_,_loc22_);
         }
         this.§6=§(this.§^#6§.SoundChannels);
      }
      
      public function §[-§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number, param12:Boolean, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = true, param18:String = null, param19:int = 0, param20:Boolean = false) : void
      {
         var _loc23_:§9!V§ = null;
         var _loc24_:DisplayObject = null;
         var _loc21_:§4"F§;
         if(!(_loc21_ = !!param5 ? this.§"e§.§?#D§(param5) : null))
         {
            _loc24_ = §7n§.§6#K§.animationManager.getAnimation(param1).getFrame(0);
            _loc21_ = new §,C§(_loc24_.width * §!6§.§[#v§ / 2,_loc24_.height * §!6§.§[#v§ / 2,param1);
            _loc24_.dispose();
         }
         var _loc22_:§;<§ = this.§%"e§.getMaterial(param3);
         if(param4 != "")
         {
            _loc23_ = this.getSoundResource(param4);
         }
         else if(_loc22_ != null)
         {
            _loc23_ = this.getSoundResource(_loc22_.sounds);
         }
         this.§!$"§[param1.toLowerCase()] = new §?$>§(param1,param2,_loc22_,_loc23_,_loc21_,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,false,param17,param18,param19,param20);
      }
      
      public function getItem(param1:String) : §?$>§
      {
         var _loc2_:§?$>§ = this.§!$"§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §?#D§(param1:String) : §4"F§
      {
         return this.§"e§.§?#D§(param1);
      }
      
      public function §%$D§(param1:String) : Array
      {
         var _loc3_:§?$>§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§!$"§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §]'§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §6=§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §3Z§.§'#E§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §0"a§(param1:String) : Boolean
      {
         var _loc2_:§?$>§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §]"5§(param1:Array = null) : void
      {
         var levelItem:§?$>§ = null;
         var add:Boolean = false;
         var overwriteExistingGraphics:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§!$"§)
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
                  if(!§7n§.§6#K§.animationManager.getAnimation(levelItem.itemName) || overwriteExistingGraphics)
                  {
                     animationDefinitions = levelItem.getAnimationDefinitions();
                     §7n§.§6#K§.animationManager.§&"u§(levelItem.itemName,animationDefinitions);
                  }
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §+#L§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§!$"§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §<$=§(param1:String) : §2"l§
      {
         return this.§'$4§.§7#o§(param1);
      }
      
      public function getSoundResource(param1:String) : §9!V§
      {
         return this.§`!3§.getSoundResource(param1);
      }
   }
}
