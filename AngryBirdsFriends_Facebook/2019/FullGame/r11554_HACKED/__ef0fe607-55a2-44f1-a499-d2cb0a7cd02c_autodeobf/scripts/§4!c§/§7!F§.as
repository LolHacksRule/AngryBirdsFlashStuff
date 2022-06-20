package §4!c§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §-!!§.§1#B§;
   import §?§.§7E§;
   import §^"[§.§4!8§;
   
   public class §7!F§ extends §5#W§
   {
       
      
      protected var §-#@§:Number = 0.0;
      
      protected var §`#n§:Number = 0.0;
      
      protected var §8$=§:Number = 0.0;
      
      protected var §<a§:int = 0;
      
      protected var §2R§:Boolean = false;
      
      protected var §!!H§:§7E§;
      
      public function §7!F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§7E§, param6:Sprite, param7:§4!8§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§[$7§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§[$7§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§[$7§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §'"u§.§'#e§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§-#@§ = _loc11_;
         this.§`#n§ = _loc10_;
         this.§8$=§ = _loc12_;
         var _loc13_:Number = param5.§[$7§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§<a§ = _loc13_;
         this.§2R§ = param5.§1"H§("turboLaser");
         this.§!!H§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§!!H§.§3!i§("createSound"))
         {
            this.§!!H§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§-#@§;
      }
      
      public function get §>$1§() : Number
      {
         return this.§8$=§;
      }
      
      public function get §5#F§() : int
      {
         return this.§<a§;
      }
      
      public function get §<"d§() : Number
      {
         if(this.§-#@§ < this.§`#n§)
         {
            return this.§-#@§;
         }
         return this.§`#n§;
      }
      
      public function get §@#k§() : Boolean
      {
         return !this.§2R§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§!!H§.§3!i§("deflectionSound");
         if(_loc3_)
         {
            this.§!!H§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§-#@§ -= param1;
            if(this.§-#@§ < 0)
            {
               this.§-#@§ = 0;
            }
         }
      }
      
      public function §7"C§(param1:§1#B§) : Number
      {
         return this.§!!H§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §>!Z§() : String
      {
         if(this.§!!H§.§6"9§ > 0)
         {
            return this.§!!H§.§;"Q§(0);
         }
         return null;
      }
      
      public function get §6"D§() : String
      {
         if(this.§!!H§.§@#h§ > 0)
         {
            return this.§!!H§.§%"U§(0);
         }
         return null;
      }
   }
}
