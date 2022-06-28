package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §9W§.Sprite;
   import §?b§.§&z§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6>§ extends §89§
   {
       
      
      private var §^Z§:Boolean = false;
      
      private var §9!5§:Number = 0;
      
      public function §6>§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         § !4§ = param11;
      }
      
      override public function addDestructionParticles(param1:§#C§) : void
      {
         var _loc2_:String = !!this.§^Z§ ? §!8§.§2]§ : §!8§.§0E§;
         if(§ !4§ == "")
         {
            param1.§'!;§(_loc2_,§#C§.§#!'§,§!8§.§0!H§,§`t§().GetPosition().x,§`t§().GetPosition().y - 1,2000,"",§!8§.§<!§);
         }
         else
         {
            param1.§=!B§(§ !4§,_loc2_,§#C§.§#!'§,§!8§.§0!H§,§`t§().GetPosition().x,§`t§().GetPosition().y - 1,2000,"",§!8§.§<!§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§^Z§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§`t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§9!5§ > 0)
         {
            this.§9!5§ -= param1;
            §'j§.mTryToScream = override.§`=§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §<a§() : void
      {
         this.§9!5§ = §&z§.§=!0§;
         §'j§.mTryToScream = override.§`=§;
         playScreamingSoundEffect();
      }
   }
}
