package §&!9§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class § T§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §7K§:int = 0;
      
      public static const §?C§:int = 1;
      
      public static const §%!V§:int = 2;
      
      public static const § k§:String = "SWFWheel.join";
      
      public static const §<! §:String = "SWFWheel.getState";
      
      private static var §9!%§:Stage;
      
      private static var §7!Z§:int;
      
      private static var § W§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §7K§ = 0;
               loop1:
               while(true)
               {
                  §?C§ = 1;
                  while(true)
                  {
                     §%!V§ = 2;
                     while(!_loc1_)
                     {
                        § k§ = "SWFWheel.join";
                        while(_loc2_ || _loc1_)
                        {
                           §<! § = "SWFWheel.getState";
                           loop5:
                           while(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    § W§ = true;
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function § T§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(available);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr161:
                        while(true)
                        {
                           §§push(isReady);
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr160:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                        {
                           loop3:
                           while(true)
                           {
                              §9!%§ = param1;
                              loop4:
                              while(!_loc3_)
                              {
                                 ExternalInterface.call(§ k§,ExternalInterface.objectID);
                                 loop5:
                                 while(true)
                                 {
                                    ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                    do
                                    {
                                       §7!Z§ = ExternalInterface.call(§<! §,ExternalInterface.objectID);
                                       loop7:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(§7!Z§ == §7K§)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      break loop7;
                                                   }
                                                   continue loop7;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc3_ && param1))
                                                {
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr161);
                                       }
                                       return;
                                    }
                                    while(_loc3_ && param1);
                                    
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       break loop1;
                                    }
                                    addr153:
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  return;
               }
            }
            §§goto(addr160);
         }
         §§goto(addr153);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§9!%§ == null);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(false);
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && § T§))
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        addr60:
                        §§push(§§newactivation());
                        if(_loc4_ || _loc3_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr84:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr78:
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     try
                     {
                        §§goto(addr78);
                     }
                     catch(e:Error)
                     {
                     }
                     addr109:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr109);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr84);
      }
      
      public static function get §[!,§() : int
      {
         return §7!Z§;
      }
      
      public static function get §7!#§() : Boolean
      {
         return § W§;
      }
      
      public static function set §7!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            § W§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(!_loc10_)
         {
            §§push(§7!Z§);
            loop0:
            while(true)
            {
               §§push(§7K§);
               addr93:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr94);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return § W§;
      }
   }
}
