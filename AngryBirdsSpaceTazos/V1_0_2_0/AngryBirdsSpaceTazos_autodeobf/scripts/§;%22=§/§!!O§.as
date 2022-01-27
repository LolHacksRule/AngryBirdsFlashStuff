package §;"=§
{
   import §[,§.§5,§;
   
   public class §!!O§ extends §+C§
   {
       
      
      protected var §1!p§:String;
      
      protected var §7!&§:Number;
      
      protected var §0E§:Number;
      
      protected var §-!e§:String;
      
      protected var §>#§:String;
      
      protected var §^!^§:Number;
      
      protected var §9!`§:Number;
      
      protected var §2@§:String;
      
      protected var §3t§:String;
      
      protected var §&!d§:Number;
      
      protected var §<!7§:Number;
      
      protected var §>"7§:Number;
      
      protected var §+b§:Number;
      
      protected var §"T§:Array;
      
      protected var § =§:Number;
      
      protected var §]e§:Number;
      
      protected var §9f§:Array;
      
      protected var §"`§:Boolean;
      
      protected var §,"E§:Boolean;
      
      protected var § E§:Boolean;
      
      protected var § "C§:Boolean;
      
      protected var §`m§:Number;
      
      protected var §#!'§:Number;
      
      protected var §%G§:Number;
      
      protected var §`"-§:Number;
      
      protected var §[`§:Boolean;
      
      protected var §2j§:Boolean;
      
      protected var §`p§:Boolean;
      
      protected var §^M§:Number;
      
      protected var §2!u§:Number;
      
      protected var §,!O§:Array;
      
      protected var §[!!§:Array;
      
      protected var §<!s§:String;
      
      protected var § !%§:Boolean;
      
      protected var §`H§:Array;
      
      public function §!!O§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false, param7:§-_§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §5"<§ = param7;
         this.§1!p§ = param1.definition;
         this.§7!&§ = param1.density;
         this.§0E§ = param1.radius;
         this.§-!e§ = param1.type;
         this.§>#§ = param1.sprite;
         this.§^!^§ = param1.defence;
         this.§9!`§ = param1.strenght;
         this.§2@§ = param1.onCreated;
         this.§3t§ = param1.onDestroyed;
         this.§&!d§ = param1.explosionRadius;
         this.§<!7§ = param1.explosionForce;
         this.§>"7§ = param1.explosionDamageRadius;
         this.§+b§ = param1.explosionDamage;
         this.§"T§ = this.§=r§(param1.spawnedObjects);
         this.§ =§ = param1.spawnDistance;
         this.§]e§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§9f§ = this.§=r§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§9f§ = [String(param1.particlesDestroyed)];
         }
         else if(§+3§)
         {
            this.§9f§ = [§+3§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§`H§ = this.§=r§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§`H§ = [String(param1.particlesCollision)];
         }
         this.§"`§ = param1.isBullet;
         this.§,"E§ = param1.stopAnimationsAfterCollision;
         this.§ E§ = param1.animateRotation;
         this.§ "C§ = param1.constantRotation;
         this.§`m§ = param1.maxRotationFrequency;
         this.§#!'§ = param1.minRotationFrequency;
         this.§%G§ = param1.minRotationAmplitude;
         this.§`"-§ = param1.maxRotationAmplitude;
         this.§[`§ = param1.destroyableByTap;
         this.§2j§ = param1.destroyWhenFrozen;
         this.§`p§ = param1.isVisible;
         this.§^M§ = param1.width;
         this.§2!u§ = param1.height;
         this.§,!O§ = this.§=r§(param1.loopingParticles);
         this.§[!!§ = this.§=r§(param1.animationSprites);
         this.§<!s§ = param1.spriteScore;
         this.§ !%§ = param1.horFlip;
      }
      
      private function §=r§(param1:*) : Array
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
         if(this.§[!!§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§[!!§.length)
         {
            _loc1_.push(this.§[!!§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§5,§.§+!d§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§ E§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§`m§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§#!'§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§`"-§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§%G§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§,"E§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§ =§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§]e§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§&!d§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§<!7§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§>"7§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§+b§;
      }
      
      public function get §=!"§() : int
      {
         if(this.§"T§)
         {
            return this.§"T§.length;
         }
         return 0;
      }
      
      public function §4v§(param1:int) : String
      {
         return this.§"T§[param1];
      }
      
      public function get §!!%§() : int
      {
         if(this.§"T§)
         {
            return this.§"T§.length;
         }
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         if(this.§,!O§)
         {
            return this.§,!O§.length;
         }
         return 0;
      }
      
      public function getLoopingParticle(param1:int) : String
      {
         return this.§,!O§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§ "C§;
      }
      
      public function get definition() : String
      {
         return this.§1!p§;
      }
      
      public function get §=0§() : int
      {
         if(this.§9f§)
         {
            return this.§9f§.length;
         }
         return 0;
      }
      
      public function §6!§(param1:int) : String
      {
         if(this.§9f§)
         {
            return this.§9f§[param1];
         }
         return null;
      }
      
      public function get §4!0§() : int
      {
         if(this.§`H§)
         {
            return this.§`H§.length;
         }
         return 0;
      }
      
      public function §1!6§(param1:int) : String
      {
         if(this.§`H§)
         {
            return this.§`H§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§<!s§;
      }
      
      public function get §'"#§() : Boolean
      {
         return this.§ !%§;
      }
   }
}
