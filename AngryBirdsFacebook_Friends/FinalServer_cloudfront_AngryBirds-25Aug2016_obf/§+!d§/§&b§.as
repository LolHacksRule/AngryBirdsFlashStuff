package §+!d§
{
   import §`"K§.§0#u§;
   
   public class §&b§
   {
      
      public static const §8$0§:String = "restitution";
      
      public static const §7#m§:String = "density";
      
      public static const §+#;§:String = "friction";
      
      private static const §]0§:String = "Other_Materials";
       
      
      private var §]"Y§:String;
      
      private var §3#%§:String;
      
      private var §2"f§:String;
      
      private var §;$7§:String;
      
      private var §7#f§:String;
      
      private var §'!N§:String;
      
      private var §<!e§:Boolean;
      
      private var §##q§:Boolean;
      
      private var §;#X§:Object;
      
      private var §!"§:String;
      
      private var §]"0§:String;
      
      private var §in§:String;
      
      private var §5R§:String;
      
      private var §-U§:int;
      
      private var §-#E§:int;
      
      private var §4$4§:String;
      
      private var §&#O§:String;
      
      private var §@x§:uint;
      
      private var §4#J§:String;
      
      private var §'!q§:String;
      
      private var §8"r§:int;
      
      private var §"#`§:Object;
      
      private var §2"?§:XML;
      
      public function §&b§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§3#%§ = param1;
         this.§]"Y§ = param2;
         this.§2"f§ = param3;
         this.§7#f§ = param4;
         this.§;$7§ = param5;
         this.§'!N§ = param6;
         this.§##q§ = param15;
         this.§<!e§ = param16;
         this.§!"§ = param7;
         this.§]"0§ = param8;
         this.§in§ = param9;
         this.§5R§ = param10;
         this.§-U§ = param11;
         this.§-#E§ = param12;
         this.§4$4§ = param13;
         this.§&#O§ = param14;
         this.§@x§ = param17;
         this.§'!q§ = param18;
         this.§4#J§ = param19;
         this.§8"r§ = param20;
      }
      
      public function get §["u§() : String
      {
         return this.§]"Y§;
      }
      
      public function get §"!E§() : String
      {
         return this.§3#%§;
      }
      
      public function get §?C§() : Boolean
      {
         this.§<!e§;
         return true;
      }
      
      public function set §?C§(param1:Boolean) : void
      {
         this.§<!e§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         this.§##q§;
         return true;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§##q§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§2"f§;
      }
      
      public function get eventName() : String
      {
         return this.§'!N§;
      }
      
      public function get §%<§() : String
      {
         return this.§;$7§;
      }
      
      public function get §`"%§() : String
      {
         return this.§7#f§;
      }
      
      public function §>#X§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§;#X§)
         {
            return;
         }
         this.§;#X§ = new Object();
         this.§;#X§["Wood"] = param1.@Material_Block_Wood;
         this.§;#X§["Stone"] = param1.@Material_Block_Stone;
         this.§;#X§["Ice"] = param1.@Material_Block_Ice;
         this.§;#X§[§]0§] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§;#X§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§;#X§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§;#X§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§;#X§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§;#X§[_loc2_.@id][§]0§] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §7!>§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§"#`§)
         {
            return;
         }
         this.§"#`§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§"#`§[§8$0§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§"#`§[§7#m§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§"#`§[§+#;§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§"#`§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§"#`§[_loc2_.@id][§8$0§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§"#`§[_loc2_.@id][§7#m§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§"#`§[_loc2_.@id][§+#;§] = _loc2_.@friction;
            }
         }
      }
      
      public function §'B§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§"#`§)
         {
            return _loc2_;
         }
         if(this.§"#`§[param1] && this.§"#`§[param1][§8$0§])
         {
            _loc2_[§8$0§] = this.§"#`§[param1][§8$0§];
         }
         else if(this.§"#`§[§8$0§])
         {
            _loc2_[§8$0§] = this.§"#`§[§8$0§];
         }
         if(this.§"#`§[param1] && this.§"#`§[param1][§7#m§])
         {
            _loc2_[§7#m§] = this.§"#`§[param1][§7#m§];
         }
         else if(this.§"#`§[§7#m§])
         {
            _loc2_[§7#m§] = this.§"#`§[§7#m§];
         }
         if(this.§"#`§[param1] && this.§"#`§[param1][§+#;§])
         {
            _loc2_[§+#;§] = this.§"#`§[param1][§+#;§];
         }
         else if(this.§"#`§[§+#;§])
         {
            _loc2_[§+#;§] = this.§"#`§[§+#;§];
         }
         return _loc2_;
      }
      
      public function §5!V§(param1:XML) : void
      {
         if(!this.§2"?§)
         {
            this.§2"?§ = param1;
         }
      }
      
      public function §^!l§() : §0#u§
      {
         var _loc1_:§0#u§ = null;
         if(this.§2"?§)
         {
            _loc1_ = new §0#u§();
            if(this.§2"?§.hasOwnProperty("@Collision_Sound_Name"))
            {
               _loc1_.§ m§(this.§2"?§.@Collision_Sound_Name,this.§2"?§.@Collision_Sound_Channel);
            }
            if(this.§2"?§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§^"s§(this.§2"?§.@Collision_Particle_Name,this.§2"?§.@Particle_Count,this.§2"?§.@Particles_LifeTime,this.§2"?§.@Particle_Angles,this.§2"?§.@Particles_Min_Speed,this.§2"?§.@Particles_Max_Speed,this.§2"?§.@Particles_Loop,this.§2"?§.@Particles_LoopInterval,this.§2"?§.@Activation_Ratio_Damage_To_Mass,this.§2"?§.@Particles_TransitionType,this.§2"?§.@Particles_Scale,this.§2"?§.@Particles_Start_Scaling_Lifetime_percentage,this.§2"?§.@Particles_Gravity,this.§2"?§.@Particles_Rotation,this.§2"?§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §?_§(param1:String, param2:String) : Number
      {
         if(!this.§;#X§)
         {
            return 1;
         }
         if(this.§;#X§[param2] && this.§;#X§[param2][param1])
         {
            return this.§;#X§[param2][param1];
         }
         if(this.§;#X§[param1])
         {
            return this.§;#X§[param1];
         }
         if(this.§;#X§[param2] && this.§;#X§[param2][§]0§])
         {
            return this.§;#X§[param2][§]0§];
         }
         if(this.§;#X§[§]0§])
         {
            return this.§;#X§[§]0§];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§!"§;
      }
      
      public function get §4##§() : String
      {
         return this.§]"0§;
      }
      
      public function get §4'§() : String
      {
         return this.§in§;
      }
      
      public function get §%#x§() : String
      {
         return this.§5R§;
      }
      
      public function get §4N§() : int
      {
         return this.§-U§;
      }
      
      public function get §""E§() : int
      {
         return this.§-#E§;
      }
      
      public function get §0#b§() : String
      {
         return this.§4$4§;
      }
      
      public function get soundName() : String
      {
         return this.§&#O§;
      }
      
      public function get §@"a§() : uint
      {
         return this.§@x§;
      }
      
      public function get §<x§() : String
      {
         return this.§'!q§;
      }
      
      public function get §=" §() : String
      {
         return this.§4#J§;
      }
      
      public function §2#a§() : int
      {
         return this.§8"r§;
      }
   }
}
