package §]!+§
{
   import §!!V§.§&I§;
   import §!!V§.§[K§;
   import §&!5§.Sprite;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §[x§.b2World;
   
   public class §7r§ extends §1!7§
   {
      
      public static const §4r§:Number = 0.3;
       
      
      private var §-;§:Boolean = false;
      
      private var §-1§:Number = 0;
      
      public function §7r§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §,v§ = param11;
         §98§.limitMultiplier = §4r§;
      }
      
      override public function addDestructionParticles(param1:§7!H§) : void
      {
         var _loc2_:String = !!this.§-;§ ? §"!U§.§]!$§ : §"!U§.§"H§;
         if(§,v§ == "")
         {
            param1.addParticle(_loc2_,§7!H§.§]0§,§"!U§.§8-§,§?A§().GetPosition().x,§?A§().GetPosition().y - 1,2000,"",§"!U§.§,a§);
         }
         else
         {
            param1.§[H§(§,v§,_loc2_,§7!H§.§]0§,§"!U§.§8-§,§?A§().GetPosition().x,§?A§().GetPosition().y - 1,2000,"",§"!U§.§,a§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§-;§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§-1§ > 0)
         {
            this.§-1§ -= param1;
            §^!3§.mTryToScream = §%j§.§8f§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §;=§() : void
      {
         this.§-1§ = §[K§.§-K§;
         §^!3§.mTryToScream = §%j§.§8f§;
         playScreamingSoundEffect();
      }
   }
}
