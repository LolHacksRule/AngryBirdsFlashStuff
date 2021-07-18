package §2"Y§
{
   import §1!i§.§,#_§;
   
   public class §,",§ extends §8!D§
   {
       
      
      protected var §?U§:Number;
      
      protected var §%"E§:Number;
      
      protected var § "E§:Number;
      
      protected var §""5§:Boolean;
      
      protected var §9!v§:Boolean;
      
      protected var §+m§:Boolean;
      
      protected var §,#V§:String;
      
      protected var §2s§:Boolean;
      
      protected var §=8§:String;
      
      protected var §]u§:String;
      
      protected var §#"H§:String;
      
      protected var § #V§:String;
      
      protected var §0"R§:String;
      
      protected var §8!l§:String;
      
      protected var §+8§:String;
      
      protected var §[#K§:String;
      
      protected var §1!;§:String;
      
      protected var §8C§:String;
      
      protected var § @§:String;
      
      protected var §3!4§:Array;
      
      protected var §!"p§:§,#_§;
      
      protected var §<b§:String;
      
      public function §,",§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §>"Q§ = param7;
         this.§?U§ = param1.bounceAmplitudeMultiplier;
         this.§%"E§ = param1.bounceFrequencyMultiplier;
         this.§ "E§ = param1.friction;
         this.§""5§ = param1.controllable;
         this.§9!v§ = param1.freezeBomb;
         this.§+m§ = param1.rotateWhileFlying;
         this.§,#V§ = param1.specialty;
         this.§2s§ = param1.ignoreParticles;
         this.§=8§ = param1.onCollisionEnter;
         this.§]u§ = param1.explosionFactors;
         this.§#"H§ = param1.normalTrailSprite;
         this.§ #V§ = param1.specialTrailSprite;
         this.§0"R§ = param1.aimingAidSprite;
         this.§8!l§ = param1.enterGravitationParticles;
         this.§+8§ = param1.onTriggerEnter;
         this.§[#K§ = param1.onTriggerExit;
         this.§1!;§ = param1.atmosphereTailParticles;
         this.§8C§ = param1.normalTailParticles;
         this.§ @§ = param1.onLaunched;
         this.§3!4§ = this.§^!h§(param1.specialParticles);
         this.§!"p§ = this.§="w§(param1.sounds);
         this.§<b§ = param1.destroyedSound;
      }
      
      protected function §="w§(param1:Object) : §,#_§
      {
         var _loc3_:* = null;
         var _loc2_:§,#_§ = new §,#_§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §^!h§(param1:*) : Array
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
      
      public function get §8!8§() : int
      {
         if(this.§!"p§)
         {
            return this.§!"p§.length;
         }
         return 0;
      }
      
      public function §1"Z§(param1:String) : String
      {
         return this.§!"p§[param1];
      }
      
      public function get §6k§() : int
      {
         if(this.§3!4§)
         {
            return this.§3!4§.length;
         }
         return 0;
      }
      
      public function §<4§(param1:int) : String
      {
         return this.§3!4§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§8C§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§#"H§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§8!l§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§1!;§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<b§;
      }
   }
}
