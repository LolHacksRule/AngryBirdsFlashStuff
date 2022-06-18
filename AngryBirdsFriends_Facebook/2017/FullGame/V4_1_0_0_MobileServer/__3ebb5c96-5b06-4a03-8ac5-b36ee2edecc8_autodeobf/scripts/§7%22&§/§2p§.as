package §7"&§
{
   import §>!5§.§^"9§;
   
   public class §2p§ extends §+#p§
   {
       
      
      protected var §-!e§:String;
      
      protected var §2!+§:Number;
      
      protected var §7!@§:Number;
      
      protected var §7#n§:String;
      
      protected var §6"l§:Number;
      
      protected var §&#D§:Number;
      
      protected var §;!a§:String;
      
      protected var §=$2§:String;
      
      protected var §^!w§:Number;
      
      protected var §=#!§:Number;
      
      protected var §]"f§:Number;
      
      protected var §0y§:Number;
      
      protected var §>"E§:Array;
      
      protected var § "h§:Number;
      
      protected var §<",§:Number;
      
      protected var §6!w§:Array;
      
      protected var §`#t§:Boolean;
      
      protected var §^!Y§:Boolean;
      
      protected var §11§:Boolean;
      
      protected var §4x§:Boolean;
      
      protected var §61§:Number;
      
      protected var §6"O§:Number;
      
      protected var § ! §:Number;
      
      protected var §2#c§:Number;
      
      protected var §,W§:Boolean;
      
      protected var § U§:Boolean;
      
      protected var §6p§:Boolean;
      
      protected var § ";§:Number;
      
      protected var §;!U§:Number;
      
      protected var §7$'§:Array;
      
      protected var §]'§:Array;
      
      protected var §["%§:String;
      
      protected var §0!`§:Boolean;
      
      protected var §6#V§:Array;
      
      public function §2p§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §="l§ = param7;
         this.§-!e§ = param1.definition;
         this.§2!+§ = param1.density;
         this.§7!@§ = param1.radius;
         this.§7#n§ = param1.type;
         this.§6"l§ = param1.defence;
         this.§&#D§ = param1.strenght;
         this.§;!a§ = param1.onCreated;
         this.§=$2§ = param1.onDestroyed;
         this.§^!w§ = param1.explosionRadius;
         this.§=#!§ = param1.explosionForce;
         this.§]"f§ = param1.explosionDamageRadius;
         this.§0y§ = param1.explosionDamage;
         this.§>"E§ = this.§`T§(param1.spawnedObjects);
         this.§ "h§ = param1.spawnDistance;
         this.§<",§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§6!w§ = this.§`T§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§6!w§ = [String(_loc8_)];
         }
         else if(§]"V§)
         {
            this.§6!w§ = [§]"V§];
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
            this.§6!w§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§6#V§ = this.§`T§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§6#V§ = [String(param1.particlesCollision)];
         }
         this.§`#t§ = param1.isBullet;
         this.§^!Y§ = param1.stopAnimationsAfterCollision;
         this.§11§ = param1.animateRotation;
         this.§4x§ = param1.constantRotation;
         this.§61§ = param1.maxRotationFrequency;
         this.§6"O§ = param1.minRotationFrequency;
         this.§ ! § = param1.minRotationAmplitude;
         this.§2#c§ = param1.maxRotationAmplitude;
         this.§,W§ = param1.destroyableByTap;
         this.§ U§ = param1.destroyWhenFrozen;
         this.§6p§ = param1.isVisible;
         this.§ ";§ = param1.width;
         this.§;!U§ = param1.height;
         this.§7$'§ = this.§`T§(param1.loopingParticles);
         this.§]'§ = this.§`T§(param1.animationSprites);
         this.§["%§ = param1.spriteScore;
         this.§0!`§ = param1.horFlip;
      }
      
      private function §`T§(param1:*) : Array
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
         if(this.§]'§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§]'§.length)
         {
            _loc1_.push(this.§]'§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§^"9§.§5!G§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§11§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§61§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§6"O§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§2#c§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§ ! §;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§^!Y§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§ "h§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§<",§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§^!w§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§=#!§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§]"f§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§0y§;
      }
      
      public function get §7"n§() : int
      {
         if(this.§>"E§)
         {
            return this.§>"E§.length;
         }
         return 0;
      }
      
      public function § "?§(param1:int) : String
      {
         return this.§>"E§[param1];
      }
      
      public function get §4e§() : int
      {
         if(this.§>"E§)
         {
            return this.§>"E§.length;
         }
         return 0;
      }
      
      public function get §?"§() : int
      {
         if(this.§7$'§)
         {
            return this.§7$'§.length;
         }
         return 0;
      }
      
      public function §+$"§(param1:int) : String
      {
         return this.§7$'§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§4x§;
      }
      
      public function get definition() : String
      {
         return this.§-!e§;
      }
      
      public function get §!$"§() : int
      {
         if(this.§6!w§)
         {
            return this.§6!w§.length;
         }
         return 0;
      }
      
      public function §'i§(param1:int) : String
      {
         if(this.§6!w§)
         {
            return this.§6!w§[param1];
         }
         return null;
      }
      
      public function get §-#E§() : int
      {
         if(this.§6#V§)
         {
            return this.§6#V§.length;
         }
         return 0;
      }
      
      public function §4#S§(param1:int) : String
      {
         if(this.§6#V§)
         {
            return this.§6#V§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§["%§;
      }
      
      public function get §""H§() : Boolean
      {
         return this.§0!`§;
      }
   }
}
