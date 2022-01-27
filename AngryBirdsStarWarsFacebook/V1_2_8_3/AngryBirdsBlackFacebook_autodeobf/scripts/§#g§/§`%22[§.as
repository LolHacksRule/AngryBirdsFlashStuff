package §#g§
{
   import §+d§.§2!g§;
   
   public class §`"[§ extends §5!M§
   {
       
      
      protected var §?`§:Number;
      
      protected var §+"i§:Number;
      
      protected var §4A§:Number;
      
      protected var §]u§:Boolean;
      
      protected var §const§:Boolean;
      
      protected var §%k§:Boolean;
      
      protected var §<"Q§:String;
      
      protected var §;#3§:Boolean;
      
      protected var §<!g§:String;
      
      protected var §&!N§:String;
      
      protected var §8"_§:String;
      
      protected var §9!n§:String;
      
      protected var § _§:String;
      
      protected var §<!u§:String;
      
      protected var §,!P§:String;
      
      protected var §01§:String;
      
      protected var §;"@§:String;
      
      protected var §3!;§:String;
      
      protected var §75§:String;
      
      protected var §<![§:Array;
      
      protected var §8!9§:§2!g§;
      
      protected var §>"A§:String;
      
      public function §`"[§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false, param7:§?B§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §?$§ = param7;
         this.§?`§ = param1.bounceAmplitudeMultiplier;
         this.§+"i§ = param1.bounceFrequencyMultiplier;
         this.§4A§ = param1.friction;
         this.§]u§ = param1.controllable;
         this.§const§ = param1.freezeBomb;
         this.§%k§ = param1.rotateWhileFlying;
         this.§<"Q§ = param1.specialty;
         this.§;#3§ = param1.ignoreParticles;
         this.§<!g§ = param1.onCollisionEnter;
         this.§&!N§ = param1.explosionFactors;
         this.§8"_§ = param1.normalTrailSprite;
         this.§9!n§ = param1.specialTrailSprite;
         this.§ _§ = param1.aimingAidSprite;
         this.§<!u§ = param1.enterGravitationParticles;
         this.§,!P§ = param1.onTriggerEnter;
         this.§01§ = param1.onTriggerExit;
         this.§;"@§ = param1.atmosphereTailParticles;
         this.§3!;§ = param1.normalTailParticles;
         this.§75§ = param1.onLaunched;
         this.§<![§ = this.§8!6§(param1.specialParticles);
         this.§8!9§ = this.§["e§(param1.sounds);
         this.§>"A§ = param1.destroyedSound;
      }
      
      protected function §["e§(param1:Object) : §2!g§
      {
         var _loc3_:* = null;
         var _loc2_:§2!g§ = new §2!g§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §8!6§(param1:*) : Array
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
      
      public function get §?"P§() : int
      {
         if(this.§8!9§)
         {
            return this.§8!9§.length;
         }
         return 0;
      }
      
      public function §-#,§(param1:String) : String
      {
         return this.§8!9§[param1];
      }
      
      public function get §=#+§() : int
      {
         if(this.§<![§)
         {
            return this.§<![§.length;
         }
         return 0;
      }
      
      public function §3"8§(param1:int) : String
      {
         return this.§<![§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§3!;§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§8"_§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§<!u§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§;"@§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§>"A§;
      }
   }
}
