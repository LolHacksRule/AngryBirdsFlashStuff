package §?Y§
{
   import §'G§.§;D§;
   import §6!3§.§!y§;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§<#x§;
   
   public class §1#?§ extends §>!&§
   {
       
      
      protected var §<"t§:Number = 0.0;
      
      protected var §4$6§:Number = 0.0;
      
      protected var §!$1§:Number = 0.0;
      
      protected var §##1§:int = 0;
      
      protected var §?a§:Boolean = false;
      
      protected var §"#6§:§<#x§;
      
      public function §1#?§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§<#x§, param6:Sprite, param7:§;D§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§"$8§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§"$8§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§"$8§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §!6§.§[#v§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§<"t§ = _loc11_;
         this.§4$6§ = _loc10_;
         this.§!$1§ = _loc12_;
         var _loc13_:Number = param5.§"$8§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§##1§ = _loc13_;
         this.§?a§ = param5.§[7§("turboLaser");
         this.§"#6§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§"#6§.§]"S§("createSound"))
         {
            this.§"#6§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§<"t§;
      }
      
      public function get §&!§() : Number
      {
         return this.§!$1§;
      }
      
      public function get §1k§() : int
      {
         return this.§##1§;
      }
      
      public function get §7!H§() : Number
      {
         if(this.§<"t§ < this.§4$6§)
         {
            return this.§<"t§;
         }
         return this.§4$6§;
      }
      
      public function get §%"O§() : Boolean
      {
         return !this.§?a§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§"#6§.§]"S§("deflectionSound");
         if(_loc3_)
         {
            this.§"#6§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§<"t§ -= param1;
            if(this.§<"t§ < 0)
            {
               this.§<"t§ = 0;
            }
         }
      }
      
      public function §%!5§(param1:§!y§) : Number
      {
         return this.§"#6§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §&#K§() : String
      {
         if(this.§"#6§.§'#[§ > 0)
         {
            return this.§"#6§.§@#D§(0);
         }
         return null;
      }
      
      public function get §+"v§() : String
      {
         if(this.§"#6§.§1"N§ > 0)
         {
            return this.§"#6§.§7;§(0);
         }
         return null;
      }
   }
}
