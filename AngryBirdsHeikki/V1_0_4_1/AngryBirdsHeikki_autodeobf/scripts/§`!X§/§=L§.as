package §`!X§
{
   import §4x§.b2Settings;
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §^!7§.§+B§;
   import §^!7§.§^A§;
   
   public class §=L§ extends §-E§
   {
       
      
      private var §!!Z§:Boolean = false;
      
      private var §2=§:Number = 0;
      
      public function §=L§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §05§ = param11;
      }
      
      override public function addDestructionParticles(param1:§`!S§) : void
      {
         var _loc2_:String = !!this.§!!Z§ ? §+!Z§.§6W§ : §+!Z§.§'U§;
         if(§05§ == "")
         {
            param1.addParticle(_loc2_,§`!S§.§3!_§,§+!Z§.§^!F§,§1!E§().GetPosition().x,§1!E§().GetPosition().y - 1,2000,"",§+!Z§.§ H§);
         }
         else
         {
            param1.§'H§(§05§,_loc2_,§`!S§.§3!_§,§+!Z§.§^!F§,§1!E§().GetPosition().x,§1!E§().GetPosition().y - 1,2000,"",§+!Z§.§ H§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§!!Z§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§1!E§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§1!E§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§1!E§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§2=§ > 0)
         {
            this.§2=§ -= param1;
            §?W§.mTryToScream = §>r§.§&!E§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §!!G§() : void
      {
         this.§2=§ = §+B§.§&!X§;
         §?W§.mTryToScream = §>r§.§&!E§;
         playScreamingSoundEffect();
      }
   }
}
