package §2"Y§
{
   import §!!U§.DisplayObject;
   import §5t§.Log;
   import §="2§.§?!r§;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.utils.Dictionary;
   
   public class §,#5§
   {
       
      
      protected var §&!2§:XML;
      
      protected var §2`§:XML;
      
      protected var §%"u§:Dictionary;
      
      protected var §-#J§:§]#]§;
      
      protected var §;u§:§5!6§;
      
      protected var §,"<§:§5!h§;
      
      public function §,#5§()
      {
         this.§%"u§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§%#Y§();
         this.§5"e§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§-#J§ = new §]#]§();
      }
      
      protected function §%#Y§() : void
      {
         this.§;u§ = new §5!6§();
      }
      
      protected function §5"e§() : void
      {
         this.§,"<§ = new §5!h§();
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
         this.§&!2§ = param1;
         this.§-#J§.§9#?§(this.§&!2§.Item_Materials,this.§&!2§.Material_Damage_Multipliers,this.§&!2§.Material_Velocity_Multipliers);
         this.§,"<§.§7!f§(this.§&!2§.Item_Resources_Sounds);
         this.§;u§.§^!u§(this.§&!2§.Item_Shapes);
         this.§%"u§ = new Dictionary();
         for each(_loc2_ in this.§&!2§.Items.Item)
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
            this.§%!D§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         }
         this.§<#F§(this.§&!2§.SoundChannels);
      }
      
      public function §%!D§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc14_:DisplayObject = null;
         var _loc13_:§?#^§;
         if(!(_loc13_ = !!param5 ? this.§;u§.§3",§(param5) : null))
         {
            _loc14_ = §,!q§.§9!,§.animationManager.getAnimation(param1).getFrame(0);
            _loc13_ = new §<"+§(_loc14_.width * §#_§.§8]§ / 2,_loc14_.height * §#_§.§8]§ / 2,param1);
            _loc14_.dispose();
         }
         this.§%"u§[param1.toLowerCase()] = new §"t§(param1,param2,this.§-#J§.getMaterial(param3),this.§,"<§.§<"E§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function getItem(param1:String) : §"t§
      {
         var _loc2_:§"t§ = this.§%"u§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §3",§(param1:String) : §?#^§
      {
         return this.§;u§.§3",§(param1);
      }
      
      public function §1"y§(param1:String) : Array
      {
         var _loc3_:§"t§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§%"u§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §%M§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §<#F§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §?!r§.§,"d§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §"#0§(param1:String) : Boolean
      {
         var _loc2_:§"t§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§"t§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§%"u§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §,!q§.§9!,§.animationManager.§;#L§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §@#0§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§%"u§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}
