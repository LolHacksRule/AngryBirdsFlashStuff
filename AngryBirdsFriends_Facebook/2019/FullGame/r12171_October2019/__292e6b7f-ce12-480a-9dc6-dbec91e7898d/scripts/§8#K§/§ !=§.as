package §8#K§
{
   import §;!=§.§>"G§;
   
   public class § !=§ extends §<5§
   {
       
      
      protected var §4"9§:String;
      
      protected var §7$?§:Number;
      
      protected var §`!"§:Number;
      
      protected var §2"G§:String;
      
      protected var §0#6§:Number;
      
      protected var §"#v§:Number;
      
      protected var §4!t§:String;
      
      protected var § c§:String;
      
      protected var §9$6§:Array;
      
      protected var §9W§:Number;
      
      protected var §`a§:Number;
      
      protected var §,!§:Array;
      
      protected var §2v§:Boolean;
      
      protected var §4"Q§:Boolean;
      
      protected var §9" §:Boolean;
      
      protected var §`U§:Boolean;
      
      protected var §]#b§:Number;
      
      protected var §@#V§:Number;
      
      protected var §-"6§:Number;
      
      protected var §0!1§:Number;
      
      protected var §^!_§:Boolean;
      
      protected var §"#=§:Boolean;
      
      protected var §]#w§:Boolean;
      
      protected var §>"h§:Number;
      
      protected var §"#G§:Number;
      
      protected var §2#w§:Array;
      
      protected var §`$7§:Array;
      
      protected var §6"G§:String;
      
      protected var §9!q§:Boolean;
      
      protected var §<!v§:Array;
      
      public function § !=§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false, param7:§ !q§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §!"`§ = param7;
         this.§4"9§ = param1.definition;
         this.§7$?§ = param1.density;
         this.§`!"§ = param1.radius;
         this.§2"G§ = param1.type;
         this.§0#6§ = param1.defence;
         this.§"#v§ = param1.strenght;
         this.§4!t§ = param1.onCreated;
         this.§ c§ = param1.onDestroyed;
         this.§9$6§ = this.§=$$§(param1.spawnedObjects);
         this.§9W§ = param1.spawnDistance;
         this.§`a§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§,!§ = this.§=$$§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§,!§ = [String(_loc8_)];
         }
         else if(§#"Z§)
         {
            this.§,!§ = [§#"Z§];
         }
         else
         {
            _loc9_ = new Array();
            if(param3)
            {
               switch(param3.name)
               {
                  case "MATERIAL_BLOCK_ICE":
                     _loc9_.push("lightExplosion");
                     break;
                  case "MATERIAL_BLOCK_WOOD":
                     _loc9_.push("woodExplosion");
                     break;
                  case "MATERIAL_BLOCK_STONE":
                     _loc9_.push("stoneExplosion");
               }
            }
            this.§,!§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§<!v§ = this.§=$$§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§<!v§ = [String(param1.particlesCollision)];
         }
         this.§2v§ = param1.isBullet;
         this.§4"Q§ = param1.stopAnimationsAfterCollision;
         this.§9" § = param1.animateRotation;
         this.§`U§ = param1.constantRotation;
         this.§]#b§ = param1.maxRotationFrequency;
         this.§@#V§ = param1.minRotationFrequency;
         this.§-"6§ = param1.minRotationAmplitude;
         this.§0!1§ = param1.maxRotationAmplitude;
         this.§^!_§ = param1.destroyableByTap;
         this.§"#=§ = param1.destroyWhenFrozen;
         this.§]#w§ = param1.isVisible;
         this.§>"h§ = param1.width;
         this.§"#G§ = param1.height;
         this.§2#w§ = this.§=$$§(param1.loopingParticles);
         this.§`$7§ = this.§=$$§(param1.animationSprites);
         this.§6"G§ = param1.spriteScore;
         this.§9!q§ = param1.horFlip;
         §6!E§ = param1.specialty;
         §!G§ = param1.explosionRadius;
         §4$§ = param1.explosionForce;
         §#%§ = param1.explosionDamageRadius;
         §9!l§ = param1.explosionDamage;
      }
      
      private function §=$$§(param1:*) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(param1 is String)
         {
            return [param1];
         }
         if(param1 is Array)
         {
            return param1;
         }
         if(param1 is Object)
         {
            _loc2_ = [];
            for each(_loc3_ in param1)
            {
               _loc2_.push(_loc3_);
            }
            return _loc2_;
         }
         return [];
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§`$7§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§`$7§.length)
         {
            _loc1_.push(this.§`$7§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§>"G§.§+$=§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§9" §;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§]#b§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§@#V§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§0!1§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§-"6§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§4"Q§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§9W§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§`a§;
      }
      
      public function get § "@§() : int
      {
         if(this.§9$6§)
         {
            return this.§9$6§.length;
         }
         return 0;
      }
      
      public function §4#@§(param1:int) : String
      {
         return this.§9$6§[param1];
      }
      
      public function get §["l§() : int
      {
         if(this.§9$6§)
         {
            return this.§9$6§.length;
         }
         return 0;
      }
      
      public function get §8#u§() : int
      {
         if(this.§2#w§)
         {
            return this.§2#w§.length;
         }
         return 0;
      }
      
      public function §="C§(param1:int) : String
      {
         return this.§2#w§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§`U§;
      }
      
      public function get definition() : String
      {
         return this.§4"9§;
      }
      
      public function get §2"a§() : int
      {
         if(this.§,!§)
         {
            return this.§,!§.length;
         }
         return 0;
      }
      
      public function §;!e§(param1:int) : String
      {
         if(this.§,!§)
         {
            return this.§,!§[param1];
         }
         return null;
      }
      
      public function get §5!P§() : int
      {
         if(this.§<!v§)
         {
            return this.§<!v§.length;
         }
         return 0;
      }
      
      public function §"#Z§(param1:int) : String
      {
         if(this.§<!v§)
         {
            return this.§<!v§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§6"G§;
      }
      
      public function get § 9§() : Boolean
      {
         return this.§9!q§;
      }
   }
}
