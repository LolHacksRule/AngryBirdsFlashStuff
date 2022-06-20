package §=#C§
{
   import §%!f§.§5!O§;
   
   public class §6!u§
   {
      
      public static const §1"P§:String = "restitution";
      
      public static const §`!I§:String = "density";
      
      public static const § "H§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §'#R§:String;
      
      private var §6"&§:String;
      
      private var §-#f§:String;
      
      private var §'!5§:String;
      
      private var §]"]§:String;
      
      private var §0$"§:String;
      
      private var §`$3§:Boolean;
      
      private var §%"4§:Boolean;
      
      private var §`W§:Object;
      
      private var §1"O§:String;
      
      private var §8#c§:String;
      
      private var §0"G§:String;
      
      private var §<P§:String;
      
      private var §!W§:int;
      
      private var §8"r§:int;
      
      private var §6"8§:String;
      
      private var §5!U§:String;
      
      private var §'X§:uint;
      
      private var §9"J§:String;
      
      private var §+5§:String;
      
      private var §2e§:int;
      
      private var §+""§:Object;
      
      private var §0$#§:XML;
      
      public function §6!u§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§6"&§ = param1;
         this.§'#R§ = param2;
         this.§-#f§ = param3;
         this.§]"]§ = param4;
         this.§'!5§ = param5;
         this.§0$"§ = param6;
         this.§%"4§ = param15;
         this.§`$3§ = param16;
         this.§1"O§ = param7;
         this.§8#c§ = param8;
         this.§0"G§ = param9;
         this.§<P§ = param10;
         this.§!W§ = param11;
         this.§8"r§ = param12;
         this.§6"8§ = param13;
         this.§5!U§ = param14;
         this.§'X§ = param17;
         this.§+5§ = param18;
         this.§9"J§ = param19;
         this.§2e§ = param20;
      }
      
      public function get §,!&§() : String
      {
         return this.§'#R§;
      }
      
      public function get §?"9§() : String
      {
         return this.§6"&§;
      }
      
      public function get §3"i§() : Boolean
      {
         return this.§`$3§;
      }
      
      public function set §3"i§(param1:Boolean) : void
      {
         this.§`$3§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         return this.§%"4§;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§%"4§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§-#f§;
      }
      
      public function get eventName() : String
      {
         return this.§0$"§;
      }
      
      public function get §"$$§() : String
      {
         return this.§'!5§;
      }
      
      public function get §5"y§() : String
      {
         return this.§]"]§;
      }
      
      public function §>$2§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§`W§)
         {
            return;
         }
         this.§`W§ = new Object();
         this.§`W§["Wood"] = param1.@Material_Block_Wood;
         this.§`W§["Stone"] = param1.@Material_Block_Stone;
         this.§`W§["Ice"] = param1.@Material_Block_Ice;
         this.§`W§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§`W§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§`W§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§`W§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§`W§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§`W§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §0!!§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§+""§)
         {
            return;
         }
         this.§+""§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§+""§[§1"P§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§+""§[§`!I§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§+""§[§ "H§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§+""§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§+""§[_loc2_.@id][§1"P§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§+""§[_loc2_.@id][§`!I§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§+""§[_loc2_.@id][§ "H§] = _loc2_.@friction;
            }
         }
      }
      
      public function §5!>§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§+""§)
         {
            return _loc2_;
         }
         if(this.§+""§[param1] && this.§+""§[param1][§1"P§])
         {
            _loc2_[§1"P§] = this.§+""§[param1][§1"P§];
         }
         else if(this.§+""§[§1"P§])
         {
            _loc2_[§1"P§] = this.§+""§[§1"P§];
         }
         if(this.§+""§[param1] && this.§+""§[param1][§`!I§])
         {
            _loc2_[§`!I§] = this.§+""§[param1][§`!I§];
         }
         else if(this.§+""§[§`!I§])
         {
            _loc2_[§`!I§] = this.§+""§[§`!I§];
         }
         if(this.§+""§[param1] && this.§+""§[param1][§ "H§])
         {
            _loc2_[§ "H§] = this.§+""§[param1][§ "H§];
         }
         else if(this.§+""§[§ "H§])
         {
            _loc2_[§ "H§] = this.§+""§[§ "H§];
         }
         return _loc2_;
      }
      
      public function §@#0§(param1:XML) : void
      {
         if(!this.§0$#§)
         {
            this.§0$#§ = param1;
         }
      }
      
      public function §?#[§() : §5!O§
      {
         var _loc1_:§5!O§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§0$#§)
         {
            _loc1_ = new §5!O§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§0$#§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§0$#§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§?#&§(_loc2_,this.§0$#§.@Collision_Sound_Channel);
            if(this.§0$#§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§ !8§(this.§0$#§.@Collision_Particle_Name,this.§0$#§.@Particle_Count,this.§0$#§.@Particles_LifeTime,this.§0$#§.@Particle_Angles,this.§0$#§.@Particles_Min_Speed,this.§0$#§.@Particles_Max_Speed,this.§0$#§.@Particles_Loop,this.§0$#§.@Particles_LoopInterval,this.§0$#§.@Activation_Ratio_Damage_To_Mass,this.§0$#§.@Particles_TransitionType,this.§0$#§.@Particles_Scale,this.§0$#§.@Particles_Start_Scaling_Lifetime_percentage,this.§0$#§.@Particles_Gravity,this.§0$#§.@Particles_Rotation,this.§0$#§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §,!e§(param1:String, param2:String) : Number
      {
         if(!this.§`W§)
         {
            return 1;
         }
         if(this.§`W§[param2] && this.§`W§[param2][param1])
         {
            return this.§`W§[param2][param1];
         }
         if(this.§`W§[param1])
         {
            return this.§`W§[param1];
         }
         if(this.§`W§[param2] && this.§`W§[param2][OTHER_MATERIALS])
         {
            return this.§`W§[param2][OTHER_MATERIALS];
         }
         if(this.§`W§[OTHER_MATERIALS])
         {
            return this.§`W§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§1"O§;
      }
      
      public function get §&!9§() : String
      {
         return this.§8#c§;
      }
      
      public function get §]$!§() : String
      {
         return this.§0"G§;
      }
      
      public function get §'"<§() : String
      {
         return this.§<P§;
      }
      
      public function get §2&§() : int
      {
         return this.§!W§;
      }
      
      public function get §<!i§() : int
      {
         return this.§8"r§;
      }
      
      public function get §'<§() : String
      {
         return this.§6"8§;
      }
      
      public function get soundName() : String
      {
         return this.§5!U§;
      }
      
      public function get §8o§() : uint
      {
         return this.§'X§;
      }
      
      public function get §%i§() : String
      {
         return this.§+5§;
      }
      
      public function get §@V§() : String
      {
         return this.§9"J§;
      }
      
      public function §,#l§() : int
      {
         return this.§2e§;
      }
   }
}
