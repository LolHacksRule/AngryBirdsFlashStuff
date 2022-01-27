package §6!M§
{
   import §5"D§.§6!!§;
   
   public class §;!4§ extends §%h§
   {
       
      
      protected var §?"D§:String;
      
      protected var §0_§:Number;
      
      protected var §1o§:Number;
      
      protected var § !b§:String;
      
      protected var §9A§:String;
      
      protected var §-!§:Number;
      
      protected var §;S§:Number;
      
      protected var §;r§:String;
      
      protected var §&Y§:String;
      
      protected var §,n§:Number;
      
      protected var §9S§:Number;
      
      protected var §4"6§:Number;
      
      protected var §=K§:Number;
      
      protected var §`@§:Array;
      
      protected var §6%§:Number;
      
      protected var §3"E§:Number;
      
      protected var §=">§:Array;
      
      protected var §`%§:Boolean;
      
      protected var §>!T§:Boolean;
      
      protected var §`"E§:Boolean;
      
      protected var §!"'§:Boolean;
      
      protected var §;!k§:Number;
      
      protected var §default§:Number;
      
      protected var §?K§:Number;
      
      protected var §<#§:Number;
      
      protected var §5!u§:Boolean;
      
      protected var §?Q§:Boolean;
      
      protected var §41§:Boolean;
      
      protected var §'!K§:Number;
      
      protected var §%O§:Number;
      
      protected var §=J§:Array;
      
      protected var §#"!§:Array;
      
      protected var §+"D§:String;
      
      protected var §"!T§:Boolean;
      
      protected var §>!H§:Array;
      
      public function §;!4§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false, param7:§=!T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §<G§ = param7;
         this.§?"D§ = param1.definition;
         this.§0_§ = param1.density;
         this.§1o§ = param1.radius;
         this.§ !b§ = param1.type;
         this.§9A§ = param1.sprite;
         this.§-!§ = param1.defence;
         this.§;S§ = param1.strenght;
         this.§;r§ = param1.onCreated;
         this.§&Y§ = param1.onDestroyed;
         this.§,n§ = param1.explosionRadius;
         this.§9S§ = param1.explosionForce;
         this.§4"6§ = param1.explosionDamageRadius;
         this.§=K§ = param1.explosionDamage;
         this.§`@§ = this.§5,§(param1.spawnedObjects);
         this.§6%§ = param1.spawnDistance;
         this.§3"E§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§=">§ = this.§5,§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§=">§ = [String(param1.particlesDestroyed)];
         }
         else if(§]!d§)
         {
            this.§=">§ = [§]!d§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§>!H§ = this.§5,§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§>!H§ = [String(param1.particlesCollision)];
         }
         this.§`%§ = param1.isBullet;
         this.§>!T§ = param1.stopAnimationsAfterCollision;
         this.§`"E§ = param1.animateRotation;
         this.§!"'§ = param1.constantRotation;
         this.§;!k§ = param1.maxRotationFrequency;
         this.§default§ = param1.minRotationFrequency;
         this.§?K§ = param1.minRotationAmplitude;
         this.§<#§ = param1.maxRotationAmplitude;
         this.§5!u§ = param1.destroyableByTap;
         this.§?Q§ = param1.destroyWhenFrozen;
         this.§41§ = param1.isVisible;
         this.§'!K§ = param1.width;
         this.§%O§ = param1.height;
         this.§=J§ = this.§5,§(param1.loopingParticles);
         this.§#"!§ = this.§5,§(param1.animationSprites);
         this.§+"D§ = param1.spriteScore;
         this.§"!T§ = param1.horFlip;
      }
      
      private function §5,§(param1:*) : Array
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
         if(this.§#"!§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§#"!§.length)
         {
            _loc1_.push(this.§#"!§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§6!!§.§[!;§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§`"E§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§;!k§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§default§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§<#§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§?K§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§>!T§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6%§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§3"E§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§,n§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§9S§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§4"6§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§=K§;
      }
      
      public function get §[!L§() : int
      {
         if(this.§`@§)
         {
            return this.§`@§.length;
         }
         return 0;
      }
      
      public function §%S§(param1:int) : String
      {
         return this.§`@§[param1];
      }
      
      public function get §6J§() : int
      {
         if(this.§`@§)
         {
            return this.§`@§.length;
         }
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         if(this.§=J§)
         {
            return this.§=J§.length;
         }
         return 0;
      }
      
      public function getLoopingParticle(param1:int) : String
      {
         return this.§=J§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§!"'§;
      }
      
      public function get definition() : String
      {
         return this.§?"D§;
      }
      
      public function get §+! §() : int
      {
         if(this.§=">§)
         {
            return this.§=">§.length;
         }
         return 0;
      }
      
      public function §,!Q§(param1:int) : String
      {
         if(this.§=">§)
         {
            return this.§=">§[param1];
         }
         return null;
      }
      
      public function get §1a§() : int
      {
         if(this.§>!H§)
         {
            return this.§>!H§.length;
         }
         return 0;
      }
      
      public function §;y§(param1:int) : String
      {
         if(this.§>!H§)
         {
            return this.§>!H§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§+"D§;
      }
      
      public function get §^!s§() : Boolean
      {
         return this.§"!T§;
      }
   }
}
