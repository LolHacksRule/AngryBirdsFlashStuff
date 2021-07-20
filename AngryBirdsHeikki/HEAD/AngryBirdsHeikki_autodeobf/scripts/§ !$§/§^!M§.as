package § !$§
{
   import §+d§.b2World;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.Sprite;
   import §9!'§.§&<§;
   import §9!'§.§0!%§;
   
   public class §^!M§ extends §8r§
   {
      
      public static const §[!C§:Number = 0.3;
       
      
      private var §>x§:Boolean = false;
      
      private var §6X§:Number = 0;
      
      public function §^!M§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §"v§ = param11;
         §#!G§.limitMultiplier = §[!C§;
      }
      
      override public function addDestructionParticles(param1:§0i§) : void
      {
         var _loc2_:String = !!this.§>x§ ? §-q§.§+%§ : §-q§.§-!L§;
         if(§"v§ == "")
         {
            param1.addParticle(_loc2_,§0i§.§>E§,§-q§.§,!f§,§]!2§().GetPosition().x,§]!2§().GetPosition().y - 1,2000,"",§-q§.§]Z§);
         }
         else
         {
            param1.§]V§(§"v§,_loc2_,§0i§.§>E§,§-q§.§,!f§,§]!2§().GetPosition().x,§]!2§().GetPosition().y - 1,2000,"",§-q§.§]Z§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§>x§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§6X§ > 0)
         {
            this.§6X§ -= param1;
            §[m§.mTryToScream = §"!%§.§"!=§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §1i§() : void
      {
         this.§6X§ = §&<§.§?@§;
         §[m§.mTryToScream = §"!%§.§"!=§;
         playScreamingSoundEffect();
      }
   }
}
