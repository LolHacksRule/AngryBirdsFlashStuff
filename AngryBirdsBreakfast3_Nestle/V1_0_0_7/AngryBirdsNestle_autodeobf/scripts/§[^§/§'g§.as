package §[^§
{
   import § !Q§.§"D§;
   import §;s§.§%!c§;
   import com.angrybirds.§#Z§;
   import flash.utils.Dictionary;
   
   public class §'g§
   {
       
      
      protected var §8!8§:XML;
      
      protected var §,!r§:XML;
      
      protected var § !"§:Dictionary;
      
      protected var §3!w§:§,O§;
      
      protected var §3B§:§8!Q§;
      
      protected var §+"0§:§6!V§;
      
      public function §'g§()
      {
         this.§ !"§ = new Dictionary();
         super();
         this.§?!S§();
         this.§@p§();
         this.§<w§();
      }
      
      protected function §?!S§() : void
      {
         this.§3!w§ = new §,O§();
      }
      
      protected function §@p§() : void
      {
         this.§3B§ = new §8!Q§();
      }
      
      protected function §<w§() : void
      {
         this.§+"0§ = new §6!V§();
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
         this.§8!8§ = param1;
         this.§3!w§.§ M§(this.§8!8§.Item_Materials,this.§8!8§.Material_Damage_Multipliers,this.§8!8§.Material_Velocity_Multipliers);
         this.§+"0§.§%"'§(this.§8!8§.Item_Resources_Sounds);
         this.§3B§.§+J§(this.§8!8§.Item_Shapes);
         this.§ !"§ = new Dictionary();
         for each(_loc2_ in this.§8!8§.Items.Item)
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
            this.§1!z§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§#"&§(this.§8!8§.SoundChannels);
      }
      
      public function §1!z§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§ !"§[param1.toLowerCase()] = new §`!M§(param1,param2,this.§3!w§.§5!v§(param3),this.§+"0§.§6D§(param4),!!param5 ? this.§3B§.§%#§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function § "4§(param1:String) : §`!M§
      {
         var _loc2_:§`!M§ = this.§ !"§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §2b§(param1:String) : Array
      {
         var _loc3_:§`!M§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§ !"§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §&x§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §#"&§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §"D§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §"D§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §"D§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §%!c§.§"!u§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function § !F§(param1:String) : Boolean
      {
         var _loc2_:§`!M§ = this.§ "4§(param1);
         if(_loc2_)
         {
            return _loc2_.§9d§;
         }
         return true;
      }
      
      public function §1T§() : void
      {
         var levelItem:§`!M§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§ !"§)
         {
            try
            {
               animationDefinitions = levelItem.§=B§();
               §#Z§.§'0§.§%B§.§]q§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
