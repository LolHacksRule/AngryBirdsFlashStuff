package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=!7§.§ #f§;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class § "S§ extends §=,§
   {
      
      private static const §'"<§:String = "special";
       
      
      public function § "S§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §'"s§.setAnimation(§'"<§,false);
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = Math.random() * Math.PI;
            _loc7_ = 0.5 * 20 + 20 * (Math.random() * 0.5);
            (§>"$§.§3#'§.particles as § #f§).§,!E§(x,y,_loc7_,_loc6_,_loc3_);
            _loc5_++;
         }
      }
   }
}
