package §-!j§
{
   import §2E§.§&#a§;
   
   public class §'$#§ extends §>!8§
   {
       
      
      protected var §[#Z§:Number;
      
      protected var §^#M§:Number;
      
      protected var §5c§:Number;
      
      protected var §!!O§:Boolean;
      
      protected var §-$B§:Boolean;
      
      protected var §""0§:Boolean;
      
      protected var §]"Q§:Boolean;
      
      protected var §^D§:String;
      
      protected var §9$7§:String;
      
      protected var §8"O§:String;
      
      protected var §9#N§:String;
      
      protected var §1!m§:String;
      
      protected var §2f§:String;
      
      protected var §-#^§:String;
      
      protected var §?Q§:String;
      
      protected var §+#z§:String;
      
      protected var §'!w§:String;
      
      protected var §'";§:String;
      
      protected var §+C§:Array;
      
      protected var §&#r§:§&#a§;
      
      protected var §6#<§:String;
      
      public function §'$#§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §!8§ = param7;
         this.§[#Z§ = param1.bounceAmplitudeMultiplier;
         this.§^#M§ = param1.bounceFrequencyMultiplier;
         this.§5c§ = param1.friction;
         this.§!!O§ = param1.controllable;
         this.§-$B§ = param1.freezeBomb;
         this.§""0§ = param1.rotateWhileFlying;
         this.§]"Q§ = param1.ignoreParticles;
         this.§^D§ = param1.onCollisionEnter;
         this.§9$7§ = param1.explosionFactors;
         this.§8"O§ = param1.normalTrailSprite;
         this.§9#N§ = param1.specialTrailSprite;
         this.§1!m§ = param1.aimingAidSprite;
         this.§2f§ = param1.enterGravitationParticles;
         this.§-#^§ = param1.onTriggerEnter;
         this.§?Q§ = param1.onTriggerExit;
         this.§+#z§ = param1.atmosphereTailParticles;
         this.§'!w§ = param1.normalTailParticles;
         this.§'";§ = param1.onLaunched;
         this.§+C§ = this.§#"X§(param1.specialParticles);
         this.§&#r§ = this.§6",§(param1.sounds);
         this.§6#<§ = param1.destroyedSound;
      }
      
      protected function §6",§(param1:Object) : §&#a§
      {
         var _loc3_:* = null;
         var _loc2_:§&#a§ = new §&#a§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §#"X§(param1:*) : Array
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
      
      public function get §-!n§() : int
      {
         if(this.§&#r§)
         {
            return this.§&#r§.length;
         }
         return 0;
      }
      
      public function §&#w§(param1:String) : String
      {
         return this.§&#r§[param1];
      }
      
      public function get § $8§() : int
      {
         if(this.§+C§)
         {
            return this.§+C§.length;
         }
         return 0;
      }
      
      public function §=N§(param1:int) : String
      {
         return this.§+C§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§'!w§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§8"O§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§2f§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§+#z§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§6#<§;
      }
   }
}
