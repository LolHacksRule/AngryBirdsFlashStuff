package §#!P§
{
   import §!!B§.b2World;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§!$§;
   import §3E§.§6w§;
   import §7u§.Sprite;
   
   public class §<q§ extends §=!A§
   {
      
      public static const §;>§:Number = 0.3;
       
      
      private var §3!_§:Boolean = false;
      
      private var §2!B§:Number = 0;
      
      public function §<q§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §-X§ = param11;
         §<!R§.limitMultiplier = §;>§;
      }
      
      override public function addDestructionParticles(param1:§ M§) : void
      {
         var _loc2_:String = !!this.§3!_§ ? §4+§.§[!N§ : §4+§.§3!5§;
         if(§-X§ == "")
         {
            param1.addParticle(_loc2_,§ M§.§&^§,§4+§.§!Y§,§84§().GetPosition().x,§84§().GetPosition().y - 1,2000,"",§4+§.§ !4§);
         }
         else
         {
            param1.§9U§(§-X§,_loc2_,§ M§.§&^§,§4+§.§!Y§,§84§().GetPosition().x,§84§().GetPosition().y - 1,2000,"",§4+§.§ !4§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§3!_§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§2!B§ > 0)
         {
            this.§2!B§ -= param1;
            §<k§.mTryToScream = §1!Y§.§0!P§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §%S§() : void
      {
         this.§2!B§ = §!$§.§#+§;
         §<k§.mTryToScream = §1!Y§.§0!P§;
         playScreamingSoundEffect();
      }
   }
}
