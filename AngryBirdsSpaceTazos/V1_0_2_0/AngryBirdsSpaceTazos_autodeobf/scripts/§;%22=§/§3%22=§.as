package §;"=§
{
   import §""<§.§#N§;
   import §+!9§.§;0§;
   import §9!G§.§"!S§;
   import flash.utils.Dictionary;
   
   public class §3"=§
   {
       
      
      protected var §&!_§:XML;
      
      protected var §>"D§:XML;
      
      protected var §="§:Dictionary;
      
      protected var §8!1§:§?`§;
      
      protected var §]W§:§,M§;
      
      protected var §]_§:§@f§;
      
      public function §3"=§()
      {
         this.§="§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§"!h§();
         this.§+J§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§8!1§ = new §?`§();
      }
      
      protected function §"!h§() : void
      {
         this.§]W§ = new §,M§();
      }
      
      protected function §+J§() : void
      {
         this.§]_§ = new §@f§();
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
         this.§&!_§ = param1;
         this.§8!1§.§+E§(this.§&!_§.Item_Materials,this.§&!_§.Material_Damage_Multipliers,this.§&!_§.Material_Velocity_Multipliers);
         this.§]_§.§%X§(this.§&!_§.Item_Resources_Sounds);
         this.§]W§.§+M§(this.§&!_§.Item_Shapes);
         this.§="§ = new Dictionary();
         for each(_loc2_ in this.§&!_§.Items.Item)
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
            this.§2!w§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§@i§(this.§&!_§.SoundChannels);
      }
      
      public function §2!w§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§="§[param1.toLowerCase()] = new §]"<§(param1,param2,this.§8!1§.getMaterial(param3),this.§]_§.§[-§(param4),!!param5 ? this.§]W§.§ V§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function getItem(param1:String) : §]"<§
      {
         var _loc2_:§]"<§ = this.§="§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §1!I§(param1:String) : Array
      {
         var _loc3_:§]"<§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§="§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §+i§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §@i§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §#N§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §#N§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §#N§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §"!S§.§4+§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §5"7§(param1:String) : Boolean
      {
         var _loc2_:§]"<§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§]"<§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§="§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §;0§.§@!^§.animationManager.§,4§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
