package §8"L§
{
   import §`7§.§0t§;
   
   public class §]$$§ extends §5K§
   {
       
      
      protected var §0$>§:Number;
      
      protected var §8#G§:Number;
      
      protected var §[#@§:Number;
      
      protected var §<!;§:Boolean;
      
      protected var §##s§:Boolean;
      
      protected var §]"U§:Boolean;
      
      protected var §;!x§:String;
      
      protected var §1"]§:Boolean;
      
      protected var §[#^§:String;
      
      protected var §7"[§:String;
      
      protected var §]#§:String;
      
      protected var §'W§:String;
      
      protected var §##k§:String;
      
      protected var §>i§:String;
      
      protected var §'#^§:String;
      
      protected var §2!M§:String;
      
      protected var §3!r§:String;
      
      protected var §%#-§:String;
      
      protected var §<"P§:String;
      
      protected var §]"s§:Array;
      
      protected var § $4§:§0t§;
      
      protected var §9"b§:String;
      
      public function §]$$§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §5#S§ = param7;
         this.§0$>§ = param1.bounceAmplitudeMultiplier;
         this.§8#G§ = param1.bounceFrequencyMultiplier;
         this.§[#@§ = param1.friction;
         this.§<!;§ = param1.controllable;
         this.§##s§ = param1.freezeBomb;
         this.§]"U§ = param1.rotateWhileFlying;
         this.§;!x§ = param1.specialty;
         this.§1"]§ = param1.ignoreParticles;
         this.§[#^§ = param1.onCollisionEnter;
         this.§7"[§ = param1.explosionFactors;
         this.§]#§ = param1.normalTrailSprite;
         this.§'W§ = param1.specialTrailSprite;
         this.§##k§ = param1.aimingAidSprite;
         this.§>i§ = param1.enterGravitationParticles;
         this.§'#^§ = param1.onTriggerEnter;
         this.§2!M§ = param1.onTriggerExit;
         this.§3!r§ = param1.atmosphereTailParticles;
         this.§%#-§ = param1.normalTailParticles;
         this.§<"P§ = param1.onLaunched;
         this.§]"s§ = this.§,!g§(param1.specialParticles);
         this.§ $4§ = this.§+!p§(param1.sounds);
         this.§9"b§ = param1.destroyedSound;
      }
      
      protected function §+!p§(param1:Object) : §0t§
      {
         var _loc3_:* = null;
         var _loc2_:§0t§ = new §0t§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §,!g§(param1:*) : Array
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
      
      public function get §;#n§() : int
      {
         if(this.§ $4§)
         {
            return this.§ $4§.length;
         }
         return 0;
      }
      
      public function §-!w§(param1:String) : String
      {
         return this.§ $4§[param1];
      }
      
      public function get §;##§() : int
      {
         if(this.§]"s§)
         {
            return this.§]"s§.length;
         }
         return 0;
      }
      
      public function §;Z§(param1:int) : String
      {
         return this.§]"s§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§%#-§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§]#§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§>i§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§3!r§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§9"b§;
      }
   }
}
