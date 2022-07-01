package §%8§
{
   import §0!m§.§@!S§;
   import §24§.;
   import §3!J§.DisplayObject;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import flash.utils.Dictionary;
   
   public class §4O§
   {
       
      
      protected var §-"4§:XML;
      
      protected var §%!d§:XML;
      
      protected var §,_§:Dictionary;
      
      protected var §%""§:§6=§;
      
      protected var §@i§:§;!k§;
      
      protected var §-+§:§"2§;
      
      public function §4O§()
      {
         this.§,_§ = new Dictionary();
         super();
         this.§<!D§();
         this.§%!V§();
         this.§"!s§();
      }
      
      protected function §<!D§() : void
      {
         this.§%""§ = new §6=§();
      }
      
      protected function §%!V§() : void
      {
         this.§@i§ = new §;!k§();
      }
      
      protected function §"!s§() : void
      {
         this.§-+§ = new §"2§();
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
         this.§-"4§ = param1;
         this.§%""§.§0!4§(this.§-"4§.Item_Materials,this.§-"4§.Material_Damage_Multipliers,this.§-"4§.Material_Velocity_Multipliers);
         this.§-+§.§[!3§(this.§-"4§.Item_Resources_Sounds);
         this.§@i§.§3!5§(this.§-"4§.Item_Shapes);
         this.§,_§ = new Dictionary();
         for each(_loc2_ in this.§-"4§.Items.Item)
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
            this.§-"3§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_);
         }
         this.§3U§(this.§-"4§.SoundChannels);
      }
      
      public function §-"3§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1, param13:Boolean = false) : void
      {
         var _loc15_:DisplayObject = null;
         var _loc14_:§[_§;
         if(!(_loc14_ = !!param5 ? this.§@i§.§!E§(param5) : null))
         {
            _loc15_ = §@!S§.§2A§.§13§.§6"%§(param1).getFrame(0);
            _loc14_ = new §]!o§(_loc15_.width * §#=§.§^!2§ / 2,_loc15_.height * §#=§.§^!2§ / 2,param1);
            _loc15_.dispose();
         }
         this.§,_§[param1.toLowerCase()] = new §@-§(param1,param2,this.§%""§.§&!T§(param3),this.§-+§.§=y§(param4),_loc14_,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §1!e§(param1:String) : §@-§
      {
         var _loc2_:§@-§ = this.§,_§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §!E§(param1:String) : §[_§
      {
         return this.§@i§.§!E§(param1);
      }
      
      public function §;"#§(param1:String) : Array
      {
         var _loc3_:§@-§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§,_§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §!7§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §3U§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §#7§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §#7§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §#7§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §>D§.§0"6§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §&4§(param1:String) : Boolean
      {
         var _loc2_:§@-§ = this.§1!e§(param1);
         if(_loc2_)
         {
            return _loc2_.§'!p§;
         }
         return true;
      }
      
      public function §<]§() : void
      {
         var levelItem:§@-§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§,_§)
         {
            try
            {
               animationDefinitions = levelItem.§7"!§();
               §@!S§.§2A§.§13§.§for§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §3"0§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§,_§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}
