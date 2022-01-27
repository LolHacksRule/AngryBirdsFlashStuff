package §>P§
{
   import §,"v§.§@§;
   import §0"I§.§5!s§;
   import §1"s§.DisplayObject;
   import §5!q§.§3"X§;
   import com.angrybirds.§;!e§;
   import flash.utils.Dictionary;
   
   public class §!!O§
   {
       
      
      protected var §<#&§:XML;
      
      protected var §0"T§:XML;
      
      protected var §+!C§:Dictionary;
      
      protected var §9",§:§;"G§;
      
      protected var §-8§:§4J§;
      
      protected var § "U§:§!#0§;
      
      public function §!!O§()
      {
         this.§+!C§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§]!>§();
         this.§&!m§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§9",§ = new §;"G§();
      }
      
      protected function §]!>§() : void
      {
         this.§-8§ = new §4J§();
      }
      
      protected function §&!m§() : void
      {
         this.§ "U§ = new §!#0§();
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
         this.§<#&§ = param1;
         this.§9",§.§>"1§(this.§<#&§.Item_Materials,this.§<#&§.Material_Damage_Multipliers,this.§<#&§.Material_Velocity_Multipliers);
         this.§ "U§.§0!O§(this.§<#&§.Item_Resources_Sounds);
         this.§-8§.§!8§(this.§<#&§.Item_Shapes);
         this.§+!C§ = new Dictionary();
         for each(_loc2_ in this.§<#&§.Items.Item)
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
            this.§0v§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         }
         this.§+p§(this.§<#&§.SoundChannels);
      }
      
      public function §0v§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc14_:DisplayObject = null;
         var _loc13_:§?"Q§;
         if(!(_loc13_ = !!param5 ? this.§-8§.§&"^§(param5) : null))
         {
            _loc14_ = §;!e§.§<x§.animationManager.getAnimation(param1).getFrame(0);
            _loc13_ = new §%=§(_loc14_.width * §3"X§.§;"l§ / 2,_loc14_.height * §3"X§.§;"l§ / 2,param1);
            _loc14_.dispose();
         }
         this.§+!C§[param1.toLowerCase()] = new §=!,§(param1,param2,this.§9",§.getMaterial(param3),this.§ "U§.§2D§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function getItem(param1:String) : §=!,§
      {
         var _loc2_:§=!,§ = this.§+!C§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §&"^§(param1:String) : §?"Q§
      {
         return this.§-8§.§&"^§(param1);
      }
      
      public function §#h§(param1:String) : Array
      {
         var _loc3_:§=!,§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§+!C§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §-!&§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §+p§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §5!s§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §5!s§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §5!s§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@§.§"#'§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §0!s§(param1:String) : Boolean
      {
         var _loc2_:§=!,§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§=!,§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§+!C§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §;!e§.§<x§.animationManager.§@q§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §0U§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§+!C§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}
