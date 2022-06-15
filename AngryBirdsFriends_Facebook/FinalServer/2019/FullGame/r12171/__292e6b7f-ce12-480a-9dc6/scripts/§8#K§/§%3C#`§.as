package §8#K§
{
   import §#"4§.§&r§;
   
   public class §<#`§ extends § !=§
   {
       
      
      protected var §0$§:Number;
      
      protected var §6!l§:Number;
      
      protected var §^7§:Number;
      
      protected var §@#J§:Boolean;
      
      protected var §#"x§:Boolean;
      
      protected var §>$#§:Boolean;
      
      protected var §%"n§:Boolean;
      
      protected var §9!D§:String;
      
      protected var §>#b§:String;
      
      protected var §5"0§:String;
      
      protected var §?#$§:String;
      
      protected var §+!j§:String;
      
      protected var §2#R§:String;
      
      protected var §`!V§:String;
      
      protected var §""9§:String;
      
      protected var §^!g§:String;
      
      protected var §<!'§:String;
      
      protected var §["P§:String;
      
      protected var §]!U§:Array;
      
      protected var §@#8§:§&r§;
      
      protected var §<#]§:String;
      
      public function §<#`§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false, param7:§ !q§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         §!"`§ = param7;
         this.§0$§ = param1.bounceAmplitudeMultiplier;
         this.§6!l§ = param1.bounceFrequencyMultiplier;
         this.§^7§ = param1.friction;
         this.§@#J§ = param1.controllable;
         this.§#"x§ = param1.freezeBomb;
         this.§>$#§ = param1.rotateWhileFlying;
         this.§%"n§ = param1.ignoreParticles;
         this.§9!D§ = param1.onCollisionEnter;
         this.§>#b§ = param1.explosionFactors;
         this.§5"0§ = param1.normalTrailSprite;
         this.§?#$§ = param1.specialTrailSprite;
         this.§+!j§ = param1.aimingAidSprite;
         this.§2#R§ = param1.enterGravitationParticles;
         this.§`!V§ = param1.onTriggerEnter;
         this.§""9§ = param1.onTriggerExit;
         this.§^!g§ = param1.atmosphereTailParticles;
         this.§<!'§ = param1.normalTailParticles;
         this.§["P§ = param1.onLaunched;
         this.§]!U§ = this.§=$$§(param1.specialParticles);
         this.§@#8§ = this.§ #A§(param1.sounds);
         this.§<#]§ = param1.destroyedSound;
      }
      
      protected function § #A§(param1:Object) : §&r§
      {
         var _loc3_:* = null;
         var _loc2_:§&r§ = new §&r§();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function §=$$§(param1:*) : Array
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
      
      public function get §=!y§() : int
      {
         if(this.§@#8§)
         {
            return this.§@#8§.length;
         }
         return 0;
      }
      
      public function §[l§(param1:String) : String
      {
         return this.§@#8§[param1];
      }
      
      public function get §5w§() : int
      {
         if(this.§]!U§)
         {
            return this.§]!U§.length;
         }
         return 0;
      }
      
      public function §9#v§(param1:int) : String
      {
         return this.§]!U§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§<!'§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§5"0§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§2#R§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§^!g§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<#]§;
      }
   }
}
