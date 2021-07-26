package §+!Y§
{
   import §;Q§.§3$5§;
   
   public class §3!B§
   {
      
      public static const §4"M§:String = "restitution";
      
      public static const §;!_§:String = "density";
      
      public static const §&!2§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §2!F§:String;
      
      private var §%$#§:String;
      
      private var §`"l§:String;
      
      private var §!!@§:String;
      
      private var §-#n§:String;
      
      private var §>#x§:String;
      
      private var §&!c§:Boolean;
      
      private var §1O§:Boolean;
      
      private var §@$4§:Object;
      
      private var §&"K§:String;
      
      private var §%#8§:String;
      
      private var §>!n§:String;
      
      private var §@O§:String;
      
      private var §3#4§:int;
      
      private var §+#V§:int;
      
      private var §]r§:String;
      
      private var § " §:String;
      
      private var §6#%§:uint;
      
      private var §?!x§:String;
      
      private var §5!v§:String;
      
      private var §8$4§:int;
      
      private var §#T§:Object;
      
      private var §0#;§:XML;
      
      public function §3!B§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§%$#§ = param1;
         this.§2!F§ = param2;
         this.§`"l§ = param3;
         this.§-#n§ = param4;
         this.§!!@§ = param5;
         this.§>#x§ = param6;
         this.§1O§ = param15;
         this.§&!c§ = param16;
         this.§&"K§ = param7;
         this.§%#8§ = param8;
         this.§>!n§ = param9;
         this.§@O§ = param10;
         this.§3#4§ = param11;
         this.§+#V§ = param12;
         this.§]r§ = param13;
         this.§ " § = param14;
         this.§6#%§ = param17;
         this.§5!v§ = param18;
         this.§?!x§ = param19;
         this.§8$4§ = param20;
      }
      
      public function get §"l§() : String
      {
         return this.§2!F§;
      }
      
      public function get §8t§() : String
      {
         return this.§%$#§;
      }
      
      public function get §[#T§() : Boolean
      {
         return this.§&!c§;
      }
      
      public function set §[#T§(param1:Boolean) : void
      {
         this.§&!c§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         return this.§1O§;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§1O§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§`"l§;
      }
      
      public function get eventName() : String
      {
         return this.§>#x§;
      }
      
      public function get §[$3§() : String
      {
         return this.§!!@§;
      }
      
      public function get §<=§() : String
      {
         return this.§-#n§;
      }
      
      public function §`K§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§@$4§)
         {
            return;
         }
         this.§@$4§ = new Object();
         this.§@$4§["Wood"] = param1.@Material_Block_Wood;
         this.§@$4§["Stone"] = param1.@Material_Block_Stone;
         this.§@$4§["Ice"] = param1.@Material_Block_Ice;
         this.§@$4§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§@$4§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§@$4§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§@$4§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§@$4§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§@$4§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §`$§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§#T§)
         {
            return;
         }
         this.§#T§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§#T§[§4"M§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§#T§[§;!_§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§#T§[§&!2§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§#T§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§#T§[_loc2_.@id][§4"M§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§#T§[_loc2_.@id][§;!_§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§#T§[_loc2_.@id][§&!2§] = _loc2_.@friction;
            }
         }
      }
      
      public function §8$D§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§#T§)
         {
            return _loc2_;
         }
         if(this.§#T§[param1] && this.§#T§[param1][§4"M§])
         {
            _loc2_[§4"M§] = this.§#T§[param1][§4"M§];
         }
         else if(this.§#T§[§4"M§])
         {
            _loc2_[§4"M§] = this.§#T§[§4"M§];
         }
         if(this.§#T§[param1] && this.§#T§[param1][§;!_§])
         {
            _loc2_[§;!_§] = this.§#T§[param1][§;!_§];
         }
         else if(this.§#T§[§;!_§])
         {
            _loc2_[§;!_§] = this.§#T§[§;!_§];
         }
         if(this.§#T§[param1] && this.§#T§[param1][§&!2§])
         {
            _loc2_[§&!2§] = this.§#T§[param1][§&!2§];
         }
         else if(this.§#T§[§&!2§])
         {
            _loc2_[§&!2§] = this.§#T§[§&!2§];
         }
         return _loc2_;
      }
      
      public function §>$3§(param1:XML) : void
      {
         if(!this.§0#;§)
         {
            this.§0#;§ = param1;
         }
      }
      
      public function §2#H§() : §3$5§
      {
         var _loc1_:§3$5§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§0#;§)
         {
            _loc1_ = new §3$5§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§0#;§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§0#;§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§0#%§(_loc2_,this.§0#;§.@Collision_Sound_Channel);
            if(this.§0#;§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§^g§(this.§0#;§.@Collision_Particle_Name,this.§0#;§.@Particle_Count,this.§0#;§.@Particles_LifeTime,this.§0#;§.@Particle_Angles,this.§0#;§.@Particles_Min_Speed,this.§0#;§.@Particles_Max_Speed,this.§0#;§.@Particles_Loop,this.§0#;§.@Particles_LoopInterval,this.§0#;§.@Activation_Ratio_Damage_To_Mass,this.§0#;§.@Particles_TransitionType,this.§0#;§.@Particles_Scale,this.§0#;§.@Particles_Start_Scaling_Lifetime_percentage,this.§0#;§.@Particles_Gravity,this.§0#;§.@Particles_Rotation,this.§0#;§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §`!v§(param1:String, param2:String) : Number
      {
         if(!this.§@$4§)
         {
            return 1;
         }
         if(this.§@$4§[param2] && this.§@$4§[param2][param1])
         {
            return this.§@$4§[param2][param1];
         }
         if(this.§@$4§[param1])
         {
            return this.§@$4§[param1];
         }
         if(this.§@$4§[param2] && this.§@$4§[param2][OTHER_MATERIALS])
         {
            return this.§@$4§[param2][OTHER_MATERIALS];
         }
         if(this.§@$4§[OTHER_MATERIALS])
         {
            return this.§@$4§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§&"K§;
      }
      
      public function get §6#'§() : String
      {
         return this.§%#8§;
      }
      
      public function get §&"o§() : String
      {
         return this.§>!n§;
      }
      
      public function get particleName() : String
      {
         return this.§@O§;
      }
      
      public function get §3_§() : int
      {
         return this.§3#4§;
      }
      
      public function get §="3§() : int
      {
         return this.§+#V§;
      }
      
      public function get §""3§() : String
      {
         return this.§]r§;
      }
      
      public function get soundName() : String
      {
         return this.§ " §;
      }
      
      public function get §""o§() : uint
      {
         return this.§6#%§;
      }
      
      public function get §&!T§() : String
      {
         return this.§5!v§;
      }
      
      public function get §[#B§() : String
      {
         return this.§?!x§;
      }
      
      public function §&F§() : int
      {
         return this.§8$4§;
      }
   }
}
