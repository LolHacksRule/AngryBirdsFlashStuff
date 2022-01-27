package §;"=§
{
   import §'#§.§?u§;
   
   public class §,]§ extends §!!O§
   {
       
      
      protected var §7!8§:Number;
      
      protected var §%!4§:Number;
      
      protected var §;!5§:Number;
      
      protected var §?!F§:Boolean;
      
      protected var §?!m§:Boolean;
      
      protected var §+!%§:Boolean;
      
      protected var §4"6§:String;
      
      protected var § !!§:Boolean;
      
      protected var §="8§:String;
      
      protected var §-!h§:String;
      
      protected var §@!R§:String;
      
      protected var §3S§:String;
      
      protected var §#E§:String;
      
      protected var §;-§:String;
      
      protected var §'"4§:String;
      
      protected var §2!F§:String;
      
      protected var §,?§:String;
      
      protected var §#S§:String;
      
      protected var §8e§:String;
      
      protected var §^]§:Array;
      
      protected var §'![§:§?u§;
      
      protected var §6!F§:String;
      
      public function §,]§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false, param7:§-_§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §5"<§ = param7;
         this.§7!8§ = param1.bounceAmplitudeMultiplier;
         this.§%!4§ = param1.bounceFrequencyMultiplier;
         this.§;!5§ = param1.friction;
         this.§?!F§ = param1.controllable;
         this.§?!m§ = param1.freezeBomb;
         this.§+!%§ = param1.rotateWhileFlying;
         this.§4"6§ = param1.specialty;
         this.§ !!§ = param1.ignoreParticles;
         this.§="8§ = param1.onCollisionEnter;
         this.§-!h§ = param1.explosionFactors;
         this.§@!R§ = param1.normalTrailSprite;
         this.§3S§ = param1.specialTrailSprite;
         this.§#E§ = param1.aimingAidSprite;
         this.§;-§ = param1.enterGravitationParticles;
         this.§'"4§ = param1.onTriggerEnter;
         this.§2!F§ = param1.onTriggerExit;
         this.§,?§ = param1.atmosphereTailParticles;
         this.§#S§ = param1.normalTailParticles;
         this.§8e§ = param1.onLaunched;
         this.§^]§ = this.§=r§(param1.specialParticles);
         this.§'![§ = this.§0q§(param1.sounds);
         this.§6!F§ = param1.destroyedSound;
      }
      
      protected function §0q§(param1:Object) : §?u§
      {
         var _loc3_:* = null;
         var _loc2_:§?u§ = new §?u§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §=r§(param1:*) : Array
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
      
      public function get §^!@§() : int
      {
         if(this.§'![§)
         {
            return this.§'![§.length;
         }
         return 0;
      }
      
      public function getSound(param1:String) : String
      {
         return this.§'![§[param1];
      }
      
      public function get §3d§() : int
      {
         if(this.§^]§)
         {
            return this.§^]§.length;
         }
         return 0;
      }
      
      public function §&!m§(param1:int) : String
      {
         return this.§^]§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§#S§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§@!R§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§;-§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§,?§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§6!F§;
      }
   }
}
