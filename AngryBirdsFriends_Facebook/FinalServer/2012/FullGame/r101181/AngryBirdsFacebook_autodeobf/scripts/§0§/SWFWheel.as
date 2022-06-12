package §0§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class SWFWheel
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §-E§:int = 0;
      
      public static const §6!`§:int = 1;
      
      public static const §%!H§:int = 2;
      
      public static const §%B§:String = "SWFWheel.join";
      
      public static const §-!f§:String = "SWFWheel.getState";
      
      private static var §'![§:Stage;
      
      private static var §#!E§:int;
      
      private static var §2Z§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.5";
            while(true)
            {
               §-E§ = 0;
               addr90:
               while(true)
               {
                  §6!`§ = 1;
                  while(true)
                  {
                     §%!H§ = 2;
                     addr78:
                     while(!_loc1_)
                     {
                     }
                  }
               }
            }
            addr94:
         }
         while(true)
         {
            §%B§ = "SWFWheel.join";
            while(true)
            {
               if(!_loc1_)
               {
                  §-!f§ = "SWFWheel.getState";
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr94);
                  }
               }
               break;
               if(_loc1_ && SWFWheel)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  return;
               }
               §§goto(addr78);
            }
            §§goto(addr90);
         }
      }
      
      public function SWFWheel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(available);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr167:
                        while(true)
                        {
                           §§push(isReady);
                           if(_loc3_ || SWFWheel)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(!§§pop())
                  {
                     loop5:
                     while(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                     {
                        loop6:
                        while(true)
                        {
                           §'![§ = param1;
                           loop7:
                           while(true)
                           {
                              ExternalInterface.call(§%B§,ExternalInterface.objectID);
                              while(true)
                              {
                                 ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                 loop9:
                                 while(!_loc2_)
                                 {
                                    §#!E§ = ExternalInterface.call(§-!f§,ExternalInterface.objectID);
                                    loop10:
                                    for(; §#!E§ == §-E§; if(!(_loc2_ && param1))
                                    {
                                       continue loop9;
                                    })
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       addr81:
                                       while(true)
                                       {
                                          if(_loc3_ || SWFWheel)
                                          {
                                             break loop10;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                       if(_loc3_ || SWFWheel)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr81);
                                    }
                                    continue loop7;
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop5;
                                    }
                                    if(_loc3_)
                                    {
                                       return;
                                    }
                                    §§goto(addr167);
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        return;
                     }
                     break;
                  }
               }
            }
         }
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§'![§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_ || _loc1_)
         {
            §§push(false);
            if(!(_loc4_ && SWFWheel))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(_loc3_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc3_))
                        {
                           return §§pop().§§slot[1];
                        }
                        addr88:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr82:
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     try
                     {
                        addr81:
                        §§goto(addr82);
                     }
                     catch(e:Error)
                     {
                     }
                     addr103:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr103);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr88);
      }
      
      public static function get state() : int
      {
         return §#!E§;
      }
      
      public static function get §9!K§() : Boolean
      {
         return §2Z§;
      }
      
      public static function set §9!K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §2Z§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_)
         {
            §§push(§#!E§);
            loop0:
            while(true)
            {
               §§push(§-E§);
               addr78:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr79:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr80);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §2Z§;
      }
   }
}
