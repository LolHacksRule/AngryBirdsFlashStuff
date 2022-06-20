package §-$!§
{
   import §^!_§.§7"m§;
   
   public class § $<§
   {
      
      public static const §!B§:String = "restitution";
      
      public static const §`e§:String = "density";
      
      public static const §["h§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §]"d§:String;
      
      private var §;!Z§:String;
      
      private var §9!q§:String;
      
      private var §0Y§:String;
      
      private var §89§:String;
      
      private var §`"+§:String;
      
      private var §6!s§:Boolean;
      
      private var §6!!§:Boolean;
      
      private var §8!s§:Object;
      
      private var §9!d§:String;
      
      private var §,"7§:String;
      
      private var §!e§:String;
      
      private var §,e§:String;
      
      private var §2[§:int;
      
      private var §]#[§:int;
      
      private var §;"0§:String;
      
      private var §;! §:String;
      
      private var §""C§:uint;
      
      private var §@#3§:String;
      
      private var §<!i§:String;
      
      private var §0#!§:int;
      
      private var §7A§:Object;
      
      private var §?"I§:XML;
      
      public function § $<§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§;!Z§ = param1;
         this.§]"d§ = param2;
         this.§9!q§ = param3;
         this.§89§ = param4;
         this.§0Y§ = param5;
         this.§`"+§ = param6;
         this.§6!!§ = param15;
         this.§6!s§ = param16;
         this.§9!d§ = param7;
         this.§,"7§ = param8;
         this.§!e§ = param9;
         this.§,e§ = param10;
         this.§2[§ = param11;
         this.§]#[§ = param12;
         this.§;"0§ = param13;
         this.§;! § = param14;
         this.§""C§ = param17;
         this.§<!i§ = param18;
         this.§@#3§ = param19;
         this.§0#!§ = param20;
      }
      
      public function get § #=§() : String
      {
         return this.§]"d§;
      }
      
      public function get §1#7§() : String
      {
         return this.§;!Z§;
      }
      
      public function get §!"8§() : Boolean
      {
         return this.§6!s§;
      }
      
      public function set §!"8§(param1:Boolean) : void
      {
         this.§6!s§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         return this.§6!!§;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§6!!§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§9!q§;
      }
      
      public function get eventName() : String
      {
         return this.§`"+§;
      }
      
      public function get §%"8§() : String
      {
         return this.§0Y§;
      }
      
      public function get §7#1§() : String
      {
         return this.§89§;
      }
      
      public function §&b§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§8!s§)
         {
            return;
         }
         this.§8!s§ = new Object();
         this.§8!s§["Wood"] = param1.@Material_Block_Wood;
         this.§8!s§["Stone"] = param1.@Material_Block_Stone;
         this.§8!s§["Ice"] = param1.@Material_Block_Ice;
         this.§8!s§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§8!s§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§8!s§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§8!s§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§8!s§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§8!s§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function § #n§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§7A§)
         {
            return;
         }
         this.§7A§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§7A§[§!B§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§7A§[§`e§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§7A§[§["h§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§7A§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§7A§[_loc2_.@id][§!B§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§7A§[_loc2_.@id][§`e§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§7A§[_loc2_.@id][§["h§] = _loc2_.@friction;
            }
         }
      }
      
      public function §&c§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§7A§)
         {
            return _loc2_;
         }
         if(this.§7A§[param1] && this.§7A§[param1][§!B§])
         {
            _loc2_[§!B§] = this.§7A§[param1][§!B§];
         }
         else if(this.§7A§[§!B§])
         {
            _loc2_[§!B§] = this.§7A§[§!B§];
         }
         if(this.§7A§[param1] && this.§7A§[param1][§`e§])
         {
            _loc2_[§`e§] = this.§7A§[param1][§`e§];
         }
         else if(this.§7A§[§`e§])
         {
            _loc2_[§`e§] = this.§7A§[§`e§];
         }
         if(this.§7A§[param1] && this.§7A§[param1][§["h§])
         {
            _loc2_[§["h§] = this.§7A§[param1][§["h§];
         }
         else if(this.§7A§[§["h§])
         {
            _loc2_[§["h§] = this.§7A§[§["h§];
         }
         return _loc2_;
      }
      
      public function §2"@§(param1:XML) : void
      {
         if(!this.§?"I§)
         {
            this.§?"I§ = param1;
         }
      }
      
      public function §=#L§() : §7"m§
      {
         var _loc1_:§7"m§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§?"I§)
         {
            _loc1_ = new §7"m§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§?"I§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§?"I§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§!$+§(_loc2_,this.§?"I§.@Collision_Sound_Channel);
            if(this.§?"I§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§%#@§(this.§?"I§.@Collision_Particle_Name,this.§?"I§.@Particle_Count,this.§?"I§.@Particles_LifeTime,this.§?"I§.@Particle_Angles,this.§?"I§.@Particles_Min_Speed,this.§?"I§.@Particles_Max_Speed,this.§?"I§.@Particles_Loop,this.§?"I§.@Particles_LoopInterval,this.§?"I§.@Activation_Ratio_Damage_To_Mass,this.§?"I§.@Particles_TransitionType,this.§?"I§.@Particles_Scale,this.§?"I§.@Particles_Start_Scaling_Lifetime_percentage,this.§?"I§.@Particles_Gravity,this.§?"I§.@Particles_Rotation,this.§?"I§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §!#P§(param1:String, param2:String) : Number
      {
         if(!this.§8!s§)
         {
            return 1;
         }
         if(this.§8!s§[param2] && this.§8!s§[param2][param1])
         {
            return this.§8!s§[param2][param1];
         }
         if(this.§8!s§[param1])
         {
            return this.§8!s§[param1];
         }
         if(this.§8!s§[param2] && this.§8!s§[param2][OTHER_MATERIALS])
         {
            return this.§8!s§[param2][OTHER_MATERIALS];
         }
         if(this.§8!s§[OTHER_MATERIALS])
         {
            return this.§8!s§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§9!d§;
      }
      
      public function get §,"&§() : String
      {
         return this.§,"7§;
      }
      
      public function get §9"m§() : String
      {
         return this.§!e§;
      }
      
      public function get particleName() : String
      {
         return this.§,e§;
      }
      
      public function get §=#6§() : int
      {
         return this.§2[§;
      }
      
      public function get §2S§() : int
      {
         return this.§]#[§;
      }
      
      public function get §3$9§() : String
      {
         return this.§;"0§;
      }
      
      public function get soundName() : String
      {
         return this.§;! §;
      }
      
      public function get §<#J§() : uint
      {
         return this.§""C§;
      }
      
      public function get §6"X§() : String
      {
         return this.§<!i§;
      }
      
      public function get §1j§() : String
      {
         return this.§@#3§;
      }
      
      public function §?"O§() : int
      {
         return this.§0#!§;
      }
   }
}
