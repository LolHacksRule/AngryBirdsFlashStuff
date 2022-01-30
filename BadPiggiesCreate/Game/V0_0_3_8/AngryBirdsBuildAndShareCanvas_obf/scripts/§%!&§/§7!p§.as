package §%!&§
{
   import §%h§.§5X§;
   import §?!E§.b2World;
   import §]!2§.Sprite;
   
   public class §7!p§ extends §6""§
   {
       
      
      private var §>!_§:Number = -1;
      
      private var §]![§:Number = -1;
      
      public function §7!p§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'"-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§`3§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§&!I§)
         {
            this.§`3§(0);
         }
         else if(this.§>!_§ > 0)
         {
            _loc1_ = this.§>!_§ / this.§]![§;
            this.§]![§ = 0;
            this.§>!_§ = this.§]![§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§&!I§)
         {
            super.activateSpecialPower(null);
            this.§`3§();
         }
         return _loc7_;
      }
      
      public function §`3§(param1:Number = -1) : void
      {
         this.§>!_§ = 0;
         if(param1 == 0)
         {
            this.§]![§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§]![§ = param1;
         }
         else
         {
            this.§]![§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§>!_§ >= 0)
         {
            this.§>!_§ += param1;
            if(this.§>!_§ >= this.§]![§)
            {
               container.addExplosions(§2!%§.§ !,§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§>!_§ = -1;
            }
            §,!u§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§&!I§ && this.§>!_§ < 0)
         {
            return true;
         }
         if(this.§>!_§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§>!_§ > 0)
         {
            return this.§>!_§ / this.§]![§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§>!_§ > 0)
         {
            return this.§]![§ - this.§>!_§;
         }
         return 0;
      }
   }
}
