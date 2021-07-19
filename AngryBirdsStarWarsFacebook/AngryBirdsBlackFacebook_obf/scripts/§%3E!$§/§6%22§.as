package §>!$§
{
   public final class §6"§
   {
       
      
      public function §6"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §^p§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         var _loc2_:* = param1;
         if(!(_loc4_ && param1))
         {
            if("on" === _loc2_)
            {
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     addr122:
                  }
               }
               else
               {
                  addr81:
                  §§push(1);
                  if(!(_loc3_ || §6"§))
                  {
                     addr113:
                  }
               }
            }
            else
            {
               if("yes" === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr81);
                  }
               }
               else if("true" === _loc2_)
               {
                  if(_loc3_ || §6"§)
                  {
                     addr110:
                     §§push(2);
                     if(_loc3_)
                     {
                        §§goto(addr113);
                     }
                  }
                  else
                  {
                     addr133:
                     §§push(4);
                     if(_loc3_ || _loc3_)
                     {
                        addr141:
                     }
                  }
                  §§goto(addr201);
               }
               else if("1" === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(3);
                     if(_loc3_)
                     {
                        §§goto(addr122);
                     }
                     else
                     {
                        §§goto(addr141);
                     }
                  }
                  else
                  {
                     addr166:
                     §§push(6);
                     if(_loc3_ || param1)
                     {
                     }
                     §§goto(addr201);
                  }
               }
               else if("off" === _loc2_)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr133);
                  }
                  else
                  {
                     §§goto(addr166);
                  }
               }
               else
               {
                  if("no" === _loc2_)
                  {
                     if(_loc3_)
                     {
                        §§push(5);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                  }
                  else if("false" === _loc2_)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr166);
                     }
                  }
                  else if("0" !== _loc2_)
                  {
                     addr201:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                           break;
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        default:
                           §§push(true);
                           §§push(false);
                           if(_loc3_ || §6"§)
                           {
                              return §§pop();
                           }
                           break;
                     }
                     return §§pop();
                     §§push(8);
                  }
                  §§goto(addr201);
               }
               §§goto(addr201);
               if(!(_loc4_ && param1))
               {
                  §§goto(addr196);
               }
            }
            §§goto(addr201);
         }
         §§goto(addr110);
      }
      
      public static function §6""§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               while(§§pop().charAt(param1.length - 1) == " ")
               {
                  §§push(param1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop().substr(0,param1.length - 1));
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr50);
                     continue;
                  }
                  addr50:
                  param1 = §§pop();
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return param1;
            }
            break;
         }
         return §§pop();
      }
      
      public static function §@!+§(param1:String) : String
      {
         return §[!0§(§>!T§(param1));
      }
      
      public static function §[!0§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               while(§§pop().charAt(param1.length - 1) == " ")
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop().substr(0,param1.length - 1));
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr44);
                     continue;
                  }
                  addr44:
                  param1 = §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return param1;
            }
            break;
         }
         return §§pop();
      }
      
      public static function §>!T§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               while(true)
               {
                  §§push(0);
                  while(true)
                  {
                     if(§§pop().charAt(§§pop()) != " ")
                     {
                        addr74:
                        §§push(param1);
                        break loop0;
                     }
                     §§push(param1);
                     if(!(_loc3_ || §6"§))
                     {
                        break;
                     }
                     §§push(1);
                     if(_loc3_)
                     {
                        §§push(§§pop().substr(§§pop()));
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            break;
         }
         return §§pop();
      }
      
      public static function §2!7§(param1:String) : String
      {
         return §[!0§(param1.replace(/^([\s|\t|\n]+)?(.*)([\s|\t|\n]+)?$/gm,"$2"));
      }
      
      public static function §'A§(param1:String) : String
      {
         return param1.charAt(0).toUpperCase() + param1.toLowerCase().substr(1);
      }
      
      public static function §;d§(param1:String, param2:String, param3:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(param3);
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr79);
         }
         addr49:
         §§push(param3);
         if(_loc4_ || §6"§)
         {
            §§push(§§pop().split(param1).join(param2));
            if(!(_loc5_ && §6"§))
            {
               addr79:
               param3 = §§pop();
               addr80:
               return param3;
            }
         }
      }
      
      public static function §="%§(param1:String, param2:String) : Boolean
      {
         return param1.toLowerCase() == param2.toLowerCase();
      }
      
      public static function §-!"§(param1:Object, param2:int = 2) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:String = String(param1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || §6"§)
            {
               while(§§pop().length < param2)
               {
                  §§push("0" + _loc3_);
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
               }
               addr68:
               return _loc3_;
            }
            break;
         }
         return §§pop();
      }
   }
}
