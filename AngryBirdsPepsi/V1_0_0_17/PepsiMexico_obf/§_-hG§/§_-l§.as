package §_-hG§
{
   import §_-5y§.§_-Bf§;
   import §_-5y§.§_-G1§;
   import §_-5y§.§_-II§;
   import §_-5y§.§_-sk§;
   
   public class §_-l§
   {
      
      private static var §_-ef§:Number = 30.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-ef§ = 30;
         }
      }
      
      public function §_-l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-PA§(param1:Number = 10.0, param2:Number = NaN) : §_-Bf§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§findproperty(§_-II§));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(isNaN(param2))
            {
               addr34:
               §§push(§_-ef§);
               if(_loc4_ || _loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                  }
               }
               else
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§goto(addr56);
               }
            }
            return new §§pop().§_-II§(§§pop(),§§pop());
         }
         §§goto(addr34);
      }
      
      public static function §_-Cp§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-Bf§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(§_-G1§));
         §§push(param1);
         §§push(param2);
         if(!_loc5_)
         {
            if(isNaN(param3))
            {
               addr22:
               §§push(§_-ef§);
               if(!(_loc5_ && §_-l§))
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ || §_-l§)
                  {
                  }
                  §§goto(addr62);
               }
               addr61:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param3);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr61);
               }
            }
            addr62:
            return new §§pop().§_-G1§(§§pop(),§§pop(),§§pop());
         }
         §§goto(addr22);
      }
      
      public static function set §_-BD§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-ef§ = param1;
         }
      }
      
      public static function get §_-BD§() : Number
      {
         return §_-ef§;
      }
      
      public static function §_-SA§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-Bf§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(§_-sk§));
         §§push(param2);
         §§push(param1);
         if(!(_loc5_ && param3))
         {
            if(isNaN(param3))
            {
               addr34:
               §§push(§_-ef§);
               if(_loc4_ || param1)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ || param2)
                  {
                  }
                  §§goto(addr67);
               }
            }
            else
            {
               §§push(param3);
               if(_loc4_ || §_-l§)
               {
                  §§goto(addr67);
               }
            }
            addr67:
            return new §§pop().§_-sk§(§§pop(),§§pop(),Number(§§pop()));
         }
         §§goto(addr34);
      }
   }
}
