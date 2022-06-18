package §#!1§
{
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import §`i§.§+3§;
   import §`i§.§2W§;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4k§ extends §&z§
   {
       
      
      private var §&!9§:Boolean = false;
      
      private var §%c§:Number = 0;
      
      public function §4k§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §=!H§ = param11;
      }
      
      override public function addDestructionParticles(param1:§=j§) : void
      {
         var _loc2_:String = !!this.§&!9§ ? §4!F§.§6E§ : §4!F§.§?!A§;
         if(§=!H§ == "")
         {
            param1.§#!B§(_loc2_,§=j§.§[m§,§4!F§.§<!>§,§!v§().GetPosition().x,§!v§().GetPosition().y - 1,2000,"",§4!F§.§#-§);
         }
         else
         {
            param1.§&!1§(§=!H§,_loc2_,§=j§.§[m§,§4!F§.§<!>§,§!v§().GetPosition().x,§!v§().GetPosition().y - 1,2000,"",§4!F§.§#-§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§&!9§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§!v§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§!v§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§!v§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§%c§ > 0)
         {
            this.§%c§ -= param1;
            §>7§.mTryToScream = §+q§.§+!§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §+X§() : void
      {
         this.§%c§ = §+3§.§&_§;
         §>7§.mTryToScream = §+q§.§+!§;
         playScreamingSoundEffect();
      }
   }
}
