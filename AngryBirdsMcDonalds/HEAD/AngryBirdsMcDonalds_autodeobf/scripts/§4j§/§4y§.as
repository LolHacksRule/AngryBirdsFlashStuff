package §4j§
{
   import § !J§.§%M§;
   import § !J§.§,![§;
   import §8T§.b2World;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §4y§ extends §?u§
   {
      
      public static const §#&§:Number = 0.3;
       
      
      private var §try§:Boolean = false;
      
      private var §]!l§:Number = 0;
      
      public function §4y§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §!!$§ = param11;
         §5Q§.limitMultiplier = §#&§;
      }
      
      override public function addDestructionParticles(param1:§7!N§) : void
      {
         var _loc2_:String = !!this.§try§ ? §,]§.§,!M§ : §,]§.§6h§;
         if(§!!$§ == "")
         {
            param1.§3X§(_loc2_,§7!N§.§<!Z§,§,]§.§%0§,§3H§().GetPosition().x,§3H§().GetPosition().y - 1,2000,"",§,]§.§>J§);
         }
         else
         {
            param1.§9!-§(§!!$§,_loc2_,§7!N§.§<!Z§,§,]§.§%0§,§3H§().GetPosition().x,§3H§().GetPosition().y - 1,2000,"",§,]§.§>J§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§try§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§]!l§ > 0)
         {
            this.§]!l§ -= param1;
            §%!$§.mTryToScream = §?!c§.§%R§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §@K§() : void
      {
         this.§]!l§ = §,![§.§0!^§;
         §%!$§.mTryToScream = §?!c§.§%R§;
         playScreamingSoundEffect();
      }
   }
}
