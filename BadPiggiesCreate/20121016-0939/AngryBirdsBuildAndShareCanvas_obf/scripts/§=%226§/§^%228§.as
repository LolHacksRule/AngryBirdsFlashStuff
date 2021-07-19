package §="6§
{
   import §"v§.§]!B§;
   
   public class §^"8§
   {
      
      private static var §;!=§:§]!B§ = null;
      
      private static var §=$§:XML;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;!=§ = null;
         }
      }
      
      public function §^"8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §5z§(param1:§]!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §;!=§ = param1;
         }
      }
      
      public static function get §7K§() : §]!B§
      {
         return §;!=§;
      }
      
      public static function set §7K§(param1:§]!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §;!=§ = param1;
         }
      }
      
      public static function get §2!b§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§;!=§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() == null);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr43:
                           §§pop();
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§;!=§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr69:
                                 §§push(§§pop().§5=§);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() == null);
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr82);
                                 }
                              }
                           }
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr82);
                  }
                  addr82:
                  if(!§§pop())
                  {
                     addr85:
                     §§push(§;!=§.§5=§.§;!^§);
                     if(!(_loc1_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     return "";
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr69);
         }
         §§goto(addr85);
      }
      
      public static function §=Z§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §@!k§ = param1;
         }
      }
      
      public static function §8!z§() : §]!B§
      {
         return §]!B§.§+0§(§@!k§["level"].toString());
      }
      
      public static function get §@!k§() : XML
      {
         return §=$§;
      }
      
      public static function set §@!k§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=$§ = param1;
         }
      }
   }
}
