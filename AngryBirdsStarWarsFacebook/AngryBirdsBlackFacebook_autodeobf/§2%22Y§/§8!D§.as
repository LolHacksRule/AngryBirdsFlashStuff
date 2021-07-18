package §2"Y§
{
   import §7P§.§&#=§;
   
   public class §8!D§ extends §["$§
   {
       
      
      protected var §^#4§:String;
      
      protected var §9!]§:Number;
      
      protected var §0#J§:Number;
      
      protected var §;"-§:String;
      
      protected var §%G§:String;
      
      protected var §4O§:Number;
      
      protected var §>!5§:Number;
      
      protected var §3!'§:String;
      
      protected var §!!s§:String;
      
      protected var §]#V§:Number;
      
      protected var §#+§:Number;
      
      protected var § !q§:Number;
      
      protected var §?P§:Number;
      
      protected var §]'§:Array;
      
      protected var §6!i§:Number;
      
      protected var §^!G§:Number;
      
      protected var §@!x§:Array;
      
      protected var §=#>§:Boolean;
      
      protected var §8T§:Boolean;
      
      protected var §<!"§:Boolean;
      
      protected var §1#W§:Boolean;
      
      protected var § "N§:Number;
      
      protected var § !I§:Number;
      
      protected var §7"8§:Number;
      
      protected var §3B§:Number;
      
      protected var §@v§:Boolean;
      
      protected var §[d§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var § #I§:Array;
      
      protected var §2#I§:Array;
      
      protected var §4#L§:String;
      
      protected var §%!w§:Boolean;
      
      protected var §<=§:Array;
      
      public function §8!D§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §>"Q§ = param7;
         this.§^#4§ = param1.definition;
         this.§9!]§ = param1.density;
         this.§0#J§ = param1.radius;
         this.§;"-§ = param1.type;
         this.§%G§ = param1.sprite;
         this.§4O§ = param1.defence;
         this.§>!5§ = param1.strenght;
         this.§3!'§ = param1.onCreated;
         this.§!!s§ = param1.onDestroyed;
         this.§]#V§ = param1.explosionRadius;
         this.§#+§ = param1.explosionForce;
         this.§ !q§ = param1.explosionDamageRadius;
         this.§?P§ = param1.explosionDamage;
         this.§]'§ = this.§^!h§(param1.spawnedObjects);
         this.§6!i§ = param1.spawnDistance;
         this.§^!G§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§@!x§ = this.§^!h§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§@!x§ = [String(param1.particlesDestroyed)];
         }
         else if(§%d§)
         {
            this.§@!x§ = [§%d§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§<=§ = this.§^!h§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§<=§ = [String(param1.particlesCollision)];
         }
         this.§=#>§ = param1.isBullet;
         this.§8T§ = param1.stopAnimationsAfterCollision;
         this.§<!"§ = param1.animateRotation;
         this.§1#W§ = param1.constantRotation;
         this.§ "N§ = param1.maxRotationFrequency;
         this.§ !I§ = param1.minRotationFrequency;
         this.§7"8§ = param1.minRotationAmplitude;
         this.§3B§ = param1.maxRotationAmplitude;
         this.§@v§ = param1.destroyableByTap;
         this.§[d§ = param1.destroyWhenFrozen;
         this.§"!A§ = param1.isVisible;
         this.§6"?§ = param1.width;
         this.§[!4§ = param1.height;
         this.§ #I§ = this.§^!h§(param1.loopingParticles);
         this.§2#I§ = this.§^!h§(param1.animationSprites);
         this.§4#L§ = param1.spriteScore;
         this.§%!w§ = param1.horFlip;
      }
      
      private function §^!h§(param1:*) : Array
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
         if(this.§2#I§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§2#I§.length)
         {
            _loc1_.push(this.§2#I§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§&#=§.§'%§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§<!"§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§ "N§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§ !I§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§3B§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§7"8§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§8T§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6!i§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§^!G§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§]#V§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§#+§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§ !q§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§?P§;
      }
      
      public function get §4"-§() : int
      {
         if(this.§]'§)
         {
            return this.§]'§.length;
         }
         return 0;
      }
      
      public function §8"8§(param1:int) : String
      {
         return this.§]'§[param1];
      }
      
      public function get §1!0§() : int
      {
         if(this.§]'§)
         {
            return this.§]'§.length;
         }
         return 0;
      }
      
      public function get § "0§() : int
      {
         if(this.§ #I§)
         {
            return this.§ #I§.length;
         }
         return 0;
      }
      
      public function §&#S§(param1:int) : String
      {
         return this.§ #I§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§1#W§;
      }
      
      public function get definition() : String
      {
         return this.§^#4§;
      }
      
      public function get §-Q§() : int
      {
         if(this.§@!x§)
         {
            return this.§@!x§.length;
         }
         return 0;
      }
      
      public function §="§(param1:int) : String
      {
         if(this.§@!x§)
         {
            return this.§@!x§[param1];
         }
         return null;
      }
      
      public function get §!a§() : int
      {
         if(this.§<=§)
         {
            return this.§<=§.length;
         }
         return 0;
      }
      
      public function §&V§(param1:int) : String
      {
         if(this.§<=§)
         {
            return this.§<=§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§4#L§;
      }
      
      public function get §-"i§() : Boolean
      {
         return this.§%!w§;
      }
   }
}
