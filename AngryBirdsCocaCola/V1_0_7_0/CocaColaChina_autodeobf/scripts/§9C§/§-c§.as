package §9C§
{
   import §#!M§.b2Settings;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §4A§.§&_§;
   import §4A§.§96§;
   import §4U§.b2World;
   
   public class §-c§ extends §[>§
   {
       
      
      private var §^!;§:Boolean = false;
      
      private var §%![§:Number = 0;
      
      public function §-c§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §9!c§ = param11;
      }
      
      override public function addDestructionParticles(param1:§%C§) : void
      {
         var _loc2_:String = !!this.§^!;§ ? §,!;§.§=!c§ : §,!;§.§>!H§;
         if(§9!c§ == "")
         {
            param1.§<%§(_loc2_,§%C§.§5l§,§,!;§.§`e§,§@!?§().GetPosition().x,§@!?§().GetPosition().y - 1,2000,"",§,!;§.§8+§);
         }
         else
         {
            param1.§&A§(§9!c§,_loc2_,§%C§.§5l§,§,!;§.§`e§,§@!?§().GetPosition().x,§@!?§().GetPosition().y - 1,2000,"",§,!;§.§8+§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§^!;§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§@!?§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§@!?§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§@!?§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§%![§ > 0)
         {
            this.§%![§ -= param1;
            §5U§.mTryToScream = §9!@§.§;X§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §'M§() : void
      {
         this.§%![§ = §96§.§5_§;
         §5U§.mTryToScream = §9!@§.§;X§;
         playScreamingSoundEffect();
      }
   }
}
