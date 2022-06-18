package §;z§
{
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §-A§.§36§;
   import §4!&§.b2World;
   
   public class §^!3§ extends §2!S§
   {
      
      public static const §?n§:Number = 0.3;
       
      
      private var §&'§:Boolean = false;
      
      private var §8!X§:Number = 0;
      
      public function §^!3§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §<N§ = param11;
         §&!<§.limitMultiplier = §?n§;
      }
      
      override public function addDestructionParticles(param1:§^Z§) : void
      {
         var _loc2_:String = !!this.§&'§ ? §+e§.§3!a§ : §+e§.§"F§;
         if(§<N§ == "")
         {
            param1.addParticle(_loc2_,§^Z§.§<!%§,§+e§.§'>§,§^!V§().GetPosition().x,§^!V§().GetPosition().y - 1,2000,"",§+e§.§&L§);
         }
         else
         {
            param1.§?L§(§<N§,_loc2_,§^Z§.§<!%§,§+e§.§'>§,§^!V§().GetPosition().x,§^!V§().GetPosition().y - 1,2000,"",§+e§.§&L§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§&'§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§8!X§ > 0)
         {
            this.§8!X§ -= param1;
            §=t§.mTryToScream = §0!Q§.§%!?§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §-!5§() : void
      {
         this.§8!X§ = §36§.§2?§;
         §=t§.mTryToScream = §0!Q§.§%!?§;
         playScreamingSoundEffect();
      }
   }
}
