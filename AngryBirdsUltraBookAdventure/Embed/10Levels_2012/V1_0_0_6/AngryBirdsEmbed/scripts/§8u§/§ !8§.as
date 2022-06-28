package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§&!"§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § !8§ extends §=Z§
   {
      
      public static const §!G§:Number = 0.3;
       
      
      private var §0d§:Boolean = false;
      
      private var §1!4§:Number = 0;
      
      public function § !8§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §+M§ = param11;
         §@m§.limitMultiplier = §!G§;
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc2_:String = !!this.§0d§ ? §,i§.§4t§ : §,i§.§,!9§;
         if(§+M§ == "")
         {
            param1.§8"§(_loc2_,§;x§.§]+§,§,i§.§0!&§,§?n§().GetPosition().x,§?n§().GetPosition().y - 1,2000,"",§,i§.§8H§);
         }
         else
         {
            param1.§;w§(§+M§,_loc2_,§;x§.§]+§,§,i§.§0!&§,§?n§().GetPosition().x,§?n§().GetPosition().y - 1,2000,"",§,i§.§8H§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§0d§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§1!4§ > 0)
         {
            this.§1!4§ -= param1;
            §7!;§.mTryToScream = §44§.§;<§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §`!#§() : void
      {
         this.§1!4§ = §&!"§.§8>§;
         §7!;§.mTryToScream = §44§.§;<§;
         playScreamingSoundEffect();
      }
   }
}
