package §?§#3
{
   import §-!!§.§8"J§;
   
   public class §7E§ extends §+"%§
   {
       
      
      protected var §<$4§:String;
      
      protected var §'#7§:Number;
      
      protected var § "=§:Number;
      
      protected var §=$?§:String;
      
      protected var §[#N§:Number;
      
      protected var §0#6§:Number;
      
      protected var §`#H§:String;
      
      protected var §!$;§:String;
      
      protected var §6!R§:Array;
      
      protected var §!%§:Number;
      
      protected var §-f§:Number;
      
      protected var §;!Y§:Array;
      
      protected var §[y§:Boolean;
      
      protected var §1!&§:Boolean;
      
      protected var §8"E§:Boolean;
      
      protected var §8!r§:Boolean;
      
      protected var §8#d§:Number;
      
      protected var §9$7§:Number;
      
      protected var §1#v§:Number;
      
      protected var §5#6§:Number;
      
      protected var §[v§:Boolean;
      
      protected var §[!s§:Boolean;
      
      protected var §?#v§:Boolean;
      
      protected var §@#Z§:Number;
      
      protected var §+#j§:Number;
      
      protected var §-#7§:Array;
      
      protected var §"#N§:Array;
      
      protected var §>C§:String;
      
      protected var §[!'§:Boolean;
      
      protected var §'`§:Array;
      
      public function §7E§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false, param7:§`"N§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §3<§ = param7;
         this.§<$4§ = param1.definition;
         this.§'#7§ = param1.density;
         this.§ "=§ = param1.radius;
         this.§=$?§ = param1.type;
         this.§[#N§ = param1.defence;
         this.§0#6§ = param1.strenght;
         this.§`#H§ = param1.onCreated;
         this.§!$;§ = param1.onDestroyed;
         this.§6!R§ = this.§ "o§(param1.spawnedObjects);
         this.§!%§ = param1.spawnDistance;
         this.§-f§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§;!Y§ = this.§ "o§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§;!Y§ = [String(_loc8_)];
         }
         else if(§-#5§)
         {
            this.§;!Y§ = [§-#5§];
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
            this.§;!Y§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§'`§ = this.§ "o§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§'`§ = [String(param1.particlesCollision)];
         }
         this.§[y§ = param1.isBullet;
         this.§1!&§ = param1.stopAnimationsAfterCollision;
         this.§8"E§ = param1.animateRotation;
         this.§8!r§ = param1.constantRotation;
         this.§8#d§ = param1.maxRotationFrequency;
         this.§9$7§ = param1.minRotationFrequency;
         this.§1#v§ = param1.minRotationAmplitude;
         this.§5#6§ = param1.maxRotationAmplitude;
         this.§[v§ = param1.destroyableByTap;
         this.§[!s§ = param1.destroyWhenFrozen;
         this.§?#v§ = param1.isVisible;
         this.§@#Z§ = param1.width;
         this.§+#j§ = param1.height;
         this.§-#7§ = this.§ "o§(param1.loopingParticles);
         this.§"#N§ = this.§ "o§(param1.animationSprites);
         this.§>C§ = param1.spriteScore;
         this.§[!'§ = param1.horFlip;
         §=#!§ = param1.specialty;
         §3N§ = param1.explosionRadius;
         §%"<§ = param1.explosionForce;
         §4#'§ = param1.explosionDamageRadius;
         §&!7§ = param1.explosionDamage;
      }
      
      private function § "o§(param1:*) : Array
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
         if(this.§"#N§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§"#N§.length)
         {
            _loc1_.push(this.§"#N§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§8"J§.§>!N§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§8"E§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§8#d§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§9$7§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§5#6§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§1#v§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§1!&§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§!%§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§-f§;
      }
      
      public function get §'$!§() : int
      {
         if(this.§6!R§)
         {
            return this.§6!R§.length;
         }
         return 0;
      }
      
      public function §<$5§(param1:int) : String
      {
         return this.§6!R§[param1];
      }
      
      public function get §6"k§() : int
      {
         if(this.§6!R§)
         {
            return this.§6!R§.length;
         }
         return 0;
      }
      
      public function get §9"a§() : int
      {
         if(this.§-#7§)
         {
            return this.§-#7§.length;
         }
         return 0;
      }
      
      public function §6"p§(param1:int) : String
      {
         return this.§-#7§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§8!r§;
      }
      
      public function get definition() : String
      {
         return this.§<$4§;
      }
      
      public function get §@#h§() : int
      {
         if(this.§;!Y§)
         {
            return this.§;!Y§.length;
         }
         return 0;
      }
      
      public function §%"U§(param1:int) : String
      {
         if(this.§;!Y§)
         {
            return this.§;!Y§[param1];
         }
         return null;
      }
      
      public function get §6"9§() : int
      {
         if(this.§'`§)
         {
            return this.§'`§.length;
         }
         return 0;
      }
      
      public function §;"Q§(param1:int) : String
      {
         if(this.§'`§)
         {
            return this.§'`§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§>C§;
      }
      
      public function get §&j§() : Boolean
      {
         return this.§[!'§;
      }
   }
}
