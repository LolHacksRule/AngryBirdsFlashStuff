package § !v§
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
      
      public static const §9a§:int = 0;
      
      public static const §<" §:int = 1;
      
      public static const §#!F§:int = 2;
      
      public static const §`!p§:String = "SWFWheel.join";
      
      public static const §3!P§:String = "SWFWheel.getState";
      
      private static var §,X§:Stage;
      
      private static var §6u§:int;
      
      private static var §,!@§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §9a§ = 0;
               loop1:
               while(true)
               {
                  §<" § = 1;
                  addr94:
                  while(true)
                  {
                     §#!F§ = 2;
                     addr89:
                     while(true)
                     {
                        §`!p§ = "SWFWheel.join";
                        while(!_loc2_)
                        {
                           if(!(_loc2_ && SWFWheel))
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr58:
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §3!P§ = "SWFWheel.getState";
            for(; _loc1_; §,!@§ = true,if(_loc2_ && _loc2_)
            {
               continue;
            },§§goto(addr49))
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr94);
            }
            §§goto(addr89);
         }
         §§goto(addr58);
      }
      
      public function SWFWheel()
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
                  if(§§pop())
                  {
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
                                    §,X§ = param1;
                                    loop4:
                                    while(_loc2_ || SWFWheel)
                                    {
                                       ExternalInterface.call(§`!p§,ExternalInterface.objectID);
                                       loop5:
                                       do
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc3_)
                                          {
                                             ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                §6u§ = ExternalInterface.call(§3!P§,ExternalInterface.objectID);
                                                while(true)
                                                {
                                                   if(§6u§ == §9a§)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr23);
                                                }
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       while(_loc3_);
                                       
                                       return;
                                    }
                                    continue loop2;
                                 }
                              }
                              if(_loc2_ || SWFWheel)
                              {
                                 return;
                              }
                              addr175:
                              while(true)
                              {
                                 §§push(isReady);
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr176);
                              }
                              addr176:
                           }
                        }
                        addr167:
                        loop8:
                        while(_loc2_ || _loc3_)
                        {
                           while(true)
                           {
                              ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop8;
                           }
                           if(_loc2_)
                           {
                              return;
                           }
                           continue loop7;
                        }
                        return;
                     }
                     addr165:
                  }
               }
            }
            §§goto(addr175);
         }
         §§goto(addr58);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§,X§ == null);
         if(!_loc1_)
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(_loc4_ || SWFWheel)
                     {
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr79:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr94:
                        return f;
                        addr80:
                        addr73:
                     }
                     §§goto(addr80);
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
                     §§goto(addr94);
                     §§push(§§newactivation());
                  }
                  e = §§pop();
               }
               §§goto(addr94);
            }
         }
         §§goto(addr79);
      }
      
      public static function get state() : int
      {
         return §6u§;
      }
      
      public static function get §7!w§() : Boolean
      {
         return §,!@§;
      }
      
      public static function set §7!w§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,!@§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(_loc10_)
         {
            §§push(§6u§);
            loop0:
            while(true)
            {
               §§push(§9a§);
               addr89:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §,!@§;
      }
   }
}
