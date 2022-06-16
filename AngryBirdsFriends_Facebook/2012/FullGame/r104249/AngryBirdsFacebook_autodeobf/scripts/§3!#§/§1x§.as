package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §70§.§^!>§;
   import §]!v§.Sprite;
   
   public class §1x§ extends §!!k§
   {
       
      
      private var §,"K§:Number = -1;
      
      private var §8!5§:Number = -1;
      
      public function §1x§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§@"&§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§'!G§)
         {
            this.§@"&§(0);
         }
         else if(this.§,"K§ > 0)
         {
            _loc1_ = this.§,"K§ / this.§8!5§;
            this.§8!5§ = 0;
            this.§,"K§ = this.§8!5§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§'!G§)
         {
            super.activateSpecialPower(null);
            this.§@"&§();
         }
         return _loc7_;
      }
      
      public function §@"&§(param1:Number = -1) : void
      {
         this.§,"K§ = 0;
         if(param1 == 0)
         {
            this.§8!5§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§8!5§ = param1;
         }
         else
         {
            this.§8!5§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,"K§ >= 0)
         {
            this.§,"K§ += param1;
            if(this.§,"K§ >= this.§8!5§)
            {
               §@H§.addExplosions(§0"A§.§!!K§,§`!y§().GetPosition().x,§`!y§().GetPosition().y);
               this.§,"K§ = -1;
               §^!>§.§;"K§(false);
            }
            §'b§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§'!G§ && this.§,"K§ < 0)
         {
            return true;
         }
         if(this.§,"K§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,"K§ > 0)
         {
            return this.§,"K§ / this.§8!5§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§,"K§ > 0)
         {
            return this.§8!5§ - this.§,"K§;
         }
         return 0;
      }
   }
}
