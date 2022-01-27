package §8x§
{
   import §,!F§.§#§;
   import §,!F§.Tuner;
   import §4G§.Sprite;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5]§ extends §6!G§
   {
      
      public static const §+!H§:Number = 0.3;
       
      
      private var §;!!§:Boolean = false;
      
      private var §7!P§:Number = 0;
      
      public function §5]§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §]s§ = param11;
         §%J§.limitMultiplier = §+!H§;
      }
      
      override public function addDestructionParticles(param1:§,!'§) : void
      {
         var _loc2_:String = !!this.§;!!§ ? § J§.§<!§ : § J§.§&i§;
         if(§]s§ == "")
         {
            param1.addParticle(_loc2_,§,!'§.§=8§,§ J§.§%!A§,§]!7§().GetPosition().x,§]!7§().GetPosition().y - 1,2000,"",§ J§.§'G§);
         }
         else
         {
            param1.§&!#§(§]s§,_loc2_,§,!'§.§=8§,§ J§.§%!A§,§]!7§().GetPosition().x,§]!7§().GetPosition().y - 1,2000,"",§ J§.§'G§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§;!!§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§7!P§ > 0)
         {
            this.§7!P§ -= param1;
            §5!O§.mTryToScream = §5^§.§'v§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §&P§() : void
      {
         this.§7!P§ = Tuner.§0,§;
         §5!O§.mTryToScream = §5^§.§'v§;
         playScreamingSoundEffect();
      }
   }
}
