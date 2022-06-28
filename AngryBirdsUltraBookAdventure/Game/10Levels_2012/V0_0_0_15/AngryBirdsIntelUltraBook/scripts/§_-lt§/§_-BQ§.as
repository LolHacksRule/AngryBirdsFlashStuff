package §_-lt§
{
   import §_-5§.b2Settings;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-L8§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-BQ§ extends §_-0f§
   {
       
      
      private var §_-0EJ§:Boolean = false;
      
      private var §_-CW§:Number = 0;
      
      public function §_-BQ§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §_-SE§ = param11;
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc2_:String = !!this.§_-0EJ§ ? §_-Hv§.§_-K7§ : §_-Hv§.§_-O5§;
         if(§_-SE§ == "")
         {
            param1.§_-0EQ§(_loc2_,§_-Zc§.§_-MP§,§_-Hv§.§_-4y§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y - 1,2000,"",§_-Hv§.§_-TD§);
         }
         else
         {
            param1.§_-0-N§(§_-SE§,_loc2_,§_-Zc§.§_-MP§,§_-Hv§.§_-4y§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y - 1,2000,"",§_-Hv§.§_-TD§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§_-0EJ§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-SJ§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-SJ§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-SJ§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§_-CW§ > 0)
         {
            this.§_-CW§ -= param1;
            §_-U-§.mTryToScream = §_-05W§.§_-0C9§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §_-H4§() : void
      {
         this.§_-CW§ = §_-L8§.§_-Wt§;
         §_-U-§.mTryToScream = §_-05W§.§_-0C9§;
         playScreamingSoundEffect();
      }
   }
}
