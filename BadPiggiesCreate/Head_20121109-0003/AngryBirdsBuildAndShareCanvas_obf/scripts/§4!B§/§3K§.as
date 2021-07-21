package §4!B§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §3K§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §2!y§:int = 0;
      
      public static const §?",§:int = 1;
      
      public static const §+!j§:int = 2;
      
      public static const §;!i§:String = "SWFWheel.join";
      
      public static const §5!X§:String = "SWFWheel.getState";
      
      private static var § 5§:Stage;
      
      private static var §"P§:int;
      
      private static var §'?§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §2!y§ = 0;
               while(true)
               {
                  §?",§ = 1;
                  while(_loc1_ || §3K§)
                  {
                     continue loop0;
                     addr58:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §5!X§ = "SWFWheel.getState";
                        while(!_loc2_)
                        {
                           §'?§ = true;
                           if(_loc1_)
                           {
                              return;
                           }
                        }
                        addr56:
                        addr70:
                        while(_loc1_)
                        {
                           §§goto(addr58);
                        }
                        while(true)
                        {
                           §;!i§ = "SWFWheel.join";
                           §§goto(addr56);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §3K§()
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
            while(true)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop1:
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
                                    § 5§ = param1;
                                    loop4:
                                    while(true)
                                    {
                                       ExternalInterface.call(§;!i§,ExternalInterface.objectID);
                                       loop5:
                                       while(true)
                                       {
                                          ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                          while(!_loc3_)
                                          {
                                             if(_loc2_ || §3K§)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   return;
                                                }
                                                addr147:
                                                §"P§ = ExternalInterface.call(§5!X§,ExternalInterface.objectID);
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(§"P§ == §2!y§)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         addr165:
                                                         while(true)
                                                         {
                                                            §§push(isReady);
                                                            if(!(_loc3_ && §3K§))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr166);
                                                         }
                                                         addr166:
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                if(!_loc3_)
                                                {
                                                   return;
                                                }
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr147);
                     }
                     addr145:
                  }
               }
               §§goto(addr165);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr145);
            }
         }
         §§goto(addr49);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§ 5§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§push(false);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || §3K§)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr60:
                        §§push(§§newactivation());
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr68);
                        }
                        else
                        {
                           addr79:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr73:
                        }
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     try
                     {
                        §§goto(addr73);
                     }
                     catch(e:Error)
                     {
                     }
                     addr104:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr104);
               }
               §§goto(addr60);
            }
            §§goto(addr79);
         }
         addr68:
         return §§pop().§§slot[1];
      }
      
      public static function get §;!1§() : int
      {
         return §"P§;
      }
      
      public static function get §-$§() : Boolean
      {
         return §'?§;
      }
      
      public static function set §-$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §3K§)
         {
            §'?§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(_loc10_)
         {
            §§push(§"P§);
            loop0:
            while(true)
            {
               §§push(§2!y§);
               addr99:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr100:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr96);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §'?§;
      }
   }
}
