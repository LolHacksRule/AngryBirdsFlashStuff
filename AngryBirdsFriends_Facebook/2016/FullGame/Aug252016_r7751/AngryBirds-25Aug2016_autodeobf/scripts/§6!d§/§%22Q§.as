package §6!d§
{
   import §52§.§#!,§;
   import §9$§.Sprite;
   import §@"§.§`"W§;
   import §[#a§.§<"H§;
   import §`#C§.§4o§;
   
   public class §"Q§ extends §>#K§
   {
       
      
      protected var §>#b§:Number = 0.0;
      
      protected var §'!K§:Number = 0.0;
      
      protected var §+]§:Number = 0.0;
      
      protected var §,"U§:int = 0;
      
      protected var §,f§:Boolean = false;
      
      protected var §`!w§:§4o§;
      
      public function §"Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§4o§, param6:Sprite, param7:§`"W§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§0"[§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§0"[§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§0"[§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §#!,§.§?$#§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§>#b§ = _loc11_;
         this.§'!K§ = _loc10_;
         this.§+]§ = _loc12_;
         var _loc13_:Number = param5.§0"[§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§,"U§ = _loc13_;
         this.§,f§ = param5.§0#B§("turboLaser");
         this.§`!w§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§`!w§.§1#c§("createSound"))
         {
            this.§`!w§.§6!s§(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§>#b§;
      }
      
      public function get §?#J§() : Number
      {
         return this.§+]§;
      }
      
      public function get §%s§() : int
      {
         return this.§,"U§;
      }
      
      public function get §2s§() : Number
      {
         if(this.§>#b§ < this.§'!K§)
         {
            return this.§>#b§;
         }
         return this.§'!K§;
      }
      
      public function get §[#i§() : Boolean
      {
         return !this.§,f§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§`!w§.§1#c§("deflectionSound");
         if(_loc3_)
         {
            this.§`!w§.§6!s§(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§>#b§ -= param1;
            if(this.§>#b§ < 0)
            {
               this.§>#b§ = 0;
            }
         }
      }
      
      public function §!w§(param1:§<"H§) : Number
      {
         return this.§`!w§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §'"F§() : String
      {
         if(this.§`!w§.§ r§ > 0)
         {
            return this.§`!w§.§8"T§(0);
         }
         return null;
      }
      
      public function get §<$9§() : String
      {
         if(this.§`!w§.§8v§ > 0)
         {
            return this.§`!w§.§ !E§(0);
         }
         return null;
      }
   }
}
