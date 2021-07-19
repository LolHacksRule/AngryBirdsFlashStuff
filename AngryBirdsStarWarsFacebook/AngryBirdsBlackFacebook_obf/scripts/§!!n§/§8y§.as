package §!!n§
{
   import §+!4§.§&!"§;
   import §,"G§.§,!&§;
   import §3"H§.§"w§;
   import §6=§.§+!,§;
   import §^V§.Logging;
   import com.furusystems.dconsole2.DConsole;
   
   public class §8y§ implements §,!&§
   {
       
      
      public function §8y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               DConsole.§0#Q§("setLoggingLevel",this.setLoggingLevel,"Logging","Set the current logging level (ERROR,FATAL,INFO,WARN,DEBUG)");
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     DConsole.§0#Q§("getLoggingLevel",this.getLoggingLevel,"Logging","Print the current logging level");
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function getLoggingLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(DConsole);
            §§push("Current logging level is \'" + §"w§.§[!3§(Logging.§8N§()));
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + "\'");
            }
            §§pop().§"#L§(§§pop());
         }
      }
      
      private function setLoggingLevel(param1:String = "ALL") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            Logging.§>!C§(§"w§.§3#9§(param1));
         }
         do
         {
            this.getLoggingLevel();
         }
         while(_loc3_);
         
      }
      
      public function §""W§(param1:Object, param2:String, param3:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(String(param1) == "Logging")
            {
               addr29:
               §§push(DConsole.§["w§);
               if(!_loc6_)
               {
                  param1 = §§pop();
                  addr35:
                  §§push(§+!,§.DEBUG);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop());
                  }
               }
               var _loc4_:* = §§pop();
               §§push(§"w§.§3#9§(param2));
               if(!_loc6_)
               {
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && param1))
                  {
                     §§push(§&!"§.ERROR);
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc5_);
                        if(_loc7_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_)
                              {
                                 §§push(0);
                                 if(!(_loc7_ || param1))
                                 {
                                    addr291:
                                 }
                              }
                              else
                              {
                                 addr298:
                                 §§push(4);
                                 if(!_loc6_)
                                 {
                                    addr301:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§&!"§.FATAL);
                              if(_loc7_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || param1)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          §§push(1);
                                          if(_loc7_)
                                          {
                                             addr307:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr157:
                                                   _loc4_ = §+!,§.ERROR;
                                                   addr156:
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                case 1:
                                                   addr136:
                                                   §§push(§+!,§.FATAL);
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   if(_loc7_ || this)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr156);
                                                   break;
                                                case 2:
                                                   addr119:
                                                   _loc4_ = §+!,§.INFO;
                                                   addr118:
                                                   if(!_loc6_)
                                                   {
                                                      addr75:
                                                      break;
                                                   }
                                                   break;
                                                case 3:
                                                   §§push(§+!,§.§',§);
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_ || param3)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   addr90:
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc6_ && this))
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr119);
                                                case 4:
                                                default:
                                                   §§push(§+!,§.DEBUG);
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr90);
                                                   }
                                                   §§goto(addr75);
                                             }
                                             DConsole.§""W§(param3,_loc4_,String(param1));
                                             return;
                                             addr306:
                                          }
                                          §§goto(addr306);
                                       }
                                       else
                                       {
                                          addr288:
                                          §§push(3);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr291);
                                          }
                                          else
                                          {
                                             addr296:
                                             if(§§pop() === _loc5_)
                                             {
                                                §§goto(addr298);
                                             }
                                             else
                                             {
                                                §§goto(addr306);
                                                §§push(5);
                                             }
                                             §§goto(addr306);
                                          }
                                       }
                                       §§goto(addr306);
                                    }
                                    else
                                    {
                                       §§push(§&!"§.INFO);
                                       if(_loc7_ || this)
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(2);
                                                   if(_loc7_ || this)
                                                   {
                                                      addr267:
                                                   }
                                                   §§goto(addr306);
                                                }
                                                else
                                                {
                                                   §§goto(addr288);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§&!"§.WARN);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      else
                                                      {
                                                         §§push(§&!"§.DEBUG);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr296);
                                                         }
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                }
                                                §§goto(addr296);
                                             }
                                          }
                                          §§goto(addr296);
                                       }
                                    }
                                    §§goto(addr306);
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr267);
                           }
                           §§goto(addr306);
                        }
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr298);
               }
               §§goto(addr307);
            }
            §§goto(addr35);
         }
         §§goto(addr29);
      }
   }
}
