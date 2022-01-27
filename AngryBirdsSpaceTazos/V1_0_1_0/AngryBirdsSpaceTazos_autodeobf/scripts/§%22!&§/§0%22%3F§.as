package §"!&§
{
   import § !Y§.§[!%§;
   
   public class §0"?§ extends §]!C§
   {
       
      
      protected var §]!z§:Number;
      
      protected var §"Y§:Number;
      
      protected var §0!%§:Number;
      
      protected var §5e§:Boolean;
      
      protected var §';§:Boolean;
      
      protected var §1Z§:Boolean;
      
      protected var § " §:String;
      
      protected var §&#§:Boolean;
      
      protected var §&!;§:String;
      
      protected var §8"8§:String;
      
      protected var §=N§:String;
      
      protected var §7!Y§:String;
      
      protected var §="8§:String;
      
      protected var §+!9§:String;
      
      protected var §5t§:String;
      
      protected var §`§:String;
      
      protected var §^5§:String;
      
      protected var §`!!§:String;
      
      protected var §!""§:String;
      
      protected var §8!I§:Array;
      
      protected var §2'§:§[!%§;
      
      protected var §?"0§:String;
      
      public function §0"?§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §9"3§ = param7;
         this.§]!z§ = param1.bounceAmplitudeMultiplier;
         this.§"Y§ = param1.bounceFrequencyMultiplier;
         this.§0!%§ = param1.friction;
         this.§5e§ = param1.controllable;
         this.§';§ = param1.freezeBomb;
         this.§1Z§ = param1.rotateWhileFlying;
         this.§ " § = param1.specialty;
         this.§&#§ = param1.ignoreParticles;
         this.§&!;§ = param1.onCollisionEnter;
         this.§8"8§ = param1.explosionFactors;
         this.§=N§ = param1.normalTrailSprite;
         this.§7!Y§ = param1.specialTrailSprite;
         this.§="8§ = param1.aimingAidSprite;
         this.§+!9§ = param1.enterGravitationParticles;
         this.§5t§ = param1.onTriggerEnter;
         this.§`§ = param1.onTriggerExit;
         this.§^5§ = param1.atmosphereTailParticles;
         this.§`!!§ = param1.normalTailParticles;
         this.§!""§ = param1.onLaunched;
         this.§8!I§ = this.§5!H§(param1.specialParticles);
         this.§2'§ = this.§1j§(param1.sounds);
         this.§?"0§ = param1.destroyedSound;
      }
      
      protected function §1j§(param1:Object) : §[!%§
      {
         var _loc3_:* = null;
         var _loc2_:§[!%§ = new §[!%§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §5!H§(param1:*) : Array
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
      
      public function get §?!K§() : int
      {
         if(this.§2'§)
         {
            return this.§2'§.length;
         }
         return 0;
      }
      
      public function getSound(param1:String) : String
      {
         return this.§2'§[param1];
      }
      
      public function get §;!t§() : int
      {
         if(this.§8!I§)
         {
            return this.§8!I§.length;
         }
         return 0;
      }
      
      public function §;r§(param1:int) : String
      {
         return this.§8!I§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§`!!§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§=N§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§+!9§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§^5§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§?"0§;
      }
   }
}
