package §]!9§
{
   import §%x§.§#!;§;
   
   public class §5D§ extends §5V§
   {
      
      public static const §9L§:int = 5;
      
      private static var §0!F§:§5V§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9L§ = 5;
            if(_loc2_)
            {
               §0!F§ = new §5D§(0,0,§#!;§.§>u§,§#!;§.§5!2§,§#!;§.§<'§,§#!;§.§-3§,§9L§);
            }
         }
      }
      
      public function §5D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5V§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§5V§ = null;
         §§push(param1);
         if(_loc6_ || param1)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && §5D§))
            {
               §§push(§9L§);
               if(_loc6_ || param3)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr79:
                     §§push(0);
                     if(_loc7_)
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
                     _loc4_ = §0!F§;
                     return new §5V§(param2,param3,_loc4_.§+r§,_loc4_.push,_loc4_.§+@§,_loc4_.damage,param1);
                  default:
                     return §5V§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr88);
      }
   }
}
