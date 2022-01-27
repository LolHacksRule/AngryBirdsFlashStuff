package §>P§
{
   import §7A§.§5"2§;
   
   public class §28§ extends §;+§
   {
       
      
      protected var §-!]§:Number;
      
      protected var §1!3§:Number;
      
      protected var §2#+§:Number;
      
      protected var §]! §:Boolean;
      
      protected var §3!>§:Boolean;
      
      protected var §@!1§:Boolean;
      
      protected var §8"t§:String;
      
      protected var §`M§:Boolean;
      
      protected var §%!S§:String;
      
      protected var §+"a§:String;
      
      protected var §'!o§:String;
      
      protected var §`+§:String;
      
      protected var §3"%§:String;
      
      protected var §`!-§:String;
      
      protected var §@!w§:String;
      
      protected var §4o§:String;
      
      protected var §4"$§:String;
      
      protected var § "X§:String;
      
      protected var §6!M§:String;
      
      protected var §&#,§:Array;
      
      protected var §4",§:§5"2§;
      
      protected var §3!X§:String;
      
      public function §28§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §+!r§ = param7;
         this.§-!]§ = param1.bounceAmplitudeMultiplier;
         this.§1!3§ = param1.bounceFrequencyMultiplier;
         this.§2#+§ = param1.friction;
         this.§]! § = param1.controllable;
         this.§3!>§ = param1.freezeBomb;
         this.§@!1§ = param1.rotateWhileFlying;
         this.§8"t§ = param1.specialty;
         this.§`M§ = param1.ignoreParticles;
         this.§%!S§ = param1.onCollisionEnter;
         this.§+"a§ = param1.explosionFactors;
         this.§'!o§ = param1.normalTrailSprite;
         this.§`+§ = param1.specialTrailSprite;
         this.§3"%§ = param1.aimingAidSprite;
         this.§`!-§ = param1.enterGravitationParticles;
         this.§@!w§ = param1.onTriggerEnter;
         this.§4o§ = param1.onTriggerExit;
         this.§4"$§ = param1.atmosphereTailParticles;
         this.§ "X§ = param1.normalTailParticles;
         this.§6!M§ = param1.onLaunched;
         this.§&#,§ = this.§?!G§(param1.specialParticles);
         this.§4",§ = this.§-"s§(param1.sounds);
         this.§3!X§ = param1.destroyedSound;
      }
      
      protected function §-"s§(param1:Object) : §5"2§
      {
         var _loc3_:* = null;
         var _loc2_:§5"2§ = new §5"2§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §?!G§(param1:*) : Array
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
      
      public function get §'"G§() : int
      {
         if(this.§4",§)
         {
            return this.§4",§.length;
         }
         return 0;
      }
      
      public function §+!B§(param1:String) : String
      {
         return this.§4",§[param1];
      }
      
      public function get §4!W§() : int
      {
         if(this.§&#,§)
         {
            return this.§&#,§.length;
         }
         return 0;
      }
      
      public function §6,§(param1:int) : String
      {
         return this.§&#,§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§ "X§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§'!o§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§`!-§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§4"$§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§3!X§;
      }
   }
}
