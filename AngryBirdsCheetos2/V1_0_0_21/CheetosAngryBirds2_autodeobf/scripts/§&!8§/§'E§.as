package §&!8§
{
   import § g§.§<n§;
   import § o§.b2World;
   import §,§.§ p§;
   import §^a§.Sprite;
   
   public class §'E§ extends §]V§
   {
       
      
      private var §9!a§:Number = -1;
      
      private var §0<§:Number = -1;
      
      public function §'E§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§;!&§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§,B§)
         {
            this.§;!&§(0);
         }
         else if(this.§9!a§ > 0)
         {
            _loc1_ = this.§9!a§ / this.§0<§;
            this.§0<§ = 0;
            this.§9!a§ = this.§0<§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§,B§)
         {
            super.activateSpecialPower(null);
            this.§;!&§();
         }
         return _loc7_;
      }
      
      public function §;!&§(param1:Number = -1) : void
      {
         this.§9!a§ = 0;
         if(param1 == 0)
         {
            this.§0<§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§0<§ = param1;
         }
         else
         {
            this.§0<§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9!a§ >= 0)
         {
            this.§9!a§ += param1;
            if(this.§9!a§ >= this.§0<§)
            {
               container.addExplosions(§7@§.§8!Z§,§`e§().GetPosition().x,§`e§().GetPosition().y);
               this.§9!a§ = -1;
               §<n§.§@B§(false);
            }
            §!]§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§,B§ && this.§9!a§ < 0)
         {
            return true;
         }
         if(this.§9!a§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9!a§ > 0)
         {
            return this.§9!a§ / this.§0<§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9!a§ > 0)
         {
            return this.§0<§ - this.§9!a§;
         }
         return 0;
      }
   }
}
