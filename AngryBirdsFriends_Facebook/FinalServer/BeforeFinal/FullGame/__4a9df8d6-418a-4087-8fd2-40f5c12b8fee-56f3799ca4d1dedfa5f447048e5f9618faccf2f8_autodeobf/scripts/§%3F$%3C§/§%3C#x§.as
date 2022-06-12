package §?$<§
{
   import §6!3§.§;!U§;
   
   public class §<#x§ extends §@"q§
   {
       
      
      protected var §3"c§:String;
      
      protected var §[#Z§:Number;
      
      protected var §-!c§:Number;
      
      protected var §@4§:String;
      
      protected var §?!B§:Number;
      
      protected var §""i§:Number;
      
      protected var §&"I§:String;
      
      protected var §+!Q§:String;
      
      protected var §8d§:Array;
      
      protected var §=#w§:Number;
      
      protected var §0#g§:Number;
      
      protected var §1#L§:Array;
      
      protected var §class§:Boolean;
      
      protected var §7"R§:Boolean;
      
      protected var §#`§:Boolean;
      
      protected var §""U§:Boolean;
      
      protected var § #"§:Number;
      
      protected var § !;§:Number;
      
      protected var §;"Y§:Number;
      
      protected var §>#1§:Number;
      
      protected var §&z§:Boolean;
      
      protected var §`P§:Boolean;
      
      protected var §@#1§:Boolean;
      
      protected var §>H§:Number;
      
      protected var §^l§:Number;
      
      protected var §6$?§:Array;
      
      protected var § #d§:Array;
      
      protected var §;j§:String;
      
      protected var § "7§:Boolean;
      
      protected var §<4§:Array;
      
      public function §<#x§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false, param7:§^#1§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §6A§ = param7;
         this.§3"c§ = param1.definition;
         this.§[#Z§ = param1.density;
         this.§-!c§ = param1.radius;
         this.§@4§ = param1.type;
         this.§?!B§ = param1.defence;
         this.§""i§ = param1.strenght;
         this.§&"I§ = param1.onCreated;
         this.§+!Q§ = param1.onDestroyed;
         this.§8d§ = this.§ !c§(param1.spawnedObjects);
         this.§=#w§ = param1.spawnDistance;
         this.§0#g§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§1#L§ = this.§ !c§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§1#L§ = [String(_loc8_)];
         }
         else if(§`$1§)
         {
            this.§1#L§ = [§`$1§];
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
            this.§1#L§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§<4§ = this.§ !c§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§<4§ = [String(param1.particlesCollision)];
         }
         this.§class§ = param1.isBullet;
         this.§7"R§ = param1.stopAnimationsAfterCollision;
         this.§#`§ = param1.animateRotation;
         this.§""U§ = param1.constantRotation;
         this.§ #"§ = param1.maxRotationFrequency;
         this.§ !;§ = param1.minRotationFrequency;
         this.§;"Y§ = param1.minRotationAmplitude;
         this.§>#1§ = param1.maxRotationAmplitude;
         this.§&z§ = param1.destroyableByTap;
         this.§`P§ = param1.destroyWhenFrozen;
         this.§@#1§ = param1.isVisible;
         this.§>H§ = param1.width;
         this.§^l§ = param1.height;
         this.§6$?§ = this.§ !c§(param1.loopingParticles);
         this.§ #d§ = this.§ !c§(param1.animationSprites);
         this.§;j§ = param1.spriteScore;
         this.§ "7§ = param1.horFlip;
         §8!c§ = param1.specialty;
         §<C§ = param1.explosionRadius;
         §-##§ = param1.explosionForce;
         §6#L§ = param1.explosionDamageRadius;
         §`Y§ = param1.explosionDamage;
      }
      
      private function § !c§(param1:*) : Array
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
         if(this.§ #d§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§ #d§.length)
         {
            _loc1_.push(this.§ #d§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§;!U§.§,#c§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§#`§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§ #"§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§ !;§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§>#1§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§;"Y§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§7"R§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§=#w§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§0#g§;
      }
      
      public function get §;!j§() : int
      {
         if(this.§8d§)
         {
            return this.§8d§.length;
         }
         return 0;
      }
      
      public function §`$6§(param1:int) : String
      {
         return this.§8d§[param1];
      }
      
      public function get §5#@§() : int
      {
         if(this.§8d§)
         {
            return this.§8d§.length;
         }
         return 0;
      }
      
      public function get §5#f§() : int
      {
         if(this.§6$?§)
         {
            return this.§6$?§.length;
         }
         return 0;
      }
      
      public function §4!Z§(param1:int) : String
      {
         return this.§6$?§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§""U§;
      }
      
      public function get definition() : String
      {
         return this.§3"c§;
      }
      
      public function get §1"N§() : int
      {
         if(this.§1#L§)
         {
            return this.§1#L§.length;
         }
         return 0;
      }
      
      public function §7;§(param1:int) : String
      {
         if(this.§1#L§)
         {
            return this.§1#L§[param1];
         }
         return null;
      }
      
      public function get §'#[§() : int
      {
         if(this.§<4§)
         {
            return this.§<4§.length;
         }
         return 0;
      }
      
      public function §@#D§(param1:int) : String
      {
         if(this.§<4§)
         {
            return this.§<4§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§;j§;
      }
      
      public function get §9!D§() : Boolean
      {
         return this.§ "7§;
      }
   }
}
