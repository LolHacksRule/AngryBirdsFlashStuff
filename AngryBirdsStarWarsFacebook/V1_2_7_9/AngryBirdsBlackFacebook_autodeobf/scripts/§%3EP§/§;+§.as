package §>P§
{
   import §6"R§.§4!w§;
   
   public class §;+§ extends §=4§
   {
       
      
      protected var §-!@§:String;
      
      protected var §`"e§:Number;
      
      protected var §8d§:Number;
      
      protected var §]m§:String;
      
      protected var § "6§:String;
      
      protected var §'!L§:Number;
      
      protected var §`!I§:Number;
      
      protected var §`!N§:String;
      
      protected var §5"A§:String;
      
      protected var §>[§:Number;
      
      protected var §^!$§:Number;
      
      protected var §,#7§:Number;
      
      protected var §@!^§:Number;
      
      protected var §1"+§:Array;
      
      protected var §6!$§:Number;
      
      protected var §-Z§:Number;
      
      protected var §break§:Array;
      
      protected var §7!u§:Boolean;
      
      protected var §;!<§:Boolean;
      
      protected var §5"f§:Boolean;
      
      protected var §]"O§:Boolean;
      
      protected var §=7§:Number;
      
      protected var §%!D§:Number;
      
      protected var §&#-§:Number;
      
      protected var §%!§:Number;
      
      protected var §@!5§:Boolean;
      
      protected var §,"B§:Boolean;
      
      protected var §'!k§:Boolean;
      
      protected var §^"t§:Number;
      
      protected var §`!y§:Number;
      
      protected var §]"r§:Array;
      
      protected var §3"-§:Array;
      
      protected var §,p§:String;
      
      protected var §,"m§:Boolean;
      
      protected var §8!o§:Array;
      
      public function §;+§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §+!r§ = param7;
         this.§-!@§ = param1.definition;
         this.§`"e§ = param1.density;
         this.§8d§ = param1.radius;
         this.§]m§ = param1.type;
         this.§ "6§ = param1.sprite;
         this.§'!L§ = param1.defence;
         this.§`!I§ = param1.strenght;
         this.§`!N§ = param1.onCreated;
         this.§5"A§ = param1.onDestroyed;
         this.§>[§ = param1.explosionRadius;
         this.§^!$§ = param1.explosionForce;
         this.§,#7§ = param1.explosionDamageRadius;
         this.§@!^§ = param1.explosionDamage;
         this.§1"+§ = this.§?!G§(param1.spawnedObjects);
         this.§6!$§ = param1.spawnDistance;
         this.§-Z§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§break§ = this.§?!G§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§break§ = [String(param1.particlesDestroyed)];
         }
         else if(§`# §)
         {
            this.§break§ = [§`# §];
         }
         if(param1.particlesCollision is Array)
         {
            this.§8!o§ = this.§?!G§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§8!o§ = [String(param1.particlesCollision)];
         }
         this.§7!u§ = param1.isBullet;
         this.§;!<§ = param1.stopAnimationsAfterCollision;
         this.§5"f§ = param1.animateRotation;
         this.§]"O§ = param1.constantRotation;
         this.§=7§ = param1.maxRotationFrequency;
         this.§%!D§ = param1.minRotationFrequency;
         this.§&#-§ = param1.minRotationAmplitude;
         this.§%!§ = param1.maxRotationAmplitude;
         this.§@!5§ = param1.destroyableByTap;
         this.§,"B§ = param1.destroyWhenFrozen;
         this.§'!k§ = param1.isVisible;
         this.§^"t§ = param1.width;
         this.§`!y§ = param1.height;
         this.§]"r§ = this.§?!G§(param1.loopingParticles);
         this.§3"-§ = this.§?!G§(param1.animationSprites);
         this.§,p§ = param1.spriteScore;
         this.§,"m§ = param1.horFlip;
      }
      
      private function §?!G§(param1:*) : Array
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
         if(this.§3"-§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§3"-§.length)
         {
            _loc1_.push(this.§3"-§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§4!w§.§-"§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§5"f§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§=7§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§%!D§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§%!§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§&#-§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§;!<§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6!$§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§-Z§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§>[§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§^!$§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§,#7§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§@!^§;
      }
      
      public function get §<-§() : int
      {
         if(this.§1"+§)
         {
            return this.§1"+§.length;
         }
         return 0;
      }
      
      public function §default§(param1:int) : String
      {
         return this.§1"+§[param1];
      }
      
      public function get § !!§() : int
      {
         if(this.§1"+§)
         {
            return this.§1"+§.length;
         }
         return 0;
      }
      
      public function get §]"v§() : int
      {
         if(this.§]"r§)
         {
            return this.§]"r§.length;
         }
         return 0;
      }
      
      public function §<!C§(param1:int) : String
      {
         return this.§]"r§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§]"O§;
      }
      
      public function get definition() : String
      {
         return this.§-!@§;
      }
      
      public function get §,=§() : int
      {
         if(this.§break§)
         {
            return this.§break§.length;
         }
         return 0;
      }
      
      public function § " §(param1:int) : String
      {
         if(this.§break§)
         {
            return this.§break§[param1];
         }
         return null;
      }
      
      public function get §+#$§() : int
      {
         if(this.§8!o§)
         {
            return this.§8!o§.length;
         }
         return 0;
      }
      
      public function §9"V§(param1:int) : String
      {
         if(this.§8!o§)
         {
            return this.§8!o§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§,p§;
      }
      
      public function get §>H§() : Boolean
      {
         return this.§,"m§;
      }
   }
}
