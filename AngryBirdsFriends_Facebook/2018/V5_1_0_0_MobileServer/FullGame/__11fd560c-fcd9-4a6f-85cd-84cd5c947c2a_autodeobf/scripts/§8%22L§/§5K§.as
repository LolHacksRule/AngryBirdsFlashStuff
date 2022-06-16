package §8"L§
{
   import §8§.§4!y§;
   
   public class §5K§ extends §5$=§
   {
       
      
      protected var §'#@§:String;
      
      protected var §^6§:Number;
      
      protected var §4#&§:Number;
      
      protected var §"#7§:String;
      
      protected var §-"&§:Number;
      
      protected var §&>§:Number;
      
      protected var §+#6§:String;
      
      protected var §;#1§:String;
      
      protected var §`!@§:Number;
      
      protected var §<!M§:Number;
      
      protected var §'"@§:Number;
      
      protected var §,#B§:Number;
      
      protected var §>Z§:Array;
      
      protected var §?U§:Number;
      
      protected var §,#p§:Number;
      
      protected var §"!2§:Array;
      
      protected var §^#F§:Boolean;
      
      protected var §-#q§:Boolean;
      
      protected var §@#=§:Boolean;
      
      protected var §6!_§:Boolean;
      
      protected var §'!O§:Number;
      
      protected var §;"3§:Number;
      
      protected var §@"4§:Number;
      
      protected var §%!J§:Number;
      
      protected var §]!e§:Boolean;
      
      protected var §3K§:Boolean;
      
      protected var §1!v§:Boolean;
      
      protected var §4"V§:Number;
      
      protected var §""&§:Number;
      
      protected var §@!_§:Array;
      
      protected var §1m§:Array;
      
      protected var §2"R§:String;
      
      protected var §@#7§:Boolean;
      
      protected var §-!E§:Array;
      
      public function §5K§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         var _loc9_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §5#S§ = param7;
         this.§'#@§ = param1.definition;
         this.§^6§ = param1.density;
         this.§4#&§ = param1.radius;
         this.§"#7§ = param1.type;
         this.§-"&§ = param1.defence;
         this.§&>§ = param1.strenght;
         this.§+#6§ = param1.onCreated;
         this.§;#1§ = param1.onDestroyed;
         this.§`!@§ = param1.explosionRadius;
         this.§<!M§ = param1.explosionForce;
         this.§'"@§ = param1.explosionDamageRadius;
         this.§,#B§ = param1.explosionDamage;
         this.§>Z§ = this.§,!g§(param1.spawnedObjects);
         this.§?U§ = param1.spawnDistance;
         this.§,#p§ = param1.angleOffset;
         var _loc8_:*;
         if((_loc8_ = !!param1.particlesDestroyed ? param1.particlesDestroyed : param1.particles) is Array)
         {
            this.§"!2§ = this.§,!g§(_loc8_);
         }
         else if(_loc8_)
         {
            this.§"!2§ = [String(_loc8_)];
         }
         else if(§=$6§)
         {
            this.§"!2§ = [§=$6§];
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
            this.§"!2§ = _loc9_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§-!E§ = this.§,!g§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§-!E§ = [String(param1.particlesCollision)];
         }
         this.§^#F§ = param1.isBullet;
         this.§-#q§ = param1.stopAnimationsAfterCollision;
         this.§@#=§ = param1.animateRotation;
         this.§6!_§ = param1.constantRotation;
         this.§'!O§ = param1.maxRotationFrequency;
         this.§;"3§ = param1.minRotationFrequency;
         this.§@"4§ = param1.minRotationAmplitude;
         this.§%!J§ = param1.maxRotationAmplitude;
         this.§]!e§ = param1.destroyableByTap;
         this.§3K§ = param1.destroyWhenFrozen;
         this.§1!v§ = param1.isVisible;
         this.§4"V§ = param1.width;
         this.§""&§ = param1.height;
         this.§@!_§ = this.§,!g§(param1.loopingParticles);
         this.§1m§ = this.§,!g§(param1.animationSprites);
         this.§2"R§ = param1.spriteScore;
         this.§@#7§ = param1.horFlip;
      }
      
      private function §,!g§(param1:*) : Array
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
         if(this.§1m§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§1m§.length)
         {
            _loc1_.push(this.§1m§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§4!y§.§<#J§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§@#=§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§'!O§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§;"3§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§%!J§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§@"4§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§-#q§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§?U§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§,#p§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§`!@§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§<!M§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§'"@§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§,#B§;
      }
      
      public function get §%#z§() : int
      {
         if(this.§>Z§)
         {
            return this.§>Z§.length;
         }
         return 0;
      }
      
      public function §=F§(param1:int) : String
      {
         return this.§>Z§[param1];
      }
      
      public function get §#!W§() : int
      {
         if(this.§>Z§)
         {
            return this.§>Z§.length;
         }
         return 0;
      }
      
      public function get §+!A§() : int
      {
         if(this.§@!_§)
         {
            return this.§@!_§.length;
         }
         return 0;
      }
      
      public function §#"u§(param1:int) : String
      {
         return this.§@!_§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§6!_§;
      }
      
      public function get definition() : String
      {
         return this.§'#@§;
      }
      
      public function get §<#&§() : int
      {
         if(this.§"!2§)
         {
            return this.§"!2§.length;
         }
         return 0;
      }
      
      public function §7#x§(param1:int) : String
      {
         if(this.§"!2§)
         {
            return this.§"!2§[param1];
         }
         return null;
      }
      
      public function get §"#H§() : int
      {
         if(this.§-!E§)
         {
            return this.§-!E§.length;
         }
         return 0;
      }
      
      public function §58§(param1:int) : String
      {
         if(this.§-!E§)
         {
            return this.§-!E§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§2"R§;
      }
      
      public function get §8^§() : Boolean
      {
         return this.§@#7§;
      }
   }
}
