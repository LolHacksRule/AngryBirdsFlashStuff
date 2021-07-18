package §&v§
{
   import §1T§.§'!c§;
   import §6![§.DisplayObject;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   import flash.utils.Dictionary;
   
   public class §#!R§
   {
       
      
      protected var §,J§:XML;
      
      protected var §?!7§:XML;
      
      protected var §<C§:Dictionary;
      
      protected var §,!,§:§!Q§;
      
      protected var §9H§:§^!z§;
      
      protected var §!m§:§"Q§;
      
      public function §#!R§()
      {
         this.§<C§ = new Dictionary();
         super();
         this.§5V§();
         this.§#!I§();
         this.§`!7§();
      }
      
      protected function §5V§() : void
      {
         this.§,!,§ = new §!Q§();
      }
      
      protected function §#!I§() : void
      {
         this.§9H§ = new §^!z§();
      }
      
      protected function §`!7§() : void
      {
         this.§!m§ = new §"Q§();
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
         this.§,J§ = param1;
         this.§,!,§.§^!C§(this.§,J§.Item_Materials,this.§,J§.Material_Damage_Multipliers,this.§,J§.Material_Velocity_Multipliers);
         this.§!m§.§]!2§(this.§,J§.Item_Resources_Sounds);
         this.§9H§.§"[§(this.§,J§.Item_Shapes);
         this.§<C§ = new Dictionary();
         for each(_loc2_ in this.§,J§.Items.Item)
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
            this.§9V§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         }
         this.§8C§(this.§,J§.SoundChannels);
      }
      
      public function §9V§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc14_:DisplayObject = null;
         var _loc13_:§each §;
         if(!(_loc13_ = !!param5 ? this.§9H§.§;",§(param5) : null))
         {
            _loc14_ = §&!"§.§1!D§.§5-§.§#w§(param1).getFrame(0);
            _loc13_ = new §4!a§(_loc14_.width * §?!'§.§'!i§ / 2,_loc14_.height * §?!'§.§'!i§ / 2);
            _loc14_.dispose();
         }
         this.§<C§[param1.toLowerCase()] = new §9B§(param1,param2,this.§,!,§.§>!1§(param3),this.§!m§.§@!D§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function §"!?§(param1:String) : §9B§
      {
         var _loc2_:§9B§ = this.§<C§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §`X§(param1:String) : Array
      {
         var _loc3_:§9B§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§<C§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §'!,§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §8C§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §!!'§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §!!'§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §!!'§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §'!c§.§8G§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §-p§(param1:String) : Boolean
      {
         var _loc2_:§9B§ = this.§"!?§(param1);
         if(_loc2_)
         {
            return _loc2_.§%x§;
         }
         return true;
      }
      
      public function §#j§() : void
      {
         var levelItem:§9B§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§<C§)
         {
            try
            {
               animationDefinitions = levelItem.§;!^§();
               §&!"§.§1!D§.§5-§.§2O§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
