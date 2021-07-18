package §&!J§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §%!Y§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §,!J§:int = 0;
      
      public static const §1!B§:int = 1;
      
      public static const §2z§:int = 2;
      
      public static const §;U§:String = "SWFWheel.join";
      
      public static const §0J§:String = "SWFWheel.getState";
      
      private static var §&x§:Stage;
      
      private static var §@3§:int;
      
      private static var §+6§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §,!J§ = 0;
               loop1:
               while(true)
               {
                  §1!B§ = 1;
                  while(true)
                  {
                     §2z§ = 2;
                     while(_loc1_)
                     {
                        continue loop0;
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr38:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §;U§ = "SWFWheel.join";
            while(true)
            {
               §0J§ = "SWFWheel.getState";
               while(_loc1_)
               {
                  §+6§ = true;
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §%!Y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(available);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && §%!Y§))
               {
                  addr184:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(isReady);
                           if(!(_loc2_ && §%!Y§))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ && param1)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                                 {
                                    if(!(_loc3_ || §%!Y§))
                                    {
                                       do
                                       {
                                          break loop2;
                                       }
                                       while(!(_loc3_ || _loc2_));
                                       
                                    }
                                    if(_loc3_)
                                    {
                                       return;
                                    }
                                    continue;
                                    return;
                                 }
                                 while(true)
                                 {
                                    §&x§ = param1;
                                    while(true)
                                    {
                                       ExternalInterface.call(§;U§,ExternalInterface.objectID);
                                       while(!(_loc2_ && param1))
                                       {
                                          ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                          loop6:
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             §@3§ = ExternalInterface.call(§0J§,ExternalInterface.objectID);
                                             while(true)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(§@3§ == §,!J§)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            addr53:
                                                            break;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr45);
                                                      }
                                                      break;
                                                   }
                                                   addr154:
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                             if(_loc2_)
                                             {
                                                §§goto(addr53);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                        }
                        return;
                     }
                     addr186:
                  }
                  §§goto(addr152);
               }
               §§goto(addr186);
            }
            §§goto(addr184);
         }
         §§goto(addr31);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§&x§ == null);
         if(_loc1_)
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
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  if(!ExternalInterface.available)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr55:
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr74:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr68:
                     }
                     §§goto(addr99);
                  }
                  else
                  {
                     try
                     {
                        §§goto(addr68);
                     }
                     catch(e:Error)
                     {
                     }
                     addr99:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr99);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr74);
      }
      
      public static function get §-!$§() : int
      {
         return §@3§;
      }
      
      public static function get §%o§() : Boolean
      {
         return §+6§;
      }
      
      public static function set §%o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+6§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(!_loc10_)
         {
            §§push(§@3§);
            loop0:
            while(true)
            {
               §§push(§,!J§);
               addr76:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  addr90:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §+6§;
      }
   }
}
