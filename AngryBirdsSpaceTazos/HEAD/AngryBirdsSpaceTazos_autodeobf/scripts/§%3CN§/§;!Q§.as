package §<N§
{
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§-f§;
   import §9!v§.§1!_§;
   import §9"!§.§,%§;
   
   public class §;!Q§ extends §?!w§
   {
       
      
      protected var §4N§:Number = 0.0;
      
      protected var §,!?§:Number = 0.0;
      
      protected var §!!y§:Number = 0.0;
      
      protected var §1"8§:int = 0;
      
      protected var §<!@§:Boolean = false;
      
      protected var § N§:§-f§;
      
      public function §;!Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§-f§, param6:Sprite, param7:§1!_§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§,$§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§,$§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§,$§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §`"8§.§3!=§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§4N§ = _loc11_;
         this.§,!?§ = _loc10_;
         this.§!!y§ = _loc12_;
         var _loc13_:Number = param5.§,$§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§1"8§ = _loc13_;
         this.§<!@§ = param5.§ i§("turboLaser");
         this.§ N§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§ N§.§^"F§("createSound"))
         {
            this.§ N§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§4N§;
      }
      
      public function get §4g§() : Number
      {
         return this.§!!y§;
      }
      
      public function get §>w§() : int
      {
         return this.§1"8§;
      }
      
      public function get §;"$§() : Number
      {
         if(this.§4N§ < this.§,!?§)
         {
            return this.§4N§;
         }
         return this.§,!?§;
      }
      
      public function get §&"=§() : Boolean
      {
         return !this.§<!@§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§ N§.§^"F§("deflectionSound");
         if(_loc3_)
         {
            this.§ N§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§4N§ -= param1;
            if(this.§4N§ < 0)
            {
               this.§4N§ = 0;
            }
         }
      }
      
      public function §0"$§(param1:§,%§) : Number
      {
         return this.§ N§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §""!§() : String
      {
         if(this.§ N§.§5""§ > 0)
         {
            return this.§ N§.§ !i§(0);
         }
         return null;
      }
      
      public function get §;7§() : String
      {
         if(this.§ N§.§2!<§ > 0)
         {
            return this.§ N§.§7+§(0);
         }
         return null;
      }
   }
}
