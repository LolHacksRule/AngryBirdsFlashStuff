package §?"9§
{
   import §3R§.§1!R§;
   import §4"@§.Sprite;
   import §5"D§.§>q§;
   import §6!M§.§;!4§;
   import §^e§.§^5§;
   
   public class § "@§ extends §%!E§
   {
       
      
      protected var §5F§:Number = 0.0;
      
      protected var §-Y§:Number = 0.0;
      
      protected var §7u§:Number = 0.0;
      
      protected var §+",§:int = 0;
      
      protected var §[!K§:Boolean = false;
      
      protected var §!!9§:§;!4§;
      
      public function § "@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§;!4§, param6:Sprite, param7:§^5§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§2"@§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§2"@§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§2"@§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §1!R§.§00§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§5F§ = _loc11_;
         this.§-Y§ = _loc10_;
         this.§7u§ = _loc12_;
         var _loc13_:Number = param5.§2"@§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§+",§ = _loc13_;
         this.§[!K§ = param5.§7!S§("turboLaser");
         this.§!!9§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§!!9§.§<"H§("createSound"))
         {
            this.§!!9§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§5F§;
      }
      
      public function get §]W§() : Number
      {
         return this.§7u§;
      }
      
      public function get §2x§() : int
      {
         return this.§+",§;
      }
      
      public function get §9!D§() : Number
      {
         if(this.§5F§ < this.§-Y§)
         {
            return this.§5F§;
         }
         return this.§-Y§;
      }
      
      public function get §<9§() : Boolean
      {
         return !this.§[!K§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§!!9§.§<"H§("deflectionSound");
         if(_loc3_)
         {
            this.§!!9§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§5F§ -= param1;
            if(this.§5F§ < 0)
            {
               this.§5F§ = 0;
            }
         }
      }
      
      public function §`E§(param1:§>q§) : Number
      {
         return this.§!!9§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §@!Q§() : String
      {
         if(this.§!!9§.§1a§ > 0)
         {
            return this.§!!9§.§;y§(0);
         }
         return null;
      }
      
      public function get §'!l§() : String
      {
         if(this.§!!9§.§+! § > 0)
         {
            return this.§!!9§.§,!Q§(0);
         }
         return null;
      }
   }
}
