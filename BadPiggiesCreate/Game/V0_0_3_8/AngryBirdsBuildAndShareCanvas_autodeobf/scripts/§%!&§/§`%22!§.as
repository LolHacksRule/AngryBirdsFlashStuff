package §%!&§
{
   import §%h§.§5X§;
   import §%h§.§6!d§;
   import §?!E§.b2World;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.Sprite;
   
   public class §`"!§ extends §@!§
   {
      
      public static const §6B§:Number = 0.3;
       
      
      private var §[9§:Boolean = false;
      
      private var §7"!§:Number = 0;
      
      public function §`"!§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §0!5§ = param11;
         §6!7§.limitMultiplier = §6B§;
      }
      
      override public function addDestructionParticles(param1:final) : void
      {
         var _loc2_:String = !!this.§[9§ ? §3!u§.§-!F§ : §3!u§.§1"&§;
         if(§0!5§ == "")
         {
            param1.§=!J§(_loc2_,final.§0e§,§3!u§.§3!>§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§3!u§.§"!w§);
         }
         else
         {
            param1.§6!t§(§0!5§,_loc2_,final.§0e§,§3!u§.§3!>§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§3!u§.§"!w§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§[9§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§7"!§ > 0)
         {
            this.§7"!§ -= param1;
            §+G§.mTryToScream = §5",§.§-!5§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §!0§() : void
      {
         this.§7"!§ = §6!d§.§&!"§;
         §+G§.mTryToScream = §5",§.§-!5§;
         playScreamingSoundEffect();
      }
   }
}
