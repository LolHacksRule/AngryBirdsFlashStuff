package §;"8§
{
   import §#Z§.Sprite;
   import §-!j§.§>!8§;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §^0§.§4!t§;
   
   public class §7$5§ extends §6C§
   {
       
      
      protected var §=M§:Number = 0.0;
      
      protected var §<"C§:Number = 0.0;
      
      protected var §7!#§:Number = 0.0;
      
      protected var § !L§:int = 0;
      
      protected var § !l§:Boolean = false;
      
      protected var §8!'§:§>!8§;
      
      public function §7$5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§>!8§, param6:Sprite, param7:§,`§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§6`§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§6`§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§6`§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §<d§.§6@§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§=M§ = _loc11_;
         this.§<"C§ = _loc10_;
         this.§7!#§ = _loc12_;
         var _loc13_:Number = param5.§6`§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§ !L§ = _loc13_;
         this.§ !l§ = param5.§>#o§("turboLaser");
         this.§8!'§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§8!'§.§0'§("createSound"))
         {
            this.§8!'§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§=M§;
      }
      
      public function get §<<§() : Number
      {
         return this.§7!#§;
      }
      
      public function get §>!+§() : int
      {
         return this.§ !L§;
      }
      
      public function get §+z§() : Number
      {
         if(this.§=M§ < this.§<"C§)
         {
            return this.§=M§;
         }
         return this.§<"C§;
      }
      
      public function get §=!%§() : Boolean
      {
         return !this.§ !l§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§8!'§.§0'§("deflectionSound");
         if(_loc3_)
         {
            this.§8!'§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§=M§ -= param1;
            if(this.§=M§ < 0)
            {
               this.§=M§ = 0;
            }
         }
      }
      
      public function §7p§(param1:§4!t§) : Number
      {
         return this.§8!'§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §^#J§() : String
      {
         if(this.§8!'§.§]"%§ > 0)
         {
            return this.§8!'§.§,!<§(0);
         }
         return null;
      }
      
      public function get §;"0§() : String
      {
         if(this.§8!'§.§="J§ > 0)
         {
            return this.§8!'§.§+"x§(0);
         }
         return null;
      }
   }
}
