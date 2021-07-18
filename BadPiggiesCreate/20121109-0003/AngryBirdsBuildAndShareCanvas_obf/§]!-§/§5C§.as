package §]!-§
{
   import §0x§.§""4§;
   import §0x§.§#!c§;
   import §0x§.§,"<§;
   import §0x§.§?"3§;
   
   public class §5C§
   {
      
      private static var §5!E§:Number = 30.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5!E§ = 30;
         }
      }
      
      public function §5C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]!1§(param1:Number = 10.0, param2:Number = NaN) : §?"3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§findproperty(§#!c§));
         §§push(param1);
         if(_loc4_ || param2)
         {
            if(isNaN(param2))
            {
               addr40:
               §§push(§5!E§);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                  }
                  §§goto(addr61);
               }
               addr60:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param2);
               if(!_loc3_)
               {
                  §§goto(addr60);
               }
            }
            addr61:
            return new §§pop().§#!c§(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public static function §3Y§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §?"3§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(§,"<§));
         §§push(param1);
         §§push(param2);
         if(_loc5_)
         {
            if(isNaN(param3))
            {
               addr26:
               §§push(§5!E§);
               if(_loc5_ || param2)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_ || param1)
                  {
                  }
                  §§goto(addr72);
               }
            }
            else
            {
               §§push(param3);
               if(_loc5_ || §5C§)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr72:
            return new §§pop().§,"<§(§§pop(),§§pop(),§§pop());
         }
         §§goto(addr26);
      }
      
      public static function set §`"8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5!E§ = param1;
         }
      }
      
      public static function get §`"8§() : Number
      {
         return §5!E§;
      }
      
      public static function §?'§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §?"3§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(§""4§));
         §§push(param2);
         §§push(param1);
         if(_loc5_)
         {
            if(isNaN(param3))
            {
               addr36:
               §§push(§5!E§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                     addr56:
                     §§push(Number(§§pop()));
                  }
               }
            }
            else
            {
               §§push(param3);
               if(_loc5_)
               {
                  §§goto(addr56);
               }
            }
            return new §§pop().§""4§(§§pop(),§§pop(),§§pop());
         }
         §§goto(addr36);
      }
   }
}
