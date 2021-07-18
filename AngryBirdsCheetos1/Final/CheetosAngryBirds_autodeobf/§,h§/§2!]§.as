package §,h§
{
   import §!X§.§!j§;
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §2!F§.b2Settings;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §2!]§ extends §9!@§
   {
       
      
      private var §?!&§:Boolean = false;
      
      private var §7!@§:Number = 0;
      
      public function §2!]§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc2_:String = !!this.§?!&§ ? §7o§.§-! § : §7o§.§>[§;
         param1.addParticle(_loc2_,§<2§.§]!X§,§7o§.§&!'§,§?!7§().GetPosition().x,§?!7§().GetPosition().y - 1,2000,"",§7o§.§+#§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§?!&§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§?!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§7!@§ > 0)
         {
            this.§7!@§ -= param1;
            §2P§.mTryToScream = §0q§.§<!6§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §"?§() : void
      {
         this.§7!@§ = §!j§.§&n§;
         §2P§.mTryToScream = §0q§.§<!6§;
         playScreamingSoundEffect();
      }
   }
}
