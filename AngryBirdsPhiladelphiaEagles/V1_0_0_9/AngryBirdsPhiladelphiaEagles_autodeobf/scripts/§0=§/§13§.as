package §0=§
{
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,T§.Tuner;
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §13§ extends § l§
   {
      
      public static const §1_§:Number = 0.3;
       
      
      private var §`!E§:Boolean = false;
      
      private var §3;§:Number = 0;
      
      public function §13§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §?!1§ = param11;
         §<O§.limitMultiplier = §1_§;
      }
      
      override public function addDestructionParticles(param1:§5P§) : void
      {
         var _loc2_:String = !!this.§`!E§ ? §5Z§.§ m§ : §5Z§.§;!A§;
         if(§?!1§ == "")
         {
            param1.addParticle(_loc2_,§5P§.§=!L§,§5Z§.§,!=§,§;!M§().GetPosition().x,§;!M§().GetPosition().y - 1,2000,"",§5Z§.§<!J§);
         }
         else
         {
            param1.§`W§(§?!1§,_loc2_,§5P§.§=!L§,§5Z§.§,!=§,§;!M§().GetPosition().x,§;!M§().GetPosition().y - 1,2000,"",§5Z§.§<!J§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§`!E§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§3;§ > 0)
         {
            this.§3;§ -= param1;
            §^c§.mTryToScream = §?!,§.§=!B§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §>s§() : void
      {
         this.§3;§ = Tuner.§`5§;
         §^c§.mTryToScream = §?!,§.§=!B§;
         playScreamingSoundEffect();
      }
   }
}
