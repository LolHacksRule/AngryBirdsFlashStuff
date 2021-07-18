package §-!&§
{
   import §9T§.Tuner;
   
   public class §9r§ extends §%0§
   {
      
      public static const §4!H§:int = 5;
      
      private static var §3b§:§%0§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!H§ = 5;
         }
         do
         {
            §3b§ = new §9r§(0,0,Tuner.§87§,Tuner.§#9§,Tuner.§15§,Tuner.§'!&§,§4!H§);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §9r§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%0§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§%0§ = null;
         §§push(param1);
         if(!(_loc7_ && §9r§))
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(§4!H§);
               if(!(_loc7_ && param2))
               {
                  if(§§pop() === _loc5_)
                  {
                     addr74:
                     §§push(0);
                     if(_loc7_ && param2)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               addr88:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = §3b§;
                     return new §%0§(param2,param3,_loc4_.§>!Q§,_loc4_.push,_loc4_.§7!F§,_loc4_.damage,param1);
                  default:
                     return §%0§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr88);
      }
   }
}
