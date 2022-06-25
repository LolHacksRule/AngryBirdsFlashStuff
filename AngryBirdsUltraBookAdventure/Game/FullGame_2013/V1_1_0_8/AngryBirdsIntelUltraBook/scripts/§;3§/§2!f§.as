package §;3§
{
   import § var§.§3!b§;
   import §40§.§2!y§;
   
   public class §2!f§ extends §3!b§
   {
      
      public static const §^!"§:int = 5;
      
      private static var §%a§:§3!b§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!"§ = 5;
            do
            {
               §%a§ = new §2!f§(0,0,§2!y§.§[a§,§2!y§.§%W§,§2!y§.§@H§,§2!y§.§'R§,§^!"§);
            }
            while(!(_loc1_ || §2!f§));
            
         }
      }
      
      public function §2!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §3!b§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§3!b§ = null;
         §§push(param1);
         if(!(_loc6_ && §2!f§))
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || §2!f§)
            {
               §§push(§^!"§);
               if(!_loc6_)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr75:
                     §§push(0);
                     if(!_loc7_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               addr84:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = §%a§;
                     return new §3!b§(param2,param3,_loc4_.§61§,_loc4_.push,_loc4_.§0!0§,_loc4_.damage,param1);
                  default:
                     return §3!b§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr84);
      }
   }
}
