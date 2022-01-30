package §!!<§
{
   import §9![§.§1!i§;
   import §=!7§.§1!7§;
   import com.angrybirds.§4!l§;
   import flash.utils.Dictionary;
   
   public class §-"4§
   {
       
      
      protected var §8!a§:XML;
      
      protected var §'5§:XML;
      
      protected var § q§:Dictionary;
      
      protected var §'Q§:§"!0§;
      
      protected var §]!y§:§5F§;
      
      protected var §8!E§:§^!D§;
      
      public function §-"4§()
      {
         this.§ q§ = new Dictionary();
         super();
         this.§3!Z§();
         this.§`&§();
         this.§[!=§();
      }
      
      protected function §3!Z§() : void
      {
         this.§'Q§ = new §"!0§();
      }
      
      protected function §`&§() : void
      {
         this.§]!y§ = new §5F§();
      }
      
      protected function §[!=§() : void
      {
         this.§8!E§ = new §^!D§();
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
         this.§8!a§ = param1;
         this.§'Q§.§&!§(this.§8!a§.Item_Materials,this.§8!a§.Material_Damage_Multipliers,this.§8!a§.Material_Velocity_Multipliers);
         this.§8!E§.§&c§(this.§8!a§.Item_Resources_Sounds);
         this.§]!y§.§7"4§(this.§8!a§.Item_Shapes);
         this.§ q§ = new Dictionary();
         for each(_loc2_ in this.§8!a§.Items.Item)
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
            this.§1!H§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         }
         this.§=+§(this.§8!a§.SoundChannels);
      }
      
      public function §1!H§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         this.§ q§[param1.toLowerCase()] = new §>"4§(param1,param2,this.§'Q§.§2!x§(param3),this.§8!E§.§[!t§(param4),!!param5 ? this.§]!y§.§1l§(param5) : null,param6,param7,param8,param9,param10);
      }
      
      public function §7`§(param1:String) : §>"4§
      {
         var _loc2_:§>"4§ = this.§ q§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function §<8§(param1:String) : Array
      {
         var _loc3_:§>"4§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§ q§)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function §&!!§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §=+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §1!i§.§[=§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function §<c§(param1:String) : Boolean
      {
         var _loc2_:§>"4§ = this.§7`§(param1);
         if(_loc2_)
         {
            return _loc2_.§`!E§;
         }
         return true;
      }
      
      public function §>[§() : void
      {
         var levelItem:§>"4§ = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.§ q§)
         {
            try
            {
               animationDefinitions = levelItem.§&!C§();
               §4!l§.§,!8§.§[!c§.§=!9§(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
