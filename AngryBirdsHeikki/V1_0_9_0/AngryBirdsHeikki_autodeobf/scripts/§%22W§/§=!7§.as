package §"W§
{
   import § d§.§&!S§;
   import § d§.§'!"§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.Sprite;
   import §^!Z§.b2World;
   
   public class §=!7§ extends §&!K§
   {
      
      public static const §`L§:Number = 0.3;
       
      
      private var §#!S§:Boolean = false;
      
      private var §7Q§:Number = 0;
      
      public function §=!7§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §&p§ = param11;
         §@!C§.limitMultiplier = §`L§;
      }
      
      override public function addDestructionParticles(param1:§"@§) : void
      {
         var _loc2_:String = !!this.§#!S§ ? §2z§.§"j§ : §2z§.§'f§;
         if(§&p§ == "")
         {
            param1.addParticle(_loc2_,§"@§.§6^§,§2z§.§34§,§"!H§().GetPosition().x,§"!H§().GetPosition().y - 1,2000,"",§2z§.§;Y§);
         }
         else
         {
            param1.§9x§(§&p§,_loc2_,§"@§.§6^§,§2z§.§34§,§"!H§().GetPosition().x,§"!H§().GetPosition().y - 1,2000,"",§2z§.§;Y§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§#!S§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§7Q§ > 0)
         {
            this.§7Q§ -= param1;
            §%f§.mTryToScream = §0f§.§![§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §00§() : void
      {
         this.§7Q§ = §&!S§.§'!A§;
         §%f§.mTryToScream = §0f§.§![§;
         playScreamingSoundEffect();
      }
   }
}
