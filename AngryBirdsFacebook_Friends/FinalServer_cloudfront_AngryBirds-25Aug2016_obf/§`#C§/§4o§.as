package §`#C§
{
   import §[#a§.§="@§;
   
   public class §4o§ extends §6!i§
   {
       
      
      protected var §+"_§:String;
      
      protected var §[#W§:Number;
      
      protected var §!!1§:Number;
      
      protected var §+#w§:String;
      
      protected var §3![§:Number;
      
      protected var §5!=§:Number;
      
      protected var §2" §:String;
      
      protected var §##c§:String;
      
      protected var §3#g§:Number;
      
      protected var §'t§:Number;
      
      protected var §'I§:Number;
      
      protected var §`!;§:Number;
      
      protected var §3j§:Array;
      
      protected var §1"@§:Number;
      
      protected var §8!8§:Number;
      
      protected var §4#P§:Array;
      
      protected var §""H§:Boolean;
      
      protected var §-!X§:Boolean;
      
      protected var §,!+§:Boolean;
      
      protected var §+Y§:Boolean;
      
      protected var §7!S§:Number;
      
      protected var §!X§:Number;
      
      protected var §8<§:Number;
      
      protected var §7G§:Number;
      
      protected var §6#Y§:Boolean;
      
      protected var §6#3§:Boolean;
      
      protected var §8#g§:Boolean;
      
      protected var §]<§:Number;
      
      protected var §""b§:Number;
      
      protected var §;"t§:Array;
      
      protected var §@"9§:Array;
      
      protected var §4"P§:String;
      
      protected var §5$-§:Boolean;
      
      protected var §6I§:Array;
      
      public function §4o§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         var _loc8_:Array = null;
         super(param1,param2,param3,param4,param5,param6);
         §1!v§ = param7;
         this.§+"_§ = param1.definition;
         this.§[#W§ = param1.density;
         this.§!!1§ = param1.radius;
         this.§+#w§ = param1.type;
         this.§3![§ = param1.defence;
         this.§5!=§ = param1.strenght;
         this.§2" § = param1.onCreated;
         this.§##c§ = param1.onDestroyed;
         this.§3#g§ = param1.explosionRadius;
         this.§'t§ = param1.explosionForce;
         this.§'I§ = param1.explosionDamageRadius;
         this.§`!;§ = param1.explosionDamage;
         this.§3j§ = this.§7#W§(param1.spawnedObjects);
         this.§1"@§ = param1.spawnDistance;
         this.§8!8§ = param1.angleOffset;
         if(param1.particlesDestroyed is Array)
         {
            this.§4#P§ = this.§7#W§(param1.particlesDestroyed);
         }
         else if(param1.particlesDestroyed)
         {
            this.§4#P§ = [String(param1.particlesDestroyed)];
         }
         else if(§#<§)
         {
            this.§4#P§ = [§#<§];
         }
         else
         {
            _loc8_ = new Array();
            switch(param3.name)
            {
               case "MATERIAL_BLOCK_ICE":
                  _loc8_.push("lightExplosion");
                  break;
               case "MATERIAL_BLOCK_WOOD":
                  _loc8_.push("woodExplosion");
                  break;
               case "MATERIAL_BLOCK_STONE":
                  _loc8_.push("stoneExplosion");
            }
            this.§4#P§ = _loc8_;
         }
         if(param1.particlesCollision is Array)
         {
            this.§6I§ = this.§7#W§(param1.particlesCollision);
         }
         else if(param1.particlesCollision)
         {
            this.§6I§ = [String(param1.particlesCollision)];
         }
         this.§""H§ = param1.isBullet;
         this.§-!X§ = param1.stopAnimationsAfterCollision;
         this.§,!+§ = param1.animateRotation;
         this.§+Y§ = param1.constantRotation;
         this.§7!S§ = param1.maxRotationFrequency;
         this.§!X§ = param1.minRotationFrequency;
         this.§8<§ = param1.minRotationAmplitude;
         this.§7G§ = param1.maxRotationAmplitude;
         this.§6#Y§ = param1.destroyableByTap;
         this.§6#3§ = param1.destroyWhenFrozen;
         this.§8#g§ = param1.isVisible;
         this.§]<§ = param1.width;
         this.§""b§ = param1.height;
         this.§;"t§ = this.§7#W§(param1.loopingParticles);
         this.§@"9§ = this.§7#W§(param1.animationSprites);
         this.§4"P§ = param1.spriteScore;
         this.§5$-§ = param1.horFlip;
      }
      
      private function §7#W§(param1:*) : Array
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
         if(this.§@"9§.length == 0)
         {
            return super.getAnimationDefinitions();
         }
         _loc1_ = [];
         _loc2_ = [];
         _loc3_ = 0;
         while(_loc3_ < this.§@"9§.length)
         {
            _loc1_.push(this.§@"9§[_loc3_]);
            _loc2_.push(40);
            _loc3_++;
         }
         return [[§="@§.§0!V§,[["1",_loc1_,_loc2_]]]];
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§,!+§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§7!S§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§!X§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§7G§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§8<§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§-!X§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§1"@§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§8!8§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§3#g§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§'t§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§'I§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§`!;§;
      }
      
      public function get §""z§() : int
      {
         if(this.§3j§)
         {
            return this.§3j§.length;
         }
         return 0;
      }
      
      public function §[!7§(param1:int) : String
      {
         return this.§3j§[param1];
      }
      
      public function get §2q§() : int
      {
         if(this.§3j§)
         {
            return this.§3j§.length;
         }
         return 0;
      }
      
      public function get §"5§() : int
      {
         if(this.§;"t§)
         {
            return this.§;"t§.length;
         }
         return 0;
      }
      
      public function §>!h§(param1:int) : String
      {
         return this.§;"t§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§+Y§;
      }
      
      public function get definition() : String
      {
         return this.§+"_§;
      }
      
      public function get §8v§() : int
      {
         if(this.§4#P§)
         {
            return this.§4#P§.length;
         }
         return 0;
      }
      
      public function § !E§(param1:int) : String
      {
         if(this.§4#P§)
         {
            return this.§4#P§[param1];
         }
         return null;
      }
      
      public function get § r§() : int
      {
         if(this.§6I§)
         {
            return this.§6I§.length;
         }
         return 0;
      }
      
      public function §8"T§(param1:int) : String
      {
         if(this.§6I§)
         {
            return this.§6I§[param1];
         }
         return null;
      }
      
      public function get spriteScore() : String
      {
         return this.§4"P§;
      }
      
      public function get §^"3§() : Boolean
      {
         return this.§5$-§;
      }
   }
}
