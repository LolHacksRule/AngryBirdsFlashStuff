package §7"&§
{
   import §%"v§.§!" §;
   import §&!v§.DisplayObject;
   import §+!C§.§!!S§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §<"p§.§?!T§;
   import flash.utils.Dictionary;
   
   public class §&"T§
   {
       
      
      protected var §5#d§:XML;
      
      protected var §3<§:XML;
      
      protected var §+G§:Dictionary;
      
      protected var §`H§:§2!Y§;
      
      protected var §7"#§:§&5§;
      
      protected var §+#Q§:§ #v§;
      
      protected var §7$6§:§8$4§;
      
      public function §&"T§()
      {
         this.§+G§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§]$'§();
         this.§##Z§();
         this.§;"[§();
      }
      
      private function §;"[§() : void
      {
         this.§7$6§ = new §8$4§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§`H§ = new §2!Y§();
      }
      
      protected function §]$'§() : void
      {
         this.§7"#§ = new §&5§();
      }
      
      protected function §##Z§() : void
      {
         this.§+#Q§ = new § #v§();
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
         this.§5#d§ = param1;
         this.§`H§.§@#o§(this.§5#d§.Item_Materials,this.§5#d§.Material_Damage_Multipliers,this.§5#d§.Material_Velocity_Multipliers);
         this.§+#Q§.§]!p§(this.§5#d§.Item_Resources_Sounds);
         this.§7"#§.§"";§(this.§5#d§.Item_Shapes);
         this.§+G§ = new Dictionary();
         for each(_loc2_ in this.§5#d§.Items.Item)
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
            _loc20_ = -1;
            if("@particleAmount" in _loc2_)
            {
               _loc20_ = _loc2_.@particleAmount;
            }
            this.§2#T§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc20_,_loc17_,_loc18_,_loc19_);
         }
         this.§]#i§(this.§5#d§.SoundChannels);
      }
      
      public function §2#T§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number, param12:Boolean, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = true, param18:String = null) : void
      {
         var _loc20_:DisplayObject = null;
         var _loc19_:§]"k§;
         if(!(_loc19_ = !!param5 ? this.§7"#§.§'!e§(param5) : null))
         {
            _loc20_ = §!#A§.§#F§.animationManager.getAnimation(param1).getFrame(0);
            _loc19_ = new §>"N§(_loc20_.width * §!!S§.§,"3§ / 2,_loc20_.height * §!!S§.§,"3§ / 2,param1);
            _loc20_.dispose();
         }
         this.§+G§[param1.toLowerCase()] = new §!"v§(param1,param2,this.§`H§.getMaterial(param3),this.§+#Q§.getSoundResource(param4),_loc19_,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,false,param17,param18);
      }
      
      public function getItem(param1:String) : §!"v§
      {
         var _loc2_:§!"v§ = this.§+G§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §'!e§(param1:String) : §]"k§
      {
         return this.§7"#§.§'!e§(param1);
      }
      
      public function §0"w§(param1:String) : Array
      {
         var _loc3_:§!"v§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§+G§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §1!=§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §]#i§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §?!T§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §?!T§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §?!T§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §!#&§.§!"k§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §7$;§(param1:String) : Boolean
      {
         var _loc2_:§!"v§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function §4$8§(param1:Array = null) : void
      {
         var levelItem:§!"v§ = null;
         var add:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         var onlyItems:Array = param1;
         for each(levelItem in this.§+G§)
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
                  §!#A§.§#F§.animationManager.§8#f§(levelItem.itemName,animationDefinitions);
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function §"x§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§+G§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §`[§(param1:String) : §!" §
      {
         return this.§7$6§.§^!u§(param1);
      }
   }
}
