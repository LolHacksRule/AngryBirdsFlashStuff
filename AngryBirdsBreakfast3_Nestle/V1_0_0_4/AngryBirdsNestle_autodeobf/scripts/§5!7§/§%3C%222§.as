package §5!7§
{
   import §"I§.§=!U§;
   import §&!>§.§3!k§;
   import com.angrybirds.§6U§;
   import flash.utils.Dictionary;
   
   public class §<"2§
   {
       
      
      protected var §9,§:XML;
      
      protected var §1"'§:XML;
      
      protected var §3H§:Dictionary;
      
      protected var §7!4§:§>!J§;
      
      protected var §,B§:§?"-§;
      
      protected var §9q§:§^!>§;
      
      public function §<"2§()
      {
         this.§3H§ = new Dictionary();
         super();
         this.§!![§();
         this.§1!S§();
         this.§>!l§();
      }
      
      protected function §!![§() : void
      {
         this.§7!4§ = new §>!J§();
      }
      
      protected function §1!S§() : void
      {
         this.§,B§ = new §?"-§();
      }
      
      protected function §>!l§() : void
      {
         this.§9q§ = new §^!>§();
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
         this.§9,§ = param1;
         this.§7!4§.§ c§(this.§9,§.Item_Materials,this.§9,§.Material_Damage_Multipliers,this.§9,§.Material_Velocity_Multipliers);
         this.§9q§.§3!;§(this.§9,§.Item_Resources_Sounds);
         this.§,B§.§7!7§(this.§9,§.Item_Shapes);
         this.§3H§ = new Dictionary();
         for each(_loc2_ in this.§9,§.Items.Item)
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
            this.§^o§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§;C§(this.§9,§.SoundChannels);
      }
      
      public function §^o§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§3H§[param1.toLowerCase()] = new §3!Y§(param1,param2,this.§7!4§.§;a§(param3),this.§9q§.§;"!§(param4),!!param5 ? this.§,B§.§`!H§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function §-!K§(param1:String) : §3!Y§
      {
         var _loc2_:§3!Y§ = this.§3H§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §[!g§(param1:String) : Array
      {
         var _loc3_:§3!Y§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§3H§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §2!B§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §;C§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §3!k§.§[y§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §=!#§(param1:String) : Boolean
      {
         var _loc2_:§3!Y§ = this.§-!K§(param1);
         if(_loc2_)
         {
            return _loc2_.§]!K§;
         }
         return true;
      }
      
      public function §1d§() : void
      {
         var levelItem:§3!Y§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§3H§)
         {
            try
            {
               animationDefinitions = levelItem.§5!n§();
               §6U§.§+_§.§8!3§.§>!"§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
