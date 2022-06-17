package §?§#3
{
   import §+#B§.§4"[§;
   
   public class §@#K§ extends §7E§
   {
       
      
      protected var §]#,§:Number;
      
      protected var §5;§:Number;
      
      protected var §"P§:Number;
      
      protected var §[!b§:Boolean;
      
      protected var §6$B§:Boolean;
      
      protected var §>!W§:Boolean;
      
      protected var §+S§:Boolean;
      
      protected var §;#e§:String;
      
      protected var §6d§:String;
      
      protected var §^m§:String;
      
      protected var §'0§:String;
      
      protected var §]!c§:String;
      
      protected var §8!7§:String;
      
      protected var §4a§:String;
      
      protected var §%"n§:String;
      
      protected var §^$5§:String;
      
      protected var §?"v§:String;
      
      protected var §2#7§:String;
      
      protected var §'x§:Array;
      
      protected var §?#b§:§4"[§;
      
      protected var §1"1§:String;
      
      public function §@#K§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false, param7:§`"N§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §3<§ = param7;
         this.§]#,§ = param1.bounceAmplitudeMultiplier;
         this.§5;§ = param1.bounceFrequencyMultiplier;
         this.§"P§ = param1.friction;
         this.§[!b§ = param1.controllable;
         this.§6$B§ = param1.freezeBomb;
         this.§>!W§ = param1.rotateWhileFlying;
         this.§+S§ = param1.ignoreParticles;
         this.§;#e§ = param1.onCollisionEnter;
         this.§6d§ = param1.explosionFactors;
         this.§^m§ = param1.normalTrailSprite;
         this.§'0§ = param1.specialTrailSprite;
         this.§]!c§ = param1.aimingAidSprite;
         this.§8!7§ = param1.enterGravitationParticles;
         this.§4a§ = param1.onTriggerEnter;
         this.§%"n§ = param1.onTriggerExit;
         this.§^$5§ = param1.atmosphereTailParticles;
         this.§?"v§ = param1.normalTailParticles;
         this.§2#7§ = param1.onLaunched;
         this.§'x§ = this.§ "o§(param1.specialParticles);
         this.§?#b§ = this.§9!m§(param1.sounds);
         this.§1"1§ = param1.destroyedSound;
      }
      
      protected function §9!m§(param1:Object) : §4"[§
      {
         var _loc3_:* = null;
         var _loc2_:§4"[§ = new §4"[§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function § "o§(param1:*) : Array
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
      
      public function get §^#d§() : int
      {
         if(this.§?#b§)
         {
            return this.§?#b§.length;
         }
         return 0;
      }
      
      public function §+"&§(param1:String) : String
      {
         return this.§?#b§[param1];
      }
      
      public function get §<!X§() : int
      {
         if(this.§'x§)
         {
            return this.§'x§.length;
         }
         return 0;
      }
      
      public function §@#3§(param1:int) : String
      {
         return this.§'x§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§?"v§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§^m§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§8!7§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§^$5§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§1"1§;
      }
   }
}
