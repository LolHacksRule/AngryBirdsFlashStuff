package §-"e§
{
   import §+!"§.§@#E§;
   
   public class §^#i§
   {
      
      public static const §,"Y§:String = "restitution";
      
      public static const §<!-§:String = "density";
      
      public static const §^#t§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §'!e§:String;
      
      private var §?"j§:String;
      
      private var §9#m§:String;
      
      private var §"!U§:String;
      
      private var §4$&§:String;
      
      private var §^$3§:String;
      
      private var §;$6§:Boolean;
      
      private var §8!H§:Boolean;
      
      private var §%!<§:Object;
      
      private var §>"V§:String;
      
      private var §2'§:String;
      
      private var §#M§:String;
      
      private var §`=§:String;
      
      private var §3!F§:int;
      
      private var §4"'§:int;
      
      private var §4#E§:String;
      
      private var §#!7§:String;
      
      private var §%;§:uint;
      
      private var §'y§:String;
      
      private var §""U§:String;
      
      private var §%!s§:int;
      
      private var §,h§:Object;
      
      private var § !=§:XML;
      
      public function §^#i§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§?"j§ = param1;
         this.§'!e§ = param2;
         this.§9#m§ = param3;
         this.§4$&§ = param4;
         this.§"!U§ = param5;
         this.§^$3§ = param6;
         this.§8!H§ = param15;
         this.§;$6§ = param16;
         this.§>"V§ = param7;
         this.§2'§ = param8;
         this.§#M§ = param9;
         this.§`=§ = param10;
         this.§3!F§ = param11;
         this.§4"'§ = param12;
         this.§4#E§ = param13;
         this.§#!7§ = param14;
         this.§%;§ = param17;
         this.§""U§ = param18;
         this.§'y§ = param19;
         this.§%!s§ = param20;
      }
      
      public function get §[E§() : String
      {
         return this.§'!e§;
      }
      
      public function get §=#@§() : String
      {
         return this.§?"j§;
      }
      
      public function get §3$<§() : Boolean
      {
         this.§;$6§;
         return true;
      }
      
      public function set §3$<§(param1:Boolean) : void
      {
         this.§;$6§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         this.§8!H§;
         return true;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§8!H§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§9#m§;
      }
      
      public function get eventName() : String
      {
         return this.§^$3§;
      }
      
      public function get §&$"§() : String
      {
         return this.§"!U§;
      }
      
      public function get §>`§() : String
      {
         return this.§4$&§;
      }
      
      public function §`#§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§%!<§)
         {
            return;
         }
         this.§%!<§ = new Object();
         this.§%!<§["Wood"] = param1.@Material_Block_Wood;
         this.§%!<§["Stone"] = param1.@Material_Block_Stone;
         this.§%!<§["Ice"] = param1.@Material_Block_Ice;
         this.§%!<§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§%!<§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§%!<§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§%!<§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§%!<§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§%!<§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §?"1§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§,h§)
         {
            return;
         }
         this.§,h§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§,h§[§,"Y§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§,h§[§<!-§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§,h§[§^#t§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§,h§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§,h§[_loc2_.@id][§,"Y§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§,h§[_loc2_.@id][§<!-§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§,h§[_loc2_.@id][§^#t§] = _loc2_.@friction;
            }
         }
      }
      
      public function §+"[§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§,h§)
         {
            return _loc2_;
         }
         if(this.§,h§[param1] && this.§,h§[param1][§,"Y§])
         {
            _loc2_[§,"Y§] = this.§,h§[param1][§,"Y§];
         }
         else if(this.§,h§[§,"Y§])
         {
            _loc2_[§,"Y§] = this.§,h§[§,"Y§];
         }
         if(this.§,h§[param1] && this.§,h§[param1][§<!-§])
         {
            _loc2_[§<!-§] = this.§,h§[param1][§<!-§];
         }
         else if(this.§,h§[§<!-§])
         {
            _loc2_[§<!-§] = this.§,h§[§<!-§];
         }
         if(this.§,h§[param1] && this.§,h§[param1][§^#t§])
         {
            _loc2_[§^#t§] = this.§,h§[param1][§^#t§];
         }
         else if(this.§,h§[§^#t§])
         {
            _loc2_[§^#t§] = this.§,h§[§^#t§];
         }
         return _loc2_;
      }
      
      public function §<"t§(param1:XML) : void
      {
         if(!this.§ !=§)
         {
            this.§ !=§ = param1;
         }
      }
      
      public function §"F§() : §@#E§
      {
         var _loc1_:§@#E§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§ !=§)
         {
            _loc1_ = new §@#E§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§ !=§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§ !=§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§+P§(_loc2_,this.§ !=§.@Collision_Sound_Channel);
            if(this.§ !=§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§9#d§(this.§ !=§.@Collision_Particle_Name,this.§ !=§.@Particle_Count,this.§ !=§.@Particles_LifeTime,this.§ !=§.@Particle_Angles,this.§ !=§.@Particles_Min_Speed,this.§ !=§.@Particles_Max_Speed,this.§ !=§.@Particles_Loop,this.§ !=§.@Particles_LoopInterval,this.§ !=§.@Activation_Ratio_Damage_To_Mass,this.§ !=§.@Particles_TransitionType,this.§ !=§.@Particles_Scale,this.§ !=§.@Particles_Start_Scaling_Lifetime_percentage,this.§ !=§.@Particles_Gravity,this.§ !=§.@Particles_Rotation,this.§ !=§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §+$B§(param1:String, param2:String) : Number
      {
         if(!this.§%!<§)
         {
            return 1;
         }
         if(this.§%!<§[param2] && this.§%!<§[param2][param1])
         {
            return this.§%!<§[param2][param1];
         }
         if(this.§%!<§[param1])
         {
            return this.§%!<§[param1];
         }
         if(this.§%!<§[param2] && this.§%!<§[param2][OTHER_MATERIALS])
         {
            return this.§%!<§[param2][OTHER_MATERIALS];
         }
         if(this.§%!<§[OTHER_MATERIALS])
         {
            return this.§%!<§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§>"V§;
      }
      
      public function get §6!G§() : String
      {
         return this.§2'§;
      }
      
      public function get §6!S§() : String
      {
         return this.§#M§;
      }
      
      public function get particleName() : String
      {
         return this.§`=§;
      }
      
      public function get §^!y§() : int
      {
         return this.§3!F§;
      }
      
      public function get §-!$§() : int
      {
         return this.§4"'§;
      }
      
      public function get §'!]§() : String
      {
         return this.§4#E§;
      }
      
      public function get soundName() : String
      {
         return this.§#!7§;
      }
      
      public function get §0!m§() : uint
      {
         return this.§%;§;
      }
      
      public function get §2b§() : String
      {
         return this.§""U§;
      }
      
      public function get §7!6§() : String
      {
         return this.§'y§;
      }
      
      public function §83§() : int
      {
         return this.§%!s§;
      }
   }
}
