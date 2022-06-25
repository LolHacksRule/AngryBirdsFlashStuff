package §_-QI§
{
   import §_-TG§.§_-L8§;
   import §_-lt§.§_-wS§;
   
   public class §_-KZ§ extends §_-wS§
   {
      
      public static const §_-0Aa§:int = 5;
      
      private static var §_-5G§:§_-wS§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-0Aa§ = 5;
         }
         do
         {
            §_-5G§ = new §_-KZ§(0,0,§_-L8§.§_-qf§,§_-L8§.§_-tu§,§_-L8§.§_-Qv§,§_-L8§.§_-0-S§,§_-0Aa§);
         }
         while(!_loc1_);
         
      }
      
      public function §_-KZ§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §_-wS§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§_-wS§ = null;
         §§push(param1);
         if(_loc7_ || param3)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || §_-KZ§)
            {
               §§push(§_-0Aa§);
               if(!_loc6_)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr75:
                     §§push(0);
                     if(_loc7_ || param1)
                     {
                        addr83:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr89:
                  switch(§§pop())
                  {
                     case 0:
                        _loc4_ = §_-5G§;
                        return new §_-wS§(param2,param3,_loc4_.§_-0EY§,_loc4_.push,_loc4_.§_-Lf§,_loc4_.damage,param1);
                     default:
                        return §_-wS§.createExplosion(param1,param2,param3);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr75);
         }
         §§goto(addr89);
      }
   }
}
