package §2!s§
{
   import § 2§.§=+§;
   import §3!0§.§`i§;
   import §8!$§.§?p§;
   import §;X§.§4!@§;
   import §`!B§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class §0l§
   {
       
      
      protected var §`y§:XML;
      
      protected var §3!J§:XML;
      
      protected var §@U§:Dictionary;
      
      protected var §6X§:§0!Q§;
      
      protected var §`!l§:§5R§;
      
      protected var §0!j§:§"!+§;
      
      public function §0l§()
      {
         this.§@U§ = new Dictionary();
         super();
         this.§5k§();
         this.§#!i§();
         this.§6"!§();
      }
      
      protected function §5k§() : void
      {
         this.§6X§ = new §0!Q§();
      }
      
      protected function §#!i§() : void
      {
         this.§`!l§ = new §5R§();
      }
      
      protected function §6"!§() : void
      {
         this.§0!j§ = new §"!+§();
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
         var _loc15_:* = false;
         this.§`y§ = param1;
         this.§6X§.§"!0§(this.§`y§.Item_Materials,this.§`y§.Material_Damage_Multipliers,this.§`y§.Material_Velocity_Multipliers);
         this.§0!j§.§ -§(this.§`y§.Item_Resources_Sounds);
         this.§`!l§.§3R§(this.§`y§.Item_Shapes);
         this.§@U§ = new Dictionary();
         for each(_loc2_ in this.§`y§.Items.Item)
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
            _loc15_ = String(_loc2_.@disableBirdPassThrough).toLowerCase() == "true";
            this.§?!G§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_);
         }
         this.§9!^§(this.§`y§.SoundChannels);
      }
      
      public function §?!G§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1, param13:Boolean = false) : void
      {
         var _loc15_:DisplayObject = null;
         var _loc14_:§4"1§;
         if(!(_loc14_ = !!param5 ? this.§`!l§.§'!,§(param5) : null))
         {
            _loc15_ = §`i§.§&!L§.§%!E§.§%h§(param1).getFrame(0);
            _loc14_ = new §4=§(_loc15_.width * §=+§.§5!w§ / 2,_loc15_.height * §=+§.§5!w§ / 2,param1);
            _loc15_.dispose();
         }
         this.§@U§[param1.toLowerCase()] = new §!e§(param1,param2,this.§6X§.§%J§(param3),this.§0!j§.§+!b§(param4),_loc14_,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §-!X§(param1:String) : §!e§
      {
         var _loc2_:§!e§ = this.§@U§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §'!,§(param1:String) : §4"1§
      {
         return this.§`!l§.§'!,§(param1);
      }
      
      public function § !o§(param1:String) : Array
      {
         var _loc3_:§!e§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§@U§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §@%§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §9!^§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §?p§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §?p§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §?p§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §4!@§.§=x§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §&!%§(param1:String) : Boolean
      {
         var _loc2_:§!e§ = this.§-!X§(param1);
         if(_loc2_)
         {
            return _loc2_.§8!&§;
         }
         return true;
      }
      
      public function §]-§() : void
      {
         var levelItem:§!e§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§@U§)
         {
            try
            {
               animationDefinitions = levelItem.§&u§();
               §`i§.§&!L§.§%!E§.§7k§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function § !y§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§@U§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}
