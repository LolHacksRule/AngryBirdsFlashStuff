package §&c§
{
   import §#;§.§4!8§;
   import §#;§.§<!+§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §%M§ extends § 1§
   {
      
      public static const §,r§:Number = 0.3;
       
      
      private var §^-§:Boolean = false;
      
      private var § 7§:Number = 0;
      
      public function §%M§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §?D§ = param11;
         §?!I§.limitMultiplier = §,r§;
      }
      
      override public function addDestructionParticles(param1:§"g§) : void
      {
         var _loc2_:String = !!this.§^-§ ? §<D§.§#!I§ : §<D§.§]i§;
         if(§?D§ == "")
         {
            param1.§[!5§(_loc2_,§"g§.§;$§,§<D§.§"#§,§68§().GetPosition().x,§68§().GetPosition().y - 1,2000,"",§<D§.§5!6§);
         }
         else
         {
            param1.§@<§(§?D§,_loc2_,§"g§.§;$§,§<D§.§"#§,§68§().GetPosition().x,§68§().GetPosition().y - 1,2000,"",§<D§.§5!6§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§^-§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§ 7§ > 0)
         {
            this.§ 7§ -= param1;
            §<!'§.mTryToScream = §+`§.§0;§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §3e§() : void
      {
         this.§ 7§ = §<!+§.§;7§;
         §<!'§.mTryToScream = §+`§.§0;§;
         playScreamingSoundEffect();
      }
   }
}
