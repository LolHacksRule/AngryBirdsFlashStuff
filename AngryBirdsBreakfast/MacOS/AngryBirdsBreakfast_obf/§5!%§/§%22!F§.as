package §5!%§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §"!F§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §#!Z§:int = 0;
      
      public static const §4!,§:int = 1;
      
      public static const §7!t§:int = 2;
      
      public static const §?!$§:String = "SWFWheel.join";
      
      public static const §&S§:String = "SWFWheel.getState";
      
      private static var §7!h§:Stage;
      
      private static var §[!+§:int;
      
      private static var §`" §:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            VERSION = "1.5";
            while(true)
            {
               §#!Z§ = 0;
               loop1:
               while(true)
               {
                  §4!,§ = 1;
                  loop2:
                  while(true)
                  {
                     §7!t§ = 2;
                     while(true)
                     {
                        §?!$§ = "SWFWheel.join";
                        while(_loc2_)
                        {
                           continue loop1;
                           loop5:
                           while(!(_loc1_ && §"!F§))
                           {
                              while(true)
                              {
                                 §`" § = true;
                                 if(_loc2_ || §"!F§)
                                 {
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || §"!F§))
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr76);
      }
      
      public function §"!F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
            if(_loc2_ || _loc2_)
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
                     loop12:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           do
                           {
                              if(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §7!h§ = param1;
                                    loop5:
                                    while(true)
                                    {
                                       ExternalInterface.call(§?!$§,ExternalInterface.objectID);
                                       loop6:
                                       for(; _loc2_; while(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             §§goto(addr23);
                                          }
                                       })
                                       {
                                          ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                          loop7:
                                          do
                                          {
                                             §[!+§ = ExternalInterface.call(§&S§,ExternalInterface.objectID);
                                             while(true)
                                             {
                                                if(§[!+§ == §#!Z§)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                addr23:
                                                while(true)
                                                {
                                                   ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          while(!_loc2_);
                                          
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    return;
                                 }
                              }
                              return;
                           }
                           while(!_loc2_);
                           
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr64);
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(§;R§);
                                 if(!(_loc2_ || §"!F§))
                                 {
                                    continue loop12;
                                 }
                                 if(_loc2_ || §"!F§)
                                 {
                                    continue loop0;
                                 }
                                 addr175:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  addr150:
               }
               §§goto(addr175);
            }
         }
         addr64:
      }
      
      public static function get §;R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§7!h§ == null);
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
         if(_loc3_ || §"!F§)
         {
            §§push(false);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc4_ && §"!F§))
                     {
                        addr54:
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr73:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr98:
                        return f;
                        addr67:
                     }
                     else
                     {
                        try
                        {
                           addr66:
                           §§goto(addr67);
                        }
                        catch(e:Error)
                        {
                        }
                        §§goto(addr98);
                        §§push(§§newactivation());
                     }
                     e = §§pop();
                     §§goto(addr98);
                  }
                  §§goto(addr66);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr73);
      }
      
      public static function get §"!f§() : int
      {
         return §[!+§;
      }
      
      public static function get §,P§() : Boolean
      {
         return §`" §;
      }
      
      public static function set §,P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §`" § = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(!_loc9_)
         {
            §§push(§[!+§);
            loop0:
            while(true)
            {
               §§push(§#!Z§);
               addr94:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr95:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr48);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`" §;
      }
   }
}
