package §`#C§
{
   import §>!#§.§'"R§;
   
   public class §@"-§ extends §4o§
   {
       
      
      protected var §9#4§:Number;
      
      protected var § #r§:Number;
      
      protected var §9!$§:Number;
      
      protected var §1#$§:Boolean;
      
      protected var §8"c§:Boolean;
      
      protected var §1o§:Boolean;
      
      protected var §+#7§:String;
      
      protected var §8"J§:Boolean;
      
      protected var §&#v§:String;
      
      protected var §"m§:String;
      
      protected var §>"n§:String;
      
      protected var §`L§:String;
      
      protected var §%"i§:String;
      
      protected var §"!J§:String;
      
      protected var §,";§:String;
      
      protected var §5Q§:String;
      
      protected var §`-§:String;
      
      protected var §6"]§:String;
      
      protected var §9#K§:String;
      
      protected var §+7§:Array;
      
      protected var §>"D§:§'"R§;
      
      protected var §<]§:String;
      
      public function §@"-§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §1!v§ = param7;
         this.§9#4§ = param1.bounceAmplitudeMultiplier;
         this.§ #r§ = param1.bounceFrequencyMultiplier;
         this.§9!$§ = param1.friction;
         this.§1#$§ = param1.controllable;
         this.§8"c§ = param1.freezeBomb;
         this.§1o§ = param1.rotateWhileFlying;
         this.§+#7§ = param1.specialty;
         this.§8"J§ = param1.ignoreParticles;
         this.§&#v§ = param1.onCollisionEnter;
         this.§"m§ = param1.explosionFactors;
         this.§>"n§ = param1.normalTrailSprite;
         this.§`L§ = param1.specialTrailSprite;
         this.§%"i§ = param1.aimingAidSprite;
         this.§"!J§ = param1.enterGravitationParticles;
         this.§,";§ = param1.onTriggerEnter;
         this.§5Q§ = param1.onTriggerExit;
         this.§`-§ = param1.atmosphereTailParticles;
         this.§6"]§ = param1.normalTailParticles;
         this.§9#K§ = param1.onLaunched;
         this.§+7§ = this.§7#W§(param1.specialParticles);
         this.§>"D§ = this.§<"m§(param1.sounds);
         this.§<]§ = param1.destroyedSound;
      }
      
      protected function §<"m§(param1:Object) : §'"R§
      {
         var _loc3_:* = null;
         var _loc2_:§'"R§ = new §'"R§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §7#W§(param1:*) : Array
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
      
      public function get §4$%§() : int
      {
         if(this.§>"D§)
         {
            return this.§>"D§.length;
         }
         return 0;
      }
      
      public function §3y§(param1:String) : String
      {
         return this.§>"D§[param1];
      }
      
      public function get §8!&§() : int
      {
         if(this.§+7§)
         {
            return this.§+7§.length;
         }
         return 0;
      }
      
      public function §7F§(param1:int) : String
      {
         return this.§+7§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§6"]§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§>"n§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§"!J§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§`-§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<]§;
      }
   }
}
