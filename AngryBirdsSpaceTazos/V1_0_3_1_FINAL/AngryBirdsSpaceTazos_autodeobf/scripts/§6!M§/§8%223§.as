package §6!M§
{
   import §6!C§.§6E§;
   import §7!C§.§8!w§;
   import §>"!§.§@!9§;
   import flash.utils.Dictionary;
   
   public class §8"3§
   {
       
      
      protected var §%![§:XML;
      
      protected var §76§:XML;
      
      protected var §<!d§:Dictionary;
      
      protected var §3F§:§=i§;
      
      protected var §9!W§:§%j§;
      
      protected var §#p§:§-y§;
      
      public function §8"3§()
      {
         this.§<!d§ = new Dictionary();
         super();
         this.initMaterialManager();
         this.§1"D§();
         this.§4h§();
      }
      
      protected function initMaterialManager() : void
      {
         this.§3F§ = new §=i§();
      }
      
      protected function §1"D§() : void
      {
         this.§9!W§ = new §%j§();
      }
      
      protected function §4h§() : void
      {
         this.§#p§ = new §-y§();
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
         this.§%![§ = param1;
         this.§3F§.§]!V§(this.§%![§.Item_Materials,this.§%![§.Material_Damage_Multipliers,this.§%![§.Material_Velocity_Multipliers);
         this.§#p§.§ !p§(this.§%![§.Item_Resources_Sounds);
         this.§9!W§.§@"3§(this.§%![§.Item_Shapes);
         this.§<!d§ = new Dictionary();
         for each(_loc2_ in this.§%![§.Items.Item)
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
            this.§?!3§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§-m§(this.§%![§.SoundChannels);
      }
      
      public function §?!3§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§<!d§[param1.toLowerCase()] = new §<!r§(param1,param2,this.§3F§.getMaterial(param3),this.§#p§.§]!X§(param4),!!param5 ? this.§9!W§.§ =§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function getItem(param1:String) : §<!r§
      {
         var _loc2_:§<!r§ = this.§<!d§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §1p§(param1:String) : Array
      {
         var _loc3_:§<!r§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§<!d§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §@"$§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §-m§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §6E§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §6E§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §6E§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@!9§.§#!-§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §+!V§(param1:String) : Boolean
      {
         var _loc2_:§<!r§ = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:§<!r§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§<!d§)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               §8!w§.§5!V§.animationManager.§^y§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
