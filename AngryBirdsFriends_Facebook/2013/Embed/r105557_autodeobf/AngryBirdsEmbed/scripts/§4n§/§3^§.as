package §4n§
{
   import §;'§.§>-§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §3^§ extends §-!9§
   {
      
      public static const §9g§:Number = 0.3;
       
      
      private var §!w§:Boolean = false;
      
      private var §2M§:Number = 0;
      
      public function §3^§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §-Q§ = param11;
         §`w§.limitMultiplier = §9g§;
      }
      
      override public function addDestructionParticles(param1:§3r§) : void
      {
         var _loc2_:String = !!this.§!w§ ? §>Z§.§2!8§ : §>Z§.§0]§;
         if(§-Q§ == "")
         {
            param1.§48§(_loc2_,§3r§.§"H§,§>Z§.§]!J§,§^C§().GetPosition().x,§^C§().GetPosition().y - 1,2000,"",§>Z§.§?!?§);
         }
         else
         {
            param1.§"T§(§-Q§,_loc2_,§3r§.§"H§,§>Z§.§]!J§,§^C§().GetPosition().x,§^C§().GetPosition().y - 1,2000,"",§>Z§.§?!?§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§!w§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§2M§ > 0)
         {
            this.§2M§ -= param1;
            §`V§.mTryToScream = §8X§.§4k§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function § !?§() : void
      {
         this.§2M§ = §>-§.§ 2§;
         §`V§.mTryToScream = §8X§.§4k§;
         playScreamingSoundEffect();
      }
   }
}
