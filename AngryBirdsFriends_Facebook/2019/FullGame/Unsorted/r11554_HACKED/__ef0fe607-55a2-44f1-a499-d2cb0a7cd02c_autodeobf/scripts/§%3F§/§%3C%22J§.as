package §?§#3
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §1C§.§,"L§;
   import §9#K§.§=#f§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import flash.utils.Dictionary;
   
   public class §<"J§
   {
       
      
      protected var § <§:XML;
      
      protected var §72§:XML;
      
      protected var §,#i§:Dictionary;
      
      protected var §#!x§:§1q§;
      
      protected var §+q§:§'o§;
      
      protected var §8]§:§;!g§;
      
      protected var §+X§:§]d§;
      
      public function §<"J§()
      {
         this.§,#i§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§"##§();
         this.§>B§();
         this.§^#s§();
      }
      
      private function §^#s§() : void
      {
         this.§+X§ = new §]d§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§#!x§ = new §1q§();
      }
      
      protected function §"##§() : void
      {
         this.§+q§ = new §'o§();
      }
      
      protected function §>B§() : void
      {
         this.§8]§ = new §;!g§();
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
         this.§ <§ = param1;
         this.§#!x§.§3$7§(this.§ <§.Item_Materials,this.§ <§.Material_Damage_Multipliers,this.§ <§.Material_Velocity_Multipliers);
         this.§8]§.§&#i§(this.§ <§.Item_Resources_Sounds);
         this.§+q§.§<!Y§(this.§ <§.Item_Shapes);
         this.§,#i§ = new Dictionary();
         for each(_loc2_ in this.§ <§.Items.Item)
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
            this.§"#C§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc21_,_loc17_,_loc18_,_loc19_,_loc20_,_loc22_);
         }
         this.§?"Z§(this.§ <§.SoundChannels);
      }
      
      public function §"#C§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number, param12:Boolean, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = true, param18:String = null, param19:int = 0, param20:Boolean = false) : void
      {
         var _loc23_:§4I§ = null;
         var _loc24_:DisplayObject = null;
         var _loc21_:§+#c§;
         if(!(_loc21_ = !!param5 ? this.§+q§.§6#;§(param5) : null))
         {
            _loc24_ = §%"T§.§;`§.animationManager.getAnimation(param1).getFrame(0);
            _loc21_ = new §3"<§(_loc24_.width * §'"u§.§'#e§ / 2,_loc24_.height * §'"u§.§'#e§ / 2,param1);
            _loc24_.dispose();
         }
         var _loc22_:§7!$§ = this.§#!x§.getMaterial(param3);
         if(param4 != "")
         {
            _loc23_ = this.getSoundResource(param4);
         }
         else if(_loc22_ != null)
         {
            _loc23_ = this.getSoundResource(_loc22_.sounds);
         }
         this.§,#i§[param1.toLowerCase()] = new §,Y§(param1,param2,_loc22_,_loc23_,_loc21_,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,false,param17,param18,param19,param20);
      }
      
      public function getItem(param1:String) : §,Y§
      {
         var _loc2_:§,Y§ = this.§,#i§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §6#;§(param1:String) : §+#c§
      {
         return this.§+q§.§6#;§(param1);
      }
      
      public function §5#X§(param1:String) : Array
      {
         var _loc3_:§,Y§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§,#i§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §+6§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §?"Z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §[#%§.§8!3§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §0+§(param1:String) : Boolean
      {
         var _loc2_:§,Y§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §%e§(param1:Array = null) : void
      {
         var levelItem:§,Y§ = null;
         var add:Boolean = false;
         var overwriteExistingGraphics:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§,#i§)
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
                  if(!§%"T§.§;`§.animationManager.getAnimation(levelItem.itemName) || overwriteExistingGraphics)
                  {
                     animationDefinitions = levelItem.getAnimationDefinitions();
                     §%"T§.§;`§.animationManager.§<k§(levelItem.itemName,animationDefinitions);
                  }
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §,!f§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§,#i§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §`$,§(param1:String) : §,"L§
      {
         return this.§+X§.§@#r§(param1);
      }
      
      public function getSoundResource(param1:String) : §4I§
      {
         return this.§8]§.getSoundResource(param1);
      }
   }
}
