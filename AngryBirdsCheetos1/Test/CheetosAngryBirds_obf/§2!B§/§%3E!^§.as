package §2!B§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §>!^§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §]r§:int = 0;
      
      public static const §?!6§:int = 1;
      
      public static const §3!i§:int = 2;
      
      public static const §;z§:String = "SWFWheel.join";
      
      public static const §'$§:String = "SWFWheel.getState";
      
      private static var §"!6§:Stage;
      
      private static var §^!;§:int;
      
      private static var §2!Y§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §]r§ = 0;
               while(true)
               {
                  §?!6§ = 1;
                  loop2:
                  while(true)
                  {
                     §3!i§ = 2;
                     loop3:
                     while(true)
                     {
                        §;z§ = "SWFWheel.join";
                        while(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           while(!(_loc2_ && _loc1_))
                           {
                              continue loop3;
                              §2!Y§ = true;
                              if(_loc1_)
                              {
                                 return;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §'$§ = "SWFWheel.getState";
            §§goto(addr34);
         }
      }
      
      public function §>!^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §,a§(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(available);
            if(_loc2_ || §>!^§)
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
                        addr191:
                        while(true)
                        {
                           §§push(isReady);
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc2_)
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
                     addr190:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                           {
                              loop3:
                              while(true)
                              {
                                 §"!6§ = param1;
                                 loop4:
                                 while(true)
                                 {
                                    ExternalInterface.call(§;z§,ExternalInterface.objectID);
                                    while(!(_loc3_ && §>!^§))
                                    {
                                       if(_loc3_ && §>!^§)
                                       {
                                          return;
                                       }
                                       addr167:
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       loop6:
                                       for(; _loc2_ || _loc2_; if(!(_loc3_ && §>!^§))
                                       {
                                          return;
                                       })
                                       {
                                          §^!;§ = ExternalInterface.call(§'$§,ExternalInterface.objectID);
                                          loop7:
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(§^!;§ == §]r§)
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop6;
                                                   }
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            break loop2;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr142:
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             return;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr142);
                        }
                        return;
                     }
                     §§goto(addr167);
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr97);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§"!6§ == null);
         if(_loc2_ || _loc2_)
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && §>!^§))
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc3_)
                     {
                        addr40:
                        §§push(§§newactivation());
                        if(_loc4_ || §>!^§)
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
               §§goto(addr40);
            }
         }
         §§goto(addr74);
      }
      
      public static function get §`!J§() : int
      {
         return §^!;§;
      }
      
      public static function get §0!f§() : Boolean
      {
         return §2!Y§;
      }
      
      public static function set §0!f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §2!Y§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_ || param3)
         {
            §§push(§^!;§);
            loop0:
            while(true)
            {
               §§push(§]r§);
               addr103:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr104);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §2!Y§;
      }
   }
}
