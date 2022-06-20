package § O§
{
   import §["9§.§`"i§;
   
   public class §6f§
   {
      
      public static const §&W§:String = "restitution";
      
      public static const §-9§:String = "density";
      
      public static const §]#W§:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var §2#=§:String;
      
      private var §8#y§:String;
      
      private var §[1§:String;
      
      private var §3b§:String;
      
      private var §=$+§:String;
      
      private var §="I§:String;
      
      private var §%#@§:Boolean;
      
      private var §`e§:Boolean;
      
      private var §%#s§:Object;
      
      private var §<#Q§:String;
      
      private var §""<§:String;
      
      private var §;!L§:String;
      
      private var §2#j§:String;
      
      private var §"#[§:int;
      
      private var §0U§:int;
      
      private var §0#;§:String;
      
      private var §!#J§:String;
      
      private var §7"c§:uint;
      
      private var §!"6§:String;
      
      private var §>"7§:String;
      
      private var §,"`§:int;
      
      private var §2"j§:Object;
      
      private var §4#i§:XML;
      
      public function §6f§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:int, param12:int, param13:String, param14:String, param15:Boolean, param16:Boolean, param17:uint, param18:String, param19:String = "SlingshotStreched", param20:int = -1)
      {
         super();
         this.§8#y§ = param1;
         this.§2#=§ = param2;
         this.§[1§ = param3;
         this.§=$+§ = param4;
         this.§3b§ = param5;
         this.§="I§ = param6;
         this.§`e§ = param15;
         this.§%#@§ = param16;
         this.§<#Q§ = param7;
         this.§""<§ = param8;
         this.§;!L§ = param9;
         this.§2#j§ = param10;
         this.§"#[§ = param11;
         this.§0U§ = param12;
         this.§0#;§ = param13;
         this.§!#J§ = param14;
         this.§7"c§ = param17;
         this.§>"7§ = param18;
         this.§!"6§ = param19;
         this.§,"`§ = param20;
      }
      
      public function get §[L§() : String
      {
         return this.§2#=§;
      }
      
      public function get §]'§() : String
      {
         return this.§8#y§;
      }
      
      public function get §%!`§() : Boolean
      {
         this.§%#@§;
         return true;
      }
      
      public function set §%!`§(param1:Boolean) : void
      {
         this.§%#@§ = param1;
         if(param1 == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         this.§`e§;
         return true;
      }
      
      public function set available(param1:Boolean) : void
      {
         this.§`e§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§[1§;
      }
      
      public function get eventName() : String
      {
         return this.§="I§;
      }
      
      public function get §+"w§() : String
      {
         return this.§3b§;
      }
      
      public function get §##?§() : String
      {
         return this.§=$+§;
      }
      
      public function §-W§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§%#s§)
         {
            return;
         }
         this.§%#s§ = new Object();
         this.§%#s§["Wood"] = param1.@Material_Block_Wood;
         this.§%#s§["Stone"] = param1.@Material_Block_Stone;
         this.§%#s§["Ice"] = param1.@Material_Block_Ice;
         this.§%#s§[OTHER_MATERIALS] = param1.@Other_Materials;
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§%#s§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@Material_Block_Wood"))
            {
               this.§%#s§[_loc2_.@id]["Wood"] = _loc2_.@Material_Block_Wood;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Stone"))
            {
               this.§%#s§[_loc2_.@id]["Stone"] = _loc2_.@Material_Block_Stone;
            }
            if(_loc2_.hasOwnProperty("@Material_Block_Ice"))
            {
               this.§%#s§[_loc2_.@id]["Ice"] = _loc2_.@Material_Block_Ice;
            }
            if(_loc2_.hasOwnProperty("@Other_Materials"))
            {
               this.§%#s§[_loc2_.@id][OTHER_MATERIALS] = _loc2_.@Other_Materials;
            }
         }
      }
      
      public function §2#L§(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(this.§2"j§)
         {
            return;
         }
         this.§2"j§ = new Object();
         if(param1.hasOwnProperty("@restitution"))
         {
            this.§2"j§[§&W§] = param1.@restitution;
         }
         if(param1.hasOwnProperty("@density"))
         {
            this.§2"j§[§-9§] = param1.@density;
         }
         if(param1.hasOwnProperty("@friction"))
         {
            this.§2"j§[§]#W§] = param1.@friction;
         }
         for each(_loc2_ in param1.Bird_Specific)
         {
            this.§2"j§[_loc2_.@id] = new Object();
            if(_loc2_.hasOwnProperty("@restitution"))
            {
               this.§2"j§[_loc2_.@id][§&W§] = _loc2_.@restitution;
            }
            if(_loc2_.hasOwnProperty("@density"))
            {
               this.§2"j§[_loc2_.@id][§-9§] = _loc2_.@density;
            }
            if(_loc2_.hasOwnProperty("@friction"))
            {
               this.§2"j§[_loc2_.@id][§]#W§] = _loc2_.@friction;
            }
         }
      }
      
      public function §^#'§(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         if(!this.§2"j§)
         {
            return _loc2_;
         }
         if(this.§2"j§[param1] && this.§2"j§[param1][§&W§])
         {
            _loc2_[§&W§] = this.§2"j§[param1][§&W§];
         }
         else if(this.§2"j§[§&W§])
         {
            _loc2_[§&W§] = this.§2"j§[§&W§];
         }
         if(this.§2"j§[param1] && this.§2"j§[param1][§-9§])
         {
            _loc2_[§-9§] = this.§2"j§[param1][§-9§];
         }
         else if(this.§2"j§[§-9§])
         {
            _loc2_[§-9§] = this.§2"j§[§-9§];
         }
         if(this.§2"j§[param1] && this.§2"j§[param1][§]#W§])
         {
            _loc2_[§]#W§] = this.§2"j§[param1][§]#W§];
         }
         else if(this.§2"j§[§]#W§])
         {
            _loc2_[§]#W§] = this.§2"j§[§]#W§];
         }
         return _loc2_;
      }
      
      public function §2$E§(param1:XML) : void
      {
         if(!this.§4#i§)
         {
            this.§4#i§ = param1;
         }
      }
      
      public function §-O§() : §`"i§
      {
         var _loc1_:§`"i§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§4#i§)
         {
            _loc1_ = new §`"i§();
            _loc2_ = new Array();
            _loc3_ = 1;
            while(this.§4#i§.hasOwnProperty("@Collision_Sound_Name_" + _loc3_))
            {
               _loc2_.push(this.§4#i§.attribute("Collision_Sound_Name_" + _loc3_));
               _loc3_++;
            }
            _loc1_.§?#P§(_loc2_,this.§4#i§.@Collision_Sound_Channel);
            if(this.§4#i§.hasOwnProperty("@Collision_Particle_Name"))
            {
               _loc1_.§?A§(this.§4#i§.@Collision_Particle_Name,this.§4#i§.@Particle_Count,this.§4#i§.@Particles_LifeTime,this.§4#i§.@Particle_Angles,this.§4#i§.@Particles_Min_Speed,this.§4#i§.@Particles_Max_Speed,this.§4#i§.@Particles_Loop,this.§4#i§.@Particles_LoopInterval,this.§4#i§.@Activation_Ratio_Damage_To_Mass,this.§4#i§.@Particles_TransitionType,this.§4#i§.@Particles_Scale,this.§4#i§.@Particles_Start_Scaling_Lifetime_percentage,this.§4#i§.@Particles_Gravity,this.§4#i§.@Particles_Rotation,this.§4#i§.@Particles_Sequence);
            }
         }
         return _loc1_;
      }
      
      public function §8!§(param1:String, param2:String) : Number
      {
         if(!this.§%#s§)
         {
            return 1;
         }
         if(this.§%#s§[param2] && this.§%#s§[param2][param1])
         {
            return this.§%#s§[param2][param1];
         }
         if(this.§%#s§[param1])
         {
            return this.§%#s§[param1];
         }
         if(this.§%#s§[param2] && this.§%#s§[param2][OTHER_MATERIALS])
         {
            return this.§%#s§[param2][OTHER_MATERIALS];
         }
         if(this.§%#s§[OTHER_MATERIALS])
         {
            return this.§%#s§[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.§<#Q§;
      }
      
      public function get §=2§() : String
      {
         return this.§""<§;
      }
      
      public function get §>#1§() : String
      {
         return this.§;!L§;
      }
      
      public function get particleName() : String
      {
         return this.§2#j§;
      }
      
      public function get §2"=§() : int
      {
         return this.§"#[§;
      }
      
      public function get §6q§() : int
      {
         return this.§0U§;
      }
      
      public function get §2#B§() : String
      {
         return this.§0#;§;
      }
      
      public function get soundName() : String
      {
         return this.§!#J§;
      }
      
      public function get §3!+§() : uint
      {
         return this.§7"c§;
      }
      
      public function get §4#l§() : String
      {
         return this.§>"7§;
      }
      
      public function get §1"q§() : String
      {
         return this.§!"6§;
      }
      
      public function §`#j§() : int
      {
         return this.§,"`§;
      }
   }
}
