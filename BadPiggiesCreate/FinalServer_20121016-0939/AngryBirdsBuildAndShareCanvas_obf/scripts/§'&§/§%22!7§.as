package §'&§
{
   import §2p§.§'!B§;
   import §2p§.§+P§;
   import §2p§.§0L§;
   import §2p§.§1>§;
   
   public class §"!7§
   {
      
      private static var §6z§:Number = 30.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6z§ = 30;
         }
      }
      
      public function §"!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §'<§(param1:Number = 10.0, param2:Number = NaN) : §1>§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§findproperty(§+P§));
         §§push(param1);
         if(_loc3_)
         {
            if(isNaN(param2))
            {
               addr34:
               §§push(§6z§);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                  }
               }
               else
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(param2);
               if(_loc3_ || §"!7§)
               {
                  §§goto(addr59);
               }
            }
            return new §§pop().§+P§(§§pop(),§§pop());
         }
         §§goto(addr34);
      }
      
      public static function § >§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §1>§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(§0L§));
         §§push(param1);
         §§push(param2);
         if(!(_loc4_ && §"!7§))
         {
            if(isNaN(param3))
            {
               addr41:
               §§push(§6z§);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ && param1)
                  {
                  }
                  §§goto(addr72);
               }
               addr71:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param3);
               if(!(_loc4_ && param3))
               {
                  §§goto(addr71);
               }
            }
            addr72:
            return new §§pop().§0L§(§§pop(),§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public static function set §;N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §6z§ = param1;
         }
      }
      
      public static function get §;N§() : Number
      {
         return §6z§;
      }
      
      public static function §""§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §1>§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(§'!B§));
         §§push(param2);
         §§push(param1);
         if(!(_loc4_ && param2))
         {
            if(isNaN(param3))
            {
               addr41:
               §§push(§6z§);
               if(!(_loc4_ && param2))
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ && §"!7§)
                  {
                  }
                  §§goto(addr72);
               }
            }
            else
            {
               §§push(param3);
               if(_loc5_)
               {
                  §§goto(addr72);
               }
            }
            addr72:
            return new §§pop().§'!B§(§§pop(),§§pop(),Number(§§pop()));
         }
         §§goto(addr41);
      }
   }
}
