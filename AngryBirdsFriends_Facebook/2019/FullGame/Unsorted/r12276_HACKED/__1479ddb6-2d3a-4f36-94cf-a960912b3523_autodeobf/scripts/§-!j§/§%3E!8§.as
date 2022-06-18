package §-!j§
{
   import §^0§.§=Q§;
   
   public class §>!8§ extends §@! §
   {
       
      
      protected var §6!F§:String;
      
      protected var §&N§:Number;
      
      protected var §"!'§:Number;
      
      protected var §4!$§:String;
      
      protected var §3!k§:Number;
      
      protected var §-!w§:Number;
      
      protected var §4"f§:String;
      
      protected var §3$7§:String;
      
      protected var §82§:Array;
      
      protected var §+c§:Number;
      
      protected var §>!C§:Number;
      
      protected var § #`§:Array;
      
      protected var §6m§:Boolean;
      
      protected var §-"I§:Boolean;
      
      protected var §>#;§:Boolean;
      
      protected var §?"d§:Boolean;
      
      protected var §'#-§:Number;
      
      protected var §&x§:Number;
      
      protected var §-!H§:Number;
      
      protected var §`#=§:Number;
      
      protected var §7$2§:Boolean;
      
      protected var §4#H§:Boolean;
      
      protected var §%!N§:Boolean;
      
      protected var §@!l§:Number;
      
      protected var §,7§:Number;
      
      protected var §8O§:Array;
      
      protected var §^#X§:Array;
      
      protected var §,"P§:String;
      
      protected var § t§:Boolean;
      
      protected var §0!7§:Array;
      
      public function §>!8§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §!8§ = param7;
         this.§6!F§ = param1.definition;
         this.§&N§ = param1.density;
         this.§"!'§ = param1.radius;
         this.§4!$§ = param1.type;
         this.§3!k§ = param1.defence;
         this.§-!w§ = param1.strenght;
         this.§4"f§ = param1.onCreated;
         this.§3$7§ = param1.onDestroyed;
         this.§82§ = this.§#"X§(param1.spawnedObjects);
         this.§+c§ = param1.spawnDistance;
         this.§>!C§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§ #`§ = this.§#"X§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§ #`§ = [String(_loc8_)];
         }
         else if(§3q§)
         {
            this.§ #`§ = [§3q§];
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
            this.§ #`§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§0!7§ = this.§#"X§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§0!7§ = [String(param1.particlesCollision)];
         }
         this.§6m§ = param1.isBullet;
         this.§-"I§ = param1.stopAnimationsAfterCollision;
         this.§>#;§ = param1.animateRotation;
         this.§?"d§ = param1.constantRotation;
         this.§'#-§ = param1.maxRotationFrequency;
         this.§&x§ = param1.minRotationFrequency;
         this.§-!H§ = param1.minRotationAmplitude;
         this.§`#=§ = param1.maxRotationAmplitude;
         this.§7$2§ = param1.destroyableByTap;
         this.§4#H§ = param1.destroyWhenFrozen;
         this.§%!N§ = param1.isVisible;
         this.§@!l§ = param1.width;
         this.§,7§ = param1.height;
         this.§8O§ = this.§#"X§(param1.loopingParticles);
         this.§^#X§ = this.§#"X§(param1.animationSprites);
         this.§,"P§ = param1.spriteScore;
         this.§ t§ = param1.horFlip;
         §[#w§ = param1.specialty;
         §>"n§ = param1.explosionRadius;
         §;#1§ = param1.explosionForce;
         §+!c§ = param1.explosionDamageRadius;
         §4#a§ = param1.explosionDamage;
      }
      
      private function §#"X§(param1:*) : Array
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
         if(this.§^#X§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§^#X§.length)
         {
            _loc1_.push(this.§^#X§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§=Q§.§6!t§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§>#;§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§'#-§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§&x§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§`#=§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§-!H§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§-"I§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§+c§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§>!C§;
      }
      
      public function get §'!z§() : int
      {
         if(this.§82§)
         {
            return this.§82§.length;
         }
         return 0;
      }
      
      public function §^!]§(param1:int) : String
      {
         return this.§82§[param1];
      }
      
      public function get §+"W§() : int
      {
         if(this.§82§)
         {
            return this.§82§.length;
         }
         return 0;
      }
      
      public function get §7!5§() : int
      {
         if(this.§8O§)
         {
            return this.§8O§.length;
         }
         return 0;
      }
      
      public function §]$=§(param1:int) : String
      {
         return this.§8O§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§?"d§;
      }
      
      public function get definition() : String
      {
         return this.§6!F§;
      }
      
      public function get §="J§() : int
      {
         if(this.§ #`§)
         {
            return this.§ #`§.length;
         }
         return 0;
      }
      
      public function §+"x§(param1:int) : String
      {
         if(this.§ #`§)
         {
            return this.§ #`§[param1];
         }
         return null;
      }
      
      public function get §]"%§() : int
      {
         if(this.§0!7§)
         {
            return this.§0!7§.length;
         }
         return 0;
      }
      
      public function §,!<§(param1:int) : String
      {
         if(this.§0!7§)
         {
            return this.§0!7§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§,"P§;
      }
      
      public function get §2U§() : Boolean
      {
         return this.§ t§;
      }
   }
}
