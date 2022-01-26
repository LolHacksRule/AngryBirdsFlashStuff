package §]!D§
{
   import §8!`§.§4J§;
   import §8!`§.§7I§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   import §`;§.§5i§;
   import §`;§.§[E§;
   
   public class §[!9§ extends §7!$§
   {
      
      public static const §3!§:Number = 0.3;
       
      
      private var §?!'§:Boolean = false;
      
      private var §#r§:Number = 0;
      
      public function §[!9§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §@G§ = param11;
         § x§.limitMultiplier = §3!§;
      }
      
      override public function addDestructionParticles(param1:§5i§) : void
      {
         var _loc2_:String = !!this.§?!'§ ? §[E§.§^^§ : §[E§.§#U§;
         if(§@G§ == "")
         {
            param1.addParticle(_loc2_,§5i§.§-!D§,§[E§.§'m§,§^!_§().GetPosition().x,§^!_§().GetPosition().y - 1,2000,"",§[E§.§?"§);
         }
         else
         {
            param1.§0z§(§@G§,_loc2_,§5i§.§-!D§,§[E§.§'m§,§^!_§().GetPosition().x,§^!_§().GetPosition().y - 1,2000,"",§[E§.§?"§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§?!'§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§#r§ > 0)
         {
            this.§#r§ -= param1;
            §`T§.mTryToScream = §]!R§.§<_§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §7!3§() : void
      {
         this.§#r§ = §7I§.§^&§;
         §`T§.mTryToScream = §]!R§.§<_§;
         playScreamingSoundEffect();
      }
   }
}
