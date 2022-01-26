package §"C§
{
   import §%b§.§0!Z§;
   import §%b§.§][§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class §!>§ extends §%F§
   {
      
      public static const §!d§:Number = 0.3;
       
      
      private var §2!"§:Boolean = false;
      
      private var §'e§:Number = 0;
      
      public function §!>§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §"&§ = param11;
         §<!&§.limitMultiplier = §!d§;
      }
      
      override public function addDestructionParticles(param1:§;m§) : void
      {
         var _loc2_:String = !!this.§2!"§ ? §=!F§.§;!`§ : §=!F§.§3!6§;
         if(§"&§ == "")
         {
            param1.addParticle(_loc2_,§;m§.§?=§,§=!F§.§<=§,§?@§().GetPosition().x,§?@§().GetPosition().y - 1,2000,"",§=!F§.§;![§);
         }
         else
         {
            param1.§<m§(§"&§,_loc2_,§;m§.§?=§,§=!F§.§<=§,§?@§().GetPosition().x,§?@§().GetPosition().y - 1,2000,"",§=!F§.§;![§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§2!"§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§'e§ > 0)
         {
            this.§'e§ -= param1;
            §9X§.mTryToScream = §]y§.§"d§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §[R§() : void
      {
         this.§'e§ = §][§.§'J§;
         §9X§.mTryToScream = §]y§.§"d§;
         playScreamingSoundEffect();
      }
   }
}
