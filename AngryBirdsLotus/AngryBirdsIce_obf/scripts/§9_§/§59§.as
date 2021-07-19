package §9_§
{
   import §[x§.§`5§;
   
   public class §59§ extends §7]§
   {
      
      public static const §+d§:int = 5;
      
      private static var §!R§:§7]§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §59§))
         {
            §+d§ = 5;
            do
            {
               §!R§ = new §59§(0,0,§`5§.§@5§,§`5§.§`[§,§`5§.§[!$§,§`5§.§41§,§+d§);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §59§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7]§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§7]§ = null;
         §§push(param1);
         if(!(_loc6_ && param2))
         {
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param3))
            {
               §§push(§+d§);
               if(!_loc6_)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr75:
                     §§push(0);
                     if(_loc7_ || §59§)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               addr89:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = §!R§;
                     return new §7]§(param2,param3,_loc4_.§-q§,_loc4_.push,_loc4_.§`K§,_loc4_.damage,param1);
                  default:
                     return §7]§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr89);
      }
   }
}
