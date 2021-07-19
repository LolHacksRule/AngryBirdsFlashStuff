package §"!&§
{
   import §]">§.§1!0§;
   
   public class §]!C§ extends §`D§
   {
       
      
      protected var §8k§:String;
      
      protected var §9!C§:Number;
      
      protected var §?!1§:Number;
      
      protected var §!k§:String;
      
      protected var §]!$§:String;
      
      protected var §`!2§:Number;
      
      protected var §6$§:Number;
      
      protected var §=!u§:String;
      
      protected var §#B§:String;
      
      protected var §-]§:Number;
      
      protected var §^V§:Number;
      
      protected var §8!@§:Number;
      
      protected var §%"A§:Number;
      
      protected var §9w§:Array;
      
      protected var §6!5§:Number;
      
      protected var §`"?§:Number;
      
      protected var §&0§:Array;
      
      protected var §=!w§:Boolean;
      
      protected var §^!G§:Boolean;
      
      protected var §7!X§:Boolean;
      
      protected var §3T§:Boolean;
      
      protected var §2!i§:Number;
      
      protected var §9B§:Number;
      
      protected var §4!%§:Number;
      
      protected var §'!M§:Number;
      
      protected var §0!A§:Boolean;
      
      protected var §[!8§:Boolean;
      
      protected var § 2§:Boolean;
      
      protected var §<!f§:Number;
      
      protected var §8>§:Number;
      
      protected var §9z§:Array;
      
      protected var §+"=§:Array;
      
      protected var §5"F§:String;
      
      protected var §=B§:Boolean;
      
      protected var §;9§:Array;
      
      public function §]!C§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §9"3§ = param7;
         this.§8k§ = param1.definition;
         this.§9!C§ = param1.density;
         this.§?!1§ = param1.radius;
         this.§!k§ = param1.type;
         this.§]!$§ = param1.sprite;
         this.§`!2§ = param1.defence;
         this.§6$§ = param1.strenght;
         this.§=!u§ = param1.onCreated;
         this.§#B§ = param1.onDestroyed;
         this.§-]§ = param1.explosionRadius;
         this.§^V§ = param1.explosionForce;
         this.§8!@§ = param1.explosionDamageRadius;
         this.§%"A§ = param1.explosionDamage;
         this.§9w§ = this.§5!H§(param1.spawnedObjects);
         this.§6!5§ = param1.spawnDistance;
         this.§`"?§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§&0§ = this.§5!H§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§&0§ = [String(param1.particlesDestroyed)];
         }
         else if(§<!5§)
         {
            this.§&0§ = [§<!5§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§;9§ = this.§5!H§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§;9§ = [String(param1.particlesCollision)];
         }
         this.§=!w§ = param1.isBullet;
         this.§^!G§ = param1.stopAnimationsAfterCollision;
         this.§7!X§ = param1.animateRotation;
         this.§3T§ = param1.constantRotation;
         this.§2!i§ = param1.maxRotationFrequency;
         this.§9B§ = param1.minRotationFrequency;
         this.§4!%§ = param1.minRotationAmplitude;
         this.§'!M§ = param1.maxRotationAmplitude;
         this.§0!A§ = param1.destroyableByTap;
         this.§[!8§ = param1.destroyWhenFrozen;
         this.§ 2§ = param1.isVisible;
         this.§<!f§ = param1.width;
         this.§8>§ = param1.height;
         this.§9z§ = this.§5!H§(param1.loopingParticles);
         this.§+"=§ = this.§5!H§(param1.animationSprites);
         this.§5"F§ = param1.spriteScore;
         this.§=B§ = param1.horFlip;
      }
      
      private function §5!H§(param1:*) : Array
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
         if(this.§+"=§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§+"=§.length)
         {
            _loc1_.push(this.§+"=§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§1!0§.§,!Y§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§7!X§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§2!i§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§9B§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§'!M§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§4!%§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§^!G§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6!5§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§`"?§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§-]§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§^V§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§8!@§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§%"A§;
      }
      
      public function get §4!g§() : int
      {
         if(this.§9w§)
         {
            return this.§9w§.length;
         }
         return 0;
      }
      
      public function §"!u§(param1:int) : String
      {
         return this.§9w§[param1];
      }
      
      public function get §2V§() : int
      {
         if(this.§9w§)
         {
            return this.§9w§.length;
         }
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         if(this.§9z§)
         {
            return this.§9z§.length;
         }
         return 0;
      }
      
      public function getLoopingParticle(param1:int) : String
      {
         return this.§9z§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§3T§;
      }
      
      public function get definition() : String
      {
         return this.§8k§;
      }
      
      public function get §5$§() : int
      {
         if(this.§&0§)
         {
            return this.§&0§.length;
         }
         return 0;
      }
      
      public function §5<§(param1:int) : String
      {
         if(this.§&0§)
         {
            return this.§&0§[param1];
         }
         return null;
      }
      
      public function get §8!y§() : int
      {
         if(this.§;9§)
         {
            return this.§;9§.length;
         }
         return 0;
      }
      
      public function §]!L§(param1:int) : String
      {
         if(this.§;9§)
         {
            return this.§;9§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§5"F§;
      }
      
      public function get §68§() : Boolean
      {
         return this.§=B§;
      }
   }
}
