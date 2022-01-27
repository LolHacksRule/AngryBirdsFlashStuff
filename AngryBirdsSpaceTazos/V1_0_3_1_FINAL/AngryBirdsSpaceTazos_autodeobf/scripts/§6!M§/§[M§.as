package §6!M§
{
   import §'!n§.§@B§;
   
   public class §[M§ extends §;!4§
   {
       
      
      protected var §5!L§:Number;
      
      protected var §[";§:Number;
      
      protected var §]!$§:Number;
      
      protected var §8"0§:Boolean;
      
      protected var §9U§:Boolean;
      
      protected var §0!N§:Boolean;
      
      protected var §=![§:String;
      
      protected var §get §:Boolean;
      
      protected var §?!]§:String;
      
      protected var §]!#§:String;
      
      protected var §?!;§:String;
      
      protected var §0m§:String;
      
      protected var §6x§:String;
      
      protected var §1%§:String;
      
      protected var §!Z§:String;
      
      protected var §"h§:String;
      
      protected var §^!C§:String;
      
      protected var §3!T§:String;
      
      protected var §;'§:String;
      
      protected var §<!n§:Array;
      
      protected var §%!y§:§@B§;
      
      protected var §%!H§:String;
      
      public function §[M§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false, param7:§=!T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §<G§ = param7;
         this.§5!L§ = param1.bounceAmplitudeMultiplier;
         this.§[";§ = param1.bounceFrequencyMultiplier;
         this.§]!$§ = param1.friction;
         this.§8"0§ = param1.controllable;
         this.§9U§ = param1.freezeBomb;
         this.§0!N§ = param1.rotateWhileFlying;
         this.§=![§ = param1.specialty;
         this.§get § = param1.ignoreParticles;
         this.§?!]§ = param1.onCollisionEnter;
         this.§]!#§ = param1.explosionFactors;
         this.§?!;§ = param1.normalTrailSprite;
         this.§0m§ = param1.specialTrailSprite;
         this.§6x§ = param1.aimingAidSprite;
         this.§1%§ = param1.enterGravitationParticles;
         this.§!Z§ = param1.onTriggerEnter;
         this.§"h§ = param1.onTriggerExit;
         this.§^!C§ = param1.atmosphereTailParticles;
         this.§3!T§ = param1.normalTailParticles;
         this.§;'§ = param1.onLaunched;
         this.§<!n§ = this.§5,§(param1.specialParticles);
         this.§%!y§ = this.§4q§(param1.sounds);
         this.§%!H§ = param1.destroyedSound;
      }
      
      protected function §4q§(param1:Object) : §@B§
      {
         var _loc3_:* = null;
         var _loc2_:§@B§ = new §@B§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §5,§(param1:*) : Array
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
      
      public function get §=!+§() : int
      {
         if(this.§%!y§)
         {
            return this.§%!y§.length;
         }
         return 0;
      }
      
      public function getSound(param1:String) : String
      {
         return this.§%!y§[param1];
      }
      
      public function get §%!u§() : int
      {
         if(this.§<!n§)
         {
            return this.§<!n§.length;
         }
         return 0;
      }
      
      public function §?!2§(param1:int) : String
      {
         return this.§<!n§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§3!T§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§?!;§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§1%§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§^!C§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§%!H§;
      }
   }
}
