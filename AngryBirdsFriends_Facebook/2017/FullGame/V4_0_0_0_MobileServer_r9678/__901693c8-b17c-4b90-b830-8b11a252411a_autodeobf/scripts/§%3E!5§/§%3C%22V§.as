package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§6#J§;
   
   public class §<"V§ extends §;"i§
   {
       
      
      public function §<"V§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = _loc5_ / (12 - 1) * Math.PI;
            _loc7_ = 0.5 * 15 + 15 * (Math.random() * 0.5);
            (§!#A§.§#F§.particles as §6#J§).§]!s§(x,y,_loc7_,_loc6_,_loc3_);
            _loc5_++;
         }
      }
   }
}
