package §3>§
{
   import §9"!§.§^"3§;
   
   public class §-f§ extends §3n§
   {
       
      
      protected var §2"-§:String;
      
      protected var §^]§:Number;
      
      protected var §="0§:Number;
      
      protected var §'!$§:String;
      
      protected var §5"'§:String;
      
      protected var §^!H§:Number;
      
      protected var §3t§:Number;
      
      protected var §!!j§:String;
      
      protected var §?]§:String;
      
      protected var §,E§:Number;
      
      protected var §@i§:Number;
      
      protected var §&I§:Number;
      
      protected var § " §:Number;
      
      protected var §,M§:Array;
      
      protected var §]C§:Number;
      
      protected var §<!=§:Number;
      
      protected var §8>§:Array;
      
      protected var § o§:Boolean;
      
      protected var §`!#§:Boolean;
      
      protected var §0!P§:Boolean;
      
      protected var §>S§:Boolean;
      
      protected var §"J§:Number;
      
      protected var §`!%§:Number;
      
      protected var §?k§:Number;
      
      protected var §!>§:Number;
      
      protected var §#!d§:Boolean;
      
      protected var §-!L§:Boolean;
      
      protected var §4!z§:Boolean;
      
      protected var §]!d§:Number;
      
      protected var §!"-§:Number;
      
      protected var §"h§:Array;
      
      protected var § S§:Array;
      
      protected var §#!J§:String;
      
      protected var §5!&§:Boolean;
      
      protected var §&!U§:Array;
      
      public function §-f§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false, param7:§%5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §0"0§ = param7;
         this.§2"-§ = param1.definition;
         this.§^]§ = param1.density;
         this.§="0§ = param1.radius;
         this.§'!$§ = param1.type;
         this.§5"'§ = param1.sprite;
         this.§^!H§ = param1.defence;
         this.§3t§ = param1.strenght;
         this.§!!j§ = param1.onCreated;
         this.§?]§ = param1.onDestroyed;
         this.§,E§ = param1.explosionRadius;
         this.§@i§ = param1.explosionForce;
         this.§&I§ = param1.explosionDamageRadius;
         this.§ " § = param1.explosionDamage;
         this.§,M§ = this.§3!H§(param1.spawnedObjects);
         this.§]C§ = param1.spawnDistance;
         this.§<!=§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§8>§ = this.§3!H§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§8>§ = [String(param1.particlesDestroyed)];
         }
         else if(§,u§)
         {
            this.§8>§ = [§,u§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§&!U§ = this.§3!H§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§&!U§ = [String(param1.particlesCollision)];
         }
         this.§ o§ = param1.isBullet;
         this.§`!#§ = param1.stopAnimationsAfterCollision;
         this.§0!P§ = param1.animateRotation;
         this.§>S§ = param1.constantRotation;
         this.§"J§ = param1.maxRotationFrequency;
         this.§`!%§ = param1.minRotationFrequency;
         this.§?k§ = param1.minRotationAmplitude;
         this.§!>§ = param1.maxRotationAmplitude;
         this.§#!d§ = param1.destroyableByTap;
         this.§-!L§ = param1.destroyWhenFrozen;
         this.§4!z§ = param1.isVisible;
         this.§]!d§ = param1.width;
         this.§!"-§ = param1.height;
         this.§"h§ = this.§3!H§(param1.loopingParticles);
         this.§ S§ = this.§3!H§(param1.animationSprites);
         this.§#!J§ = param1.spriteScore;
         this.§5!&§ = param1.horFlip;
      }
      
      private function §3!H§(param1:*) : Array
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
         if(this.§ S§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§ S§.length)
         {
            _loc1_.push(this.§ S§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§^"3§.§4!Z§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§0!P§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§"J§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§`!%§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§!>§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§?k§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§`!#§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§]C§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§<!=§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§,E§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§@i§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§&I§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§ " §;
      }
      
      public function get §,"§() : int
      {
         if(this.§,M§)
         {
            return this.§,M§.length;
         }
         return 0;
      }
      
      public function §3x§(param1:int) : String
      {
         return this.§,M§[param1];
      }
      
      public function get §;"8§() : int
      {
         if(this.§,M§)
         {
            return this.§,M§.length;
         }
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         if(this.§"h§)
         {
            return this.§"h§.length;
         }
         return 0;
      }
      
      public function getLoopingParticle(param1:int) : String
      {
         return this.§"h§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§>S§;
      }
      
      public function get definition() : String
      {
         return this.§2"-§;
      }
      
      public function get §2!<§() : int
      {
         if(this.§8>§)
         {
            return this.§8>§.length;
         }
         return 0;
      }
      
      public function §7+§(param1:int) : String
      {
         if(this.§8>§)
         {
            return this.§8>§[param1];
         }
         return null;
      }
      
      public function get §5""§() : int
      {
         if(this.§&!U§)
         {
            return this.§&!U§.length;
         }
         return 0;
      }
      
      public function § !i§(param1:int) : String
      {
         if(this.§&!U§)
         {
            return this.§&!U§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§#!J§;
      }
      
      public function get §#!X§() : Boolean
      {
         return this.§5!&§;
      }
   }
}
