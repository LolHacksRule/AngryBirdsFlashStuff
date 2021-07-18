package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §9T§.§1r§;
   import §9T§.Tuner;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §25§ extends §=!A§
   {
      
      public static const §&z§:Number = 0.3;
       
      
      private var §2!I§:Boolean = false;
      
      private var §0$§:Number = 0;
      
      public function §25§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §7!H§ = param11;
         §^2§.limitMultiplier = §&z§;
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc2_:String = !!this.§2!I§ ? §8R§.§,!B§ : §8R§.§!H§;
         if(§7!H§ == "")
         {
            param1.addParticle(_loc2_,§5!5§.§-U§,§8R§.§0f§,§`%§().GetPosition().x,§`%§().GetPosition().y - 1,2000,"",§8R§.§!!J§);
         }
         else
         {
            param1.§;!8§(§7!H§,_loc2_,§5!5§.§-U§,§8R§.§0f§,§`%§().GetPosition().x,§`%§().GetPosition().y - 1,2000,"",§8R§.§!!J§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§2!I§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§0$§ > 0)
         {
            this.§0$§ -= param1;
            §3! §.mTryToScream = §?k§.§1J§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §];§() : void
      {
         this.§0$§ = Tuner.§[H§;
         §3! §.mTryToScream = §?k§.§1J§;
         playScreamingSoundEffect();
      }
   }
}
