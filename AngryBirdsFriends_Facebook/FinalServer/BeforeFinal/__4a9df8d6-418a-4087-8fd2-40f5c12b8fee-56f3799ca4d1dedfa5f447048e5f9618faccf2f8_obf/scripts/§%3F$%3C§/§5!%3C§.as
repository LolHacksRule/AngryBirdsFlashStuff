package §?$<§
{
   import §&!_§.§[!j§;
   
   public class §5!<§ extends §<#x§
   {
       
      
      protected var §9#0§:Number;
      
      protected var §=#;§:Number;
      
      protected var §!$C§:Number;
      
      protected var §9"5§:Boolean;
      
      protected var §,"8§:Boolean;
      
      protected var §4#g§:Boolean;
      
      protected var §;"i§:Boolean;
      
      protected var §5"X§:String;
      
      protected var §8#§:String;
      
      protected var §=#$§:String;
      
      protected var § M§:String;
      
      protected var §%!C§:String;
      
      protected var §4#y§:String;
      
      protected var §6"T§:String;
      
      protected var §&#C§:String;
      
      protected var §5$-§:String;
      
      protected var § "T§:String;
      
      protected var §1$D§:String;
      
      protected var §!j§:Array;
      
      protected var §?1§:§[!j§;
      
      protected var §var §:String;
      
      public function §5!<§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false, param7:§^#1§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §6A§ = param7;
         this.§9#0§ = param1.bounceAmplitudeMultiplier;
         this.§=#;§ = param1.bounceFrequencyMultiplier;
         this.§!$C§ = param1.friction;
         this.§9"5§ = param1.controllable;
         this.§,"8§ = param1.freezeBomb;
         this.§4#g§ = param1.rotateWhileFlying;
         this.§;"i§ = param1.ignoreParticles;
         this.§5"X§ = param1.onCollisionEnter;
         this.§8#§ = param1.explosionFactors;
         this.§=#$§ = param1.normalTrailSprite;
         this.§ M§ = param1.specialTrailSprite;
         this.§%!C§ = param1.aimingAidSprite;
         this.§4#y§ = param1.enterGravitationParticles;
         this.§6"T§ = param1.onTriggerEnter;
         this.§&#C§ = param1.onTriggerExit;
         this.§5$-§ = param1.atmosphereTailParticles;
         this.§ "T§ = param1.normalTailParticles;
         this.§1$D§ = param1.onLaunched;
         this.§!j§ = this.§ !c§(param1.specialParticles);
         this.§?1§ = this.§'$D§(param1.sounds);
         this.§var § = param1.destroyedSound;
      }
      
      protected function §'$D§(param1:Object) : §[!j§
      {
         var _loc3_:* = null;
         var _loc2_:§[!j§ = new §[!j§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function § !c§(param1:*) : Array
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
      
      public function get §-#K§() : int
      {
         if(this.§?1§)
         {
            return this.§?1§.length;
         }
         return 0;
      }
      
      public function §]3§(param1:String) : String
      {
         return this.§?1§[param1];
      }
      
      public function get §3"#§() : int
      {
         if(this.§!j§)
         {
            return this.§!j§.length;
         }
         return 0;
      }
      
      public function §,$C§(param1:int) : String
      {
         return this.§!j§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§ "T§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§=#$§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§4#y§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§5$-§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§var §;
      }
   }
}
