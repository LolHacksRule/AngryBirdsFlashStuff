package §7"&§
{
   import §6V§.§&"g§;
   
   public class §;"&§ extends §2p§
   {
       
      
      protected var §,$#§:Number;
      
      protected var §&y§:Number;
      
      protected var §3d§:Number;
      
      protected var §]v§:Boolean;
      
      protected var §=!@§:Boolean;
      
      protected var §<#M§:Boolean;
      
      protected var §9F§:String;
      
      protected var §7J§:Boolean;
      
      protected var §0p§:String;
      
      protected var §6E§:String;
      
      protected var §0"y§:String;
      
      protected var § $6§:String;
      
      protected var §1"§:String;
      
      protected var §[!8§:String;
      
      protected var §`#U§:String;
      
      protected var §1!B§:String;
      
      protected var §6A§:String;
      
      protected var §>#I§:String;
      
      protected var §9O§:String;
      
      protected var §;"`§:Array;
      
      protected var §<"w§:§&"g§;
      
      protected var §=!u§:String;
      
      public function §;"&§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §="l§ = param7;
         this.§,$#§ = param1.bounceAmplitudeMultiplier;
         this.§&y§ = param1.bounceFrequencyMultiplier;
         this.§3d§ = param1.friction;
         this.§]v§ = param1.controllable;
         this.§=!@§ = param1.freezeBomb;
         this.§<#M§ = param1.rotateWhileFlying;
         this.§9F§ = param1.specialty;
         this.§7J§ = param1.ignoreParticles;
         this.§0p§ = param1.onCollisionEnter;
         this.§6E§ = param1.explosionFactors;
         this.§0"y§ = param1.normalTrailSprite;
         this.§ $6§ = param1.specialTrailSprite;
         this.§1"§ = param1.aimingAidSprite;
         this.§[!8§ = param1.enterGravitationParticles;
         this.§`#U§ = param1.onTriggerEnter;
         this.§1!B§ = param1.onTriggerExit;
         this.§6A§ = param1.atmosphereTailParticles;
         this.§>#I§ = param1.normalTailParticles;
         this.§9O§ = param1.onLaunched;
         this.§;"`§ = this.§`T§(param1.specialParticles);
         this.§<"w§ = this.§8"-§(param1.sounds);
         this.§=!u§ = param1.destroyedSound;
      }
      
      protected function §8"-§(param1:Object) : §&"g§
      {
         var _loc3_:* = null;
         var _loc2_:§&"g§ = new §&"g§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §`T§(param1:*) : Array
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
      
      public function get §#"m§() : int
      {
         if(this.§<"w§)
         {
            return this.§<"w§.length;
         }
         return 0;
      }
      
      public function §-#G§(param1:String) : String
      {
         return this.§<"w§[param1];
      }
      
      public function get §#!=§() : int
      {
         if(this.§;"`§)
         {
            return this.§;"`§.length;
         }
         return 0;
      }
      
      public function §5#l§(param1:int) : String
      {
         return this.§;"`§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§>#I§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§0"y§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§[!8§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§6A§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§=!u§;
      }
   }
}
