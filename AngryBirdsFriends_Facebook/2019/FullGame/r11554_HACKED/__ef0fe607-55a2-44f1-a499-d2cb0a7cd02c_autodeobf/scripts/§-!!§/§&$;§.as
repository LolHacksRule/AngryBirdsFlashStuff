package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§]#e§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §&$;§ extends §,!h§
   {
       
      
      public function §&$;§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = _loc5_ / (12 - 1) * Math.PI;
            _loc7_ = 0.5 * 15 + 15 * (Math.random() * 0.5);
            (§%"T§.§;`§.particles as §]#e§).§4#z§(x,y,_loc7_,_loc6_,_loc3_);
            _loc5_++;
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.canActivateSpecialPower;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return health > 0;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            §&!+§(-§1#H§);
            return true;
         }
         return false;
      }
      
      override public function get isFlying() : Boolean
      {
         return true;
      }
   }
}
