package §!+§
{
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5w§ extends §=H§
   {
       
      
      private var § n§:Number = -1;
      
      private var §;o§:Number = -1;
      
      public function §5w§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§=!&§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§^`§)
         {
            this.§=!&§(0);
         }
         else if(this.§ n§ > 0)
         {
            _loc1_ = this.§ n§ / this.§;o§;
            this.§;o§ = 0;
            this.§ n§ = this.§;o§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§^`§)
         {
            super.activateSpecialPower(null);
            this.§=!&§();
         }
         return _loc7_;
      }
      
      public function §=!&§(param1:Number = -1) : void
      {
         this.§ n§ = 0;
         if(param1 == 0)
         {
            this.§;o§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§;o§ = param1;
         }
         else
         {
            this.§;o§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§ n§ >= 0)
         {
            this.§ n§ += param1;
            if(this.§ n§ >= this.§;o§)
            {
               container.addExplosions(§%!=§.§!!$§,§`t§().GetPosition().x,§`t§().GetPosition().y);
               this.§ n§ = -1;
            }
            §90§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§^`§ && this.§ n§ < 0)
         {
            return true;
         }
         if(this.§ n§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§ n§ > 0)
         {
            return this.§ n§ / this.§;o§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§ n§ > 0)
         {
            return this.§;o§ - this.§ n§;
         }
         return 0;
      }
   }
}
