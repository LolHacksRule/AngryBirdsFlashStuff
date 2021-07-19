package §7!a§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §;G§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §#t§:int = 0;
      
      public static const §`!L§:int = 1;
      
      public static const §]?§:int = 2;
      
      public static const §!!G§:String = "SWFWheel.join";
      
      public static const §`!U§:String = "SWFWheel.getState";
      
      private static var §0x§:Stage;
      
      private static var §"m§:int;
      
      private static var §`c§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §#t§ = 0;
               loop1:
               while(true)
               {
                  §`!L§ = 1;
                  while(true)
                  {
                     §]?§ = 2;
                     while(!_loc2_)
                     {
                        continue loop1;
                        loop5:
                        while(_loc1_ || _loc2_)
                        {
                           while(true)
                           {
                              §`c§ = true;
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop5;
                              }
                              addr39:
                              if(!(_loc2_ && §;G§))
                              {
                                 continue loop0;
                              }
                              addr80:
                              while(true)
                              {
                                 §`!U§ = "SWFWheel.getState";
                                 continue loop5;
                                 §§goto(addr39);
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §;G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(available);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    return;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§+y§);
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop0;
                                    }
                                    addr175:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              addr135:
                              while(true)
                              {
                              }
                              addr135:
                           }
                           loop5:
                           while(true)
                           {
                              §0x§ = param1;
                              loop6:
                              while(true)
                              {
                                 ExternalInterface.call(§!!G§,ExternalInterface.objectID);
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                    while(!_loc3_)
                                    {
                                       §"m§ = ExternalInterface.call(§`!U§,ExternalInterface.objectID);
                                       loop9:
                                       for(; !(_loc3_ && §;G§); while(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr23);
                                       })
                                       {
                                          if(§"m§ == §#t§)
                                          {
                                             if(_loc3_ && §;G§)
                                             {
                                                continue;
                                             }
                                             if(_loc2_ || _loc3_)
                                             {
                                                break loop5;
                                             }
                                             §§goto(addr135);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop9;
                                             }
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             §§goto(addr98);
                                             addr23:
                                          }
                                       }
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        while(!(_loc2_ || param1));
                        
                        return;
                     }
                     return;
                  }
                  addr155:
               }
               §§goto(addr175);
            }
         }
         §§goto(addr135);
      }
      
      public static function get §+y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§0x§ == null);
         if(_loc1_ || §;G§)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc3_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc3_ && _loc1_))
                        {
                           return §§pop().§§slot[1];
                        }
                        addr69:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr63:
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     try
                     {
                        addr62:
                        §§goto(addr63);
                     }
                     catch(e:Error)
                     {
                     }
                     addr94:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr94);
               }
               §§goto(addr62);
            }
         }
         §§goto(addr69);
      }
      
      public static function get §=M§() : int
      {
         return §"m§;
      }
      
      public static function get §&![§() : Boolean
      {
         return §`c§;
      }
      
      public static function set §&![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §`c§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_ || param1)
         {
            §§push(§"m§);
            loop0:
            while(true)
            {
               §§push(§#t§);
               addr93:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr94:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`c§;
      }
   }
}
