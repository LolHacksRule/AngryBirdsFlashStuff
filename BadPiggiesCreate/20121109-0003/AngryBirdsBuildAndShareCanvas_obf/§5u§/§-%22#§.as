package §5u§
{
   import §<i§.§-"?§;
   
   public class §-"#§
   {
      
      private static var § "1§:§-"?§ = null;
      
      private static var §%"<§:XML;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § "1§ = null;
         }
      }
      
      public function §-"#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §-!Y§(param1:§-"?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            § "1§ = param1;
         }
      }
      
      public static function get §3"=§() : §-"?§
      {
         return § "1§;
      }
      
      public static function set §3"=§(param1:§-"?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            § "1§ = param1;
         }
      }
      
      public static function get §!#§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§ "1§);
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(_loc2_ || _loc1_)
                  {
                     addr49:
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(!_loc1_)
                           {
                              §§push(§ "1§);
                              if(_loc2_)
                              {
                                 addr59:
                                 §§push(§§pop().§-C§);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() == null);
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr72);
                                 }
                              }
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr72);
                     }
                  }
                  addr72:
                  if(!§§pop())
                  {
                     addr85:
                     §§push(§ "1§.§-C§.§%!d§);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     return "";
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr59);
         }
         §§goto(addr85);
      }
      
      public static function §<!4§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §0o§ = param1;
         }
      }
      
      public static function §%=§() : §-"?§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(_loc2_)
         {
            if(§0o§["level"])
            {
               _loc1_ = §0o§["level"].toString();
               return §-"?§.§ !N§(§0o§.toString());
            }
            else
            {
               addr22:
               §§push(§-"?§.§ !N§(§0o§["level"].toString()));
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr22);
      }
      
      public static function get §0o§() : XML
      {
         return §%"<§;
      }
      
      public static function set §0o§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §%"<§ = param1;
         }
      }
   }
}
