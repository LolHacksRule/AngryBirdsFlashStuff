package §3F§
{
   import §3H§.Sprite;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §>2§.§4h§;
   import §>2§.Tuner;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5V§ extends §7j§
   {
      
      public static const §-!P§:Number = 0.3;
       
      
      private var §6@§:Boolean = false;
      
      private var §=h§:Number = 0;
      
      public function §5V§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §,=§ = param11;
         §-g§.limitMultiplier = §-!P§;
      }
      
      override public function addDestructionParticles(param1:§@u§) : void
      {
         var _loc2_:String = !!this.§6@§ ? §^A§.§8[§ : §^A§.§7!C§;
         if(§,=§ == "")
         {
            param1.addParticle(_loc2_,§@u§.§&&§,§^A§.§9!O§,§?!M§().GetPosition().x,§?!M§().GetPosition().y - 1,2000,"",§^A§.§]!7§);
         }
         else
         {
            param1.§+V§(§,=§,_loc2_,§@u§.§&&§,§^A§.§9!O§,§?!M§().GetPosition().x,§?!M§().GetPosition().y - 1,2000,"",§^A§.§]!7§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§6@§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§=h§ > 0)
         {
            this.§=h§ -= param1;
            §^! §.mTryToScream = §0@§.§7!N§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §%d§() : void
      {
         this.§=h§ = Tuner.§!f§;
         §^! §.mTryToScream = §0@§.§7!N§;
         playScreamingSoundEffect();
      }
   }
}
