package §4"R§
{
   import §+"T§.§]6§;
   
   public class §'#v§
   {
      
      public static const §,"^§:String = "restitution";
      
      public static const §^"[§:String = "density";
      
      public static const §=#P§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §=<§:String;
      
      private var §-"v§:String;
      
      private var §>"G§:String;
      
      private var §^+§:String;
      
      private var §#7§:String;
      
      private var §,"G§:String;
      
      private var §[3§:Boolean;
      
      private var §>;§:Boolean;
      
      private var §8!F§:Object;
      
      private var §9#'§:String;
      
      private var §28§:String;
      
      private var § "e§:String;
      
      private var §?"1§:String;
      
      private var §?"a§:int;
      
      private var §+!y§:int;
      
      private var §]S§:String;
      
      private var §!W§:String;
      
      private var §5"K§:uint;
      
      private var §5!P§:String;
      
      private var §;j§:String;
      
      private var §?!S§:int;
      
      private var §6!P§:Object;
      
      private var §<O§:XML;
      
      public function §'#v§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§-"v§ = param1;
         this.§=<§ = param2;
         this.§>"G§ = param3;
         this.§#7§ = param4;
         this.§^+§ = param5;
         this.§,"G§ = param6;
         this.§>;§ = param15;
         this.§[3§ = param16;
         this.§9#'§ = param7;
         this.§28§ = param8;
         this.§ "e§ = param9;
         this.§?"1§ = param10;
         this.§?"a§ = param11;
         this.§+!y§ = param12;
         this.§]S§ = param13;
         this.§!W§ = param14;
         this.§5"K§ = param17;
         this.§;j§ = param18;
         this.§5!P§ = param19;
         this.§?!S§ = param20;
      }
      
      public function get §9§() : String
      {
         return this.§=<§;
      }
      
      public function get §5"g§() : String
      {
         return this.§-"v§;
      }
      
      public function get §<b§() : Boolean
      {
         return this.§[3§;
      }
      
      public function set §<b§(param1:Boolean) : void
      {
         this.§[3§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         return this.§>;§;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§>;§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§>"G§;
      }
      
      public function get eventName() : String
      {
         return this.§,"G§;
      }
      
      public function get § #k§() : String
      {
         return this.§^+§;
      }
      
      public function get §''§() : String
      {
         return this.§#7§;
      }
      
      public function §%!6§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§8!F§)
         {
            return;
         }
         this.§8!F§ = new Object();
         this.§8!F§["Wood"] = param1.@Material_Block_Wood;
         this.§8!F§["Stone"] = param1.@Material_Block_Stone;
         this.§8!F§["Ice"] = param1.@Material_Block_Ice;
         this.§8!F§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§8!F§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§8!F§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§8!F§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§8!F§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§8!F§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §0"n§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§6!P§)
         {
            return;
         }
         this.§6!P§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§6!P§[§,"^§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§6!P§[§^"[§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§6!P§[§=#P§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§6!P§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§6!P§[_loc2_.@id][§,"^§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§6!P§[_loc2_.@id][§^"[§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§6!P§[_loc2_.@id][§=#P§] = _loc2_.@friction;
            }
         }
      }
      
      public function §5!M§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§6!P§)
         {
            return _loc2_;
         }
         if(this.§6!P§[param1] && this.§6!P§[param1][§,"^§])
         {
            _loc2_[§,"^§] = this.§6!P§[param1][§,"^§];
         }
         else if(this.§6!P§[§,"^§])
         {
            _loc2_[§,"^§] = this.§6!P§[§,"^§];
         }
         if(this.§6!P§[param1] && this.§6!P§[param1][§^"[§])
         {
            _loc2_[§^"[§] = this.§6!P§[param1][§^"[§];
         }
         else if(this.§6!P§[§^"[§])
         {
            _loc2_[§^"[§] = this.§6!P§[§^"[§];
         }
         if(this.§6!P§[param1] && this.§6!P§[param1][§=#P§])
         {
            _loc2_[§=#P§] = this.§6!P§[param1][§=#P§];
         }
         else if(this.§6!P§[§=#P§])
         {
            _loc2_[§=#P§] = this.§6!P§[§=#P§];
         }
         return _loc2_;
      }
      
      public function §6$§(param1:XML) : void
      {
         if(!this.§<O§)
         {
            this.§<O§ = param1;
         }
      }
      
      public function §;!N§() : §]6§
      {
         var _loc1_:§]6§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§<O§)
         {
            _loc1_ = new §]6§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§<O§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§<O§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§##g§(_loc2_,this.§<O§.@Collision_Sound_Channel);
            if(this.§<O§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§^!L§(this.§<O§.@Collision_Particle_Name,this.§<O§.@Particle_Count,this.§<O§.@Particles_LifeTime,this.§<O§.@Particle_Angles,this.§<O§.@Particles_Min_Speed,this.§<O§.@Particles_Max_Speed,this.§<O§.@Particles_Loop,this.§<O§.@Particles_LoopInterval,this.§<O§.@Activation_Ratio_Damage_To_Mass,this.§<O§.@Particles_TransitionType,this.§<O§.@Particles_Scale,this.§<O§.@Particles_Start_Scaling_Lifetime_percentage,this.§<O§.@Particles_Gravity,this.§<O§.@Particles_Rotation,this.§<O§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §'#I§(param1:String, param2:String) : Number
      {
         if(!this.§8!F§)
         {
            return 1;
         }
         if(this.§8!F§[param2] && this.§8!F§[param2][param1])
         {
            return this.§8!F§[param2][param1];
         }
         if(this.§8!F§[param1])
         {
            return this.§8!F§[param1];
         }
         if(this.§8!F§[param2] && this.§8!F§[param2][OTHER_MATERIALS])
         {
            return this.§8!F§[param2][OTHER_MATERIALS];
         }
         if(this.§8!F§[OTHER_MATERIALS])
         {
            return this.§8!F§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§9#'§;
      }
      
      public function get §'"P§() : String
      {
         return this.§28§;
      }
      
      public function get §<""§() : String
      {
         return this.§ "e§;
      }
      
      public function get §>"S§() : String
      {
         return this.§?"1§;
      }
      
      public function get §%!§() : int
      {
         return this.§?"a§;
      }
      
      public function get §+$A§() : int
      {
         return this.§+!y§;
      }
      
      public function get §>#=§() : String
      {
         return this.§]S§;
      }
      
      public function get soundName() : String
      {
         return this.§!W§;
      }
      
      public function get §^_§() : uint
      {
         return this.§5"K§;
      }
      
      public function get §[! §() : String
      {
         return this.§;j§;
      }
      
      public function get §;"R§() : String
      {
         return this.§5!P§;
      }
      
      public function §7"x§() : int
      {
         return this.§?!S§;
      }
   }
}
