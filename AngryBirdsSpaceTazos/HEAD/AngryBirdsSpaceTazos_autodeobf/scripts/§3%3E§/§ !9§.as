package §3>§
{
   import §4u§.§5!t§;
   
   public class § !9§ extends §-f§
   {
       
      
      protected var §,"F§:Number;
      
      protected var §+"3§:Number;
      
      protected var §]!!§:Number;
      
      protected var §9!r§:Boolean;
      
      protected var §=R§:Boolean;
      
      protected var §!!e§:Boolean;
      
      protected var §!!Q§:String;
      
      protected var §]!z§:Boolean;
      
      protected var §^"9§:String;
      
      protected var §-a§:String;
      
      protected var §0!v§:String;
      
      protected var §3;§:String;
      
      protected var §>z§:String;
      
      protected var §>!c§:String;
      
      protected var §"Z§:String;
      
      protected var §6z§:String;
      
      protected var §;I§:String;
      
      protected var §>!H§:String;
      
      protected var §"Y§:String;
      
      protected var §!g§:Array;
      
      protected var §+,§:§5!t§;
      
      protected var §@">§:String;
      
      public function § !9§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false, param7:§%5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §0"0§ = param7;
         this.§,"F§ = param1.bounceAmplitudeMultiplier;
         this.§+"3§ = param1.bounceFrequencyMultiplier;
         this.§]!!§ = param1.friction;
         this.§9!r§ = param1.controllable;
         this.§=R§ = param1.freezeBomb;
         this.§!!e§ = param1.rotateWhileFlying;
         this.§!!Q§ = param1.specialty;
         this.§]!z§ = param1.ignoreParticles;
         this.§^"9§ = param1.onCollisionEnter;
         this.§-a§ = param1.explosionFactors;
         this.§0!v§ = param1.normalTrailSprite;
         this.§3;§ = param1.specialTrailSprite;
         this.§>z§ = param1.aimingAidSprite;
         this.§>!c§ = param1.enterGravitationParticles;
         this.§"Z§ = param1.onTriggerEnter;
         this.§6z§ = param1.onTriggerExit;
         this.§;I§ = param1.atmosphereTailParticles;
         this.§>!H§ = param1.normalTailParticles;
         this.§"Y§ = param1.onLaunched;
         this.§!g§ = this.§3!H§(param1.specialParticles);
         this.§+,§ = this.§7!z§(param1.sounds);
         this.§@">§ = param1.destroyedSound;
      }
      
      protected function §7!z§(param1:Object) : §5!t§
      {
         var _loc3_:* = null;
         var _loc2_:§5!t§ = new §5!t§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §3!H§(param1:*) : Array
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
      
      public function get §7m§() : int
      {
         if(this.§+,§)
         {
            return this.§+,§.length;
         }
         return 0;
      }
      
      public function getSound(param1:String) : String
      {
         return this.§+,§[param1];
      }
      
      public function get §`O§() : int
      {
         if(this.§!g§)
         {
            return this.§!g§.length;
         }
         return 0;
      }
      
      public function §>!m§(param1:int) : String
      {
         return this.§!g§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§>!H§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§0!v§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§>!c§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§;I§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§@">§;
      }
   }
}
