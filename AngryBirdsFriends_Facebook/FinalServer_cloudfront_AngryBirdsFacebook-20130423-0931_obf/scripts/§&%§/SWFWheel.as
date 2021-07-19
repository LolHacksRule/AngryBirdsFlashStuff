package §&%§
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
      
      public static const §%p§:int = 0;
      
      public static const §7!x§:int = 1;
      
      public static const §]!j§:int = 2;
      
      public static const §`!3§:String = "SWFWheel.join";
      
      public static const §"!t§:String = "SWFWheel.getState";
      
      private static var §,!>§:Stage;
      
      private static var §7v§:int;
      
      private static var §5M§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && SWFWheel))
         {
            VERSION = "1.5";
         }
         loop0:
         while(true)
         {
            §%p§ = 0;
            loop1:
            do
            {
               §7!x§ = 1;
               while(_loc1_)
               {
                  §]!j§ = 2;
                  loop3:
                  while(_loc1_ || SWFWheel)
                  {
                     §`!3§ = "SWFWheel.join";
                     loop4:
                     do
                     {
                        §"!t§ = "SWFWheel.getState";
                        while(_loc1_)
                        {
                           §5M§ = true;
                           if(_loc1_ || _loc1_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     while(!(_loc1_ || SWFWheel));
                     
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc1_ || SWFWheel));
            
            return;
         }
      }
      
      public function SWFWheel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr166:
                        while(true)
                        {
                           §§push(isReady);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc3_ && _loc3_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                           {
                              loop6:
                              while(true)
                              {
                                 §,!>§ = param1;
                                 loop7:
                                 while(_loc2_ || _loc2_)
                                 {
                                    ExternalInterface.call(§`!3§,ExternalInterface.objectID);
                                    do
                                    {
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       do
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §7v§ = ExternalInterface.call(§"!t§,ExternalInterface.objectID);
                                             loop10:
                                             while(§7v§ != §%p§)
                                             {
                                                while(true)
                                                {
                                                   ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                   if(_loc2_ || SWFWheel)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      break loop10;
                                                   }
                                                   continue loop10;
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr65);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                   addr65:
                                                }
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                       }
                                       while(!(_loc2_ || SWFWheel));
                                       
                                    }
                                    while(_loc3_);
                                    
                                    return;
                                 }
                                 addr125:
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                           if(_loc2_)
                           {
                              return;
                           }
                           §§goto(addr166);
                        }
                     }
                     addr159:
                     return;
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§,!>§ == null);
         if(_loc2_ || SWFWheel)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(false);
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_ || _loc1_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc4_)
                     {
                        addr54:
                        §§push(§§newactivation());
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr72);
                        }
                        else
                        {
                           addr83:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr98:
                           return f;
                           addr77:
                        }
                     }
                     else
                     {
                        try
                        {
                           addr76:
                           §§goto(addr77);
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
                  §§goto(addr76);
               }
               §§goto(addr54);
            }
            §§goto(addr83);
         }
         addr72:
         return §§pop().§§slot[1];
      }
      
      public static function get state() : int
      {
         return §7v§;
      }
      
      public static function get §["&§() : Boolean
      {
         return §5M§;
      }
      
      public static function set §["&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5M§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(!_loc10_)
         {
            §§push(§7v§);
            loop0:
            while(true)
            {
               §§push(§%p§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§7v§);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§7!x§);
                     if(_loc10_ && SWFWheel)
                     {
                        continue loop1;
                     }
                     §§push(§§pop() == §§pop());
                     if(_loc9_ || param3)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr95:
                              while(true)
                              {
                                 §§push(§5M§);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc9_ || param3)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                           }
                           addr94:
                        }
                        for(; §§pop(); §§goto(addr95))
                        {
                           if(_loc10_ && SWFWheel)
                           {
                              if(_loc9_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           if(_loc9_)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 return;
                              }
                              break loop1;
                           }
                           addr100:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        var _loc5_:Array;
                        var _loc6_:DisplayObject = (_loc5_ = §,!>§.getObjectsUnderPoint(new Point(§,!>§.mouseX,§,!>§.mouseY))).pop() as DisplayObject;
                        addr138:
                        if(_loc6_ != null)
                        {
                           if(!(_loc7_ = _loc6_ as InteractiveObject))
                           {
                              _loc6_ = _loc6_.parent;
                              §§goto(addr138);
                           }
                           if(_loc9_ || param3)
                           {
                              §§goto(addr141);
                           }
                           §§goto(addr153);
                        }
                        addr141:
                        if(!_loc7_)
                        {
                           addr153:
                           _loc7_ = §,!>§;
                        }
                        var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                        if(_loc9_)
                        {
                           _loc7_.dispatchEvent(_loc8_);
                        }
                        return;
                     }
                     §§goto(addr94);
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr100);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §5M§;
      }
   }
}
