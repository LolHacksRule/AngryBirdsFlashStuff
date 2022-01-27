package §8"-§
{
   import §!!k§.§1!^§;
   import §!r§.§?!x§;
   import §"§.§;!E§;
   import §#g§.§5!M§;
   import §use§.Sprite;
   
   public class §@"W§ extends §;[§
   {
       
      
      protected var §%"A§:Number = 0.0;
      
      protected var §5!i§:Number = 0.0;
      
      protected var §#!l§:Number = 0.0;
      
      protected var §+<§:int = 0;
      
      protected var §+!w§:Boolean = false;
      
      protected var §+!j§:§5!M§;
      
      public function §@"W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§5!M§, param6:Sprite, param7:§1!^§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.getNumberProperty("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.getNumberProperty("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.getNumberProperty("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §;!E§.§0"?§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§%"A§ = _loc11_;
         this.§5!i§ = _loc10_;
         this.§#!l§ = _loc12_;
         var _loc13_:Number = param5.getNumberProperty("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§+<§ = _loc13_;
         this.§+!w§ = param5.§%"=§("turboLaser");
         this.§+!j§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§+!j§.getProperty("createSound"))
         {
            this.§+!j§.§]"J§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§%"A§;
      }
      
      public function get §="1§() : Number
      {
         return this.§#!l§;
      }
      
      public function get §10§() : int
      {
         return this.§+<§;
      }
      
      public function get §,!?§() : Number
      {
         if(this.§%"A§ < this.§5!i§)
         {
            return this.§%"A§;
         }
         return this.§5!i§;
      }
      
      public function get §7B§() : Boolean
      {
         return !this.§+!w§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§+!j§.getProperty("deflectionSound");
         if(_loc3_)
         {
            this.§+!j§.§]"J§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§%"A§ -= param1;
            if(this.§%"A§ < 0)
            {
               this.§%"A§ = 0;
            }
         }
      }
      
      public function §=!_§(param1:§?!x§) : Number
      {
         return this.§+!j§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §%!V§() : String
      {
         if(this.§+!j§.§&">§ > 0)
         {
            return this.§+!j§.§1!`§(0);
         }
         return null;
      }
      
      public function get §#!u§() : String
      {
         if(this.§+!j§.§<! § > 0)
         {
            return this.§+!j§.§+!&§(0);
         }
         return null;
      }
   }
}
