package §@"2§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §]">§.§<!=§;
   
   public class §1p§ extends §8!M§
   {
       
      
      protected var §`Z§:Number = 0.0;
      
      protected var §5"?§:Number = 0.0;
      
      protected var §5"=§:Number = 0.0;
      
      protected var §3§:int = 0;
      
      protected var §'j§:Boolean = false;
      
      protected var §7!h§:§]!C§;
      
      public function §1p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§]!C§, param6:Sprite, param7:§#r§, param8:Number, param9:Boolean)
      {
         super(param1,param2,param3,param4,param6,param7,param8);
         var _loc10_:Number = param5.§=c§("damageDoneOnBounce");
         if(isNaN(_loc10_))
         {
            _loc10_ = 0;
         }
         var _loc11_:Number = param5.§=c§("strength");
         if(isNaN(_loc11_))
         {
            _loc11_ = 0;
         }
         var _loc12_:Number = param5.§=c§("impulseGivenOnBirdCollision");
         if(isNaN(_loc12_))
         {
            _loc12_ = 0;
         }
         _loc12_ *= §^g§.§5!-§;
         if(param9)
         {
            _loc12_ = 0;
         }
         this.§`Z§ = _loc11_;
         this.§5"?§ = _loc10_;
         this.§5"=§ = _loc12_;
         var _loc13_:Number = param5.§=c§("collidedScoreInc");
         if(isNaN(_loc13_))
         {
            _loc13_ = 0;
         }
         this.§3§ = _loc13_;
         this.§'j§ = param5.§-0§("turboLaser");
         this.§7!h§ = param5;
         var _loc14_:String;
         if(_loc14_ = this.§7!h§.§0%§("createSound"))
         {
            this.§7!h§.playSoundLua(_loc14_);
         }
      }
      
      public function get health() : Number
      {
         return this.§`Z§;
      }
      
      public function get §-C§() : Number
      {
         return this.§5"=§;
      }
      
      public function get §,!E§() : int
      {
         return this.§3§;
      }
      
      public function get §[!H§() : Number
      {
         if(this.§`Z§ < this.§5"?§)
         {
            return this.§`Z§;
         }
         return this.§5"?§;
      }
      
      public function get §,H§() : Boolean
      {
         return !this.§'j§;
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         super.reflectToAngle(param1,param2);
         var _loc3_:String = this.§7!h§.§0%§("deflectionSound");
         if(_loc3_)
         {
            this.§7!h§.playSoundLua(_loc3_);
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§`Z§ -= param1;
            if(this.§`Z§ < 0)
            {
               this.§`Z§ = 0;
            }
         }
      }
      
      public function §^^§(param1:§<!=§) : Number
      {
         return this.§7!h§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §"E§() : String
      {
         if(this.§7!h§.§8!y§ > 0)
         {
            return this.§7!h§.§]!L§(0);
         }
         return null;
      }
      
      public function get §4!i§() : String
      {
         if(this.§7!h§.§5$§ > 0)
         {
            return this.§7!h§.§5<§(0);
         }
         return null;
      }
   }
}
