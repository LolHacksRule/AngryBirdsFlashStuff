package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§^g§;
   import §7!u§.b2Settings;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2World;
   
   public class §6j§ extends § !v§
   {
       
      
      private var §,!0§:Boolean = false;
      
      private var §;!x§:Number = 0;
      
      public function §6j§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §4!c§ = param11;
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc2_:String = !!this.§,!0§ ? §1!e§.§+g§ : §1!e§.§@v§;
         if(§4!c§ == "")
         {
            param1.§ K§(_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§);
         }
         else
         {
            param1.§0!>§(§4!c§,_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§,!0§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§5b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§5b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§5b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§;!x§ > 0)
         {
            this.§;!x§ -= param1;
            §?!M§.mTryToScream = §'!%§.§2<§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §,!E§() : void
      {
         this.§;!x§ = §0;§.§#N§;
         §?!M§.mTryToScream = §'!%§.§2<§;
         playScreamingSoundEffect();
      }
   }
}
