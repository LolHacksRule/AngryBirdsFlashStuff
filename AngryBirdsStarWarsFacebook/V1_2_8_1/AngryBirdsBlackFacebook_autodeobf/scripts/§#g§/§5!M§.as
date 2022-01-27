package §#g§
{
   import §!r§.§0N§;
   
   public class §5!M§ extends §[!F§
   {
       
      
      protected var §1"N§:String;
      
      protected var §^#,§:Number;
      
      protected var §7"+§:Number;
      
      protected var §=B§:String;
      
      protected var §0v§:String;
      
      protected var §1Y§:Number;
      
      protected var §3!G§:Number;
      
      protected var §`G§:String;
      
      protected var §]",§:String;
      
      protected var §'&§:Number;
      
      protected var §!"5§:Number;
      
      protected var §1##§:Number;
      
      protected var §9"T§:Number;
      
      protected var §>!V§:Array;
      
      protected var §]#&§:Number;
      
      protected var §<-§:Number;
      
      protected var §[!T§:Array;
      
      protected var §="Y§:Boolean;
      
      protected var §7J§:Boolean;
      
      protected var §65§:Boolean;
      
      protected var §0"E§:Boolean;
      
      protected var §`#+§:Number;
      
      protected var §1!W§:Number;
      
      protected var §+!b§:Number;
      
      protected var §%!$§:Number;
      
      protected var §0&§:Boolean;
      
      protected var §&"0§:Boolean;
      
      protected var § !Q§:Boolean;
      
      protected var §0"e§:Number;
      
      protected var §?!O§:Number;
      
      protected var §<;§:Array;
      
      protected var §="G§:Array;
      
      protected var §4#§:String;
      
      protected var §5B§:Boolean;
      
      protected var §;"I§:Array;
      
      public function §5!M§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false, param7:§?B§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §?$§ = param7;
         this.§1"N§ = param1.definition;
         this.§^#,§ = param1.density;
         this.§7"+§ = param1.radius;
         this.§=B§ = param1.type;
         this.§0v§ = param1.sprite;
         this.§1Y§ = param1.defence;
         this.§3!G§ = param1.strenght;
         this.§`G§ = param1.onCreated;
         this.§]",§ = param1.onDestroyed;
         this.§'&§ = param1.explosionRadius;
         this.§!"5§ = param1.explosionForce;
         this.§1##§ = param1.explosionDamageRadius;
         this.§9"T§ = param1.explosionDamage;
         this.§>!V§ = this.§8!6§(param1.spawnedObjects);
         this.§]#&§ = param1.spawnDistance;
         this.§<-§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§[!T§ = this.§8!6§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§[!T§ = [String(param1.particlesDestroyed)];
         }
         else if(§9#-§)
         {
            this.§[!T§ = [§9#-§];
         }
         if(param1.particlesCollision is Array)
         {
            this.§;"I§ = this.§8!6§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§;"I§ = [String(param1.particlesCollision)];
         }
         this.§="Y§ = param1.isBullet;
         this.§7J§ = param1.stopAnimationsAfterCollision;
         this.§65§ = param1.animateRotation;
         this.§0"E§ = param1.constantRotation;
         this.§`#+§ = param1.maxRotationFrequency;
         this.§1!W§ = param1.minRotationFrequency;
         this.§+!b§ = param1.minRotationAmplitude;
         this.§%!$§ = param1.maxRotationAmplitude;
         this.§0&§ = param1.destroyableByTap;
         this.§&"0§ = param1.destroyWhenFrozen;
         this.§ !Q§ = param1.isVisible;
         this.§0"e§ = param1.width;
         this.§?!O§ = param1.height;
         this.§<;§ = this.§8!6§(param1.loopingParticles);
         this.§="G§ = this.§8!6§(param1.animationSprites);
         this.§4#§ = param1.spriteScore;
         this.§5B§ = param1.horFlip;
      }
      
      private function §8!6§(param1:*) : Array
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
         if(this.§="G§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§="G§.length)
         {
            _loc1_.push(this.§="G§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§0N§.§'"T§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§65§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§`#+§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§1!W§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§%!$§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§+!b§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§7J§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§]#&§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§<-§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§'&§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§!"5§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§1##§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§9"T§;
      }
      
      public function get §;1§() : int
      {
         if(this.§>!V§)
         {
            return this.§>!V§.length;
         }
         return 0;
      }
      
      public function §7"K§(param1:int) : String
      {
         return this.§>!V§[param1];
      }
      
      public function get §7"t§() : int
      {
         if(this.§>!V§)
         {
            return this.§>!V§.length;
         }
         return 0;
      }
      
      public function get §6!b§() : int
      {
         if(this.§<;§)
         {
            return this.§<;§.length;
         }
         return 0;
      }
      
      public function §^!s§(param1:int) : String
      {
         return this.§<;§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§0"E§;
      }
      
      public function get definition() : String
      {
         return this.§1"N§;
      }
      
      public function get §<! §() : int
      {
         if(this.§[!T§)
         {
            return this.§[!T§.length;
         }
         return 0;
      }
      
      public function §+!&§(param1:int) : String
      {
         if(this.§[!T§)
         {
            return this.§[!T§[param1];
         }
         return null;
      }
      
      public function get §&">§() : int
      {
         if(this.§;"I§)
         {
            return this.§;"I§.length;
         }
         return 0;
      }
      
      public function §1!`§(param1:int) : String
      {
         if(this.§;"I§)
         {
            return this.§;"I§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§4#§;
      }
      
      public function get §<!,§() : Boolean
      {
         return this.§5B§;
      }
   }
}
