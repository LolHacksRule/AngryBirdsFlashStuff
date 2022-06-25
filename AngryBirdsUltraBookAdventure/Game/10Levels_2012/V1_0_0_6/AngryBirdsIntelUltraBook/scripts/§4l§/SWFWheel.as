package §4l§
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
      
      public static const § set§:int = 0;
      
      public static const §`!E§:int = 1;
      
      public static const §&s§:int = 2;
      
      public static const §^X§:String = "SWFWheel.join";
      
      public static const §>i§:String = "SWFWheel.getState";
      
      private static var §<§:Stage;
      
      private static var §`!y§:int;
      
      private static var §<o§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               § set§ = 0;
               loop1:
               while(true)
               {
                  §`!E§ = 1;
                  while(true)
                  {
                     §&s§ = 2;
                     continue loop1;
                     addr71:
                     if(_loc2_ || _loc2_)
                     {
                        §>i§ = "SWFWheel.getState";
                        do
                        {
                           §<o§ = true;
                        }
                        while(!_loc2_);
                        
                        addr88:
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        addr64:
                        while(!(_loc1_ && _loc1_))
                        {
                           §§goto(addr71);
                           §§goto(addr88);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function SWFWheel()
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
                        addr177:
                        do
                        {
                           §§push(isReady);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           addr161:
                        }
                        while(_loc3_ || _loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(!§§pop())
                  {
                     loop5:
                     do
                     {
                        if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                        {
                           continue;
                        }
                        loop6:
                        while(true)
                        {
                           §<§ = param1;
                           loop7:
                           while(true)
                           {
                              ExternalInterface.call(§^X§,ExternalInterface.objectID);
                              while(true)
                              {
                                 ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                 loop9:
                                 for(; _loc3_ || SWFWheel; if(!(_loc2_ && _loc2_))
                                 {
                                    return;
                                 })
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop7;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §`!y§ = ExternalInterface.call(§>i§,ExternalInterface.objectID);
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(§`!y§ == § set§)
                                             {
                                                if(!(_loc2_ && SWFWheel))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                }
                                                addr60:
                                             }
                                             while(true)
                                             {
                                                ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr60);
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop9;
                                             }
                                             continue;
                                          }
                                          §§goto(addr177);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(!(_loc3_ || SWFWheel));
                     
                     if(_loc3_)
                     {
                        return;
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§<§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(false);
            if(_loc3_ || SWFWheel)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           addr73:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr88:
                           return f;
                           addr67:
                        }
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
                        §§goto(addr88);
                        §§push(§§newactivation());
                     }
                     e = §§pop();
                     §§goto(addr88);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr73);
         }
         addr62:
         return §§pop().§§slot[1];
      }
      
      public static function get state() : int
      {
         return §`!y§;
      }
      
      public static function get §5!d§() : Boolean
      {
         return §<o§;
      }
      
      public static function set §5!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §<o§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_)
         {
            §§push(§`!y§);
            loop0:
            while(true)
            {
               §§push(§ set§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§`!y§);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§`!E§);
                     if(!_loc9_)
                     {
                        continue loop1;
                     }
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr65:
                              loop7:
                              while(true)
                              {
                                 §§push(§<o§);
                                 if(_loc9_)
                                 {
                                    if(!(_loc9_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       return;
                                    }
                                    if(_loc9_)
                                    {
                                       if(_loc9_ || param2)
                                       {
                                          if(_loc10_)
                                          {
                                             break loop1;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop7;
                                 }
                                 var _loc5_:Array;
                                 var _loc6_:DisplayObject = (_loc5_ = §<§.getObjectsUnderPoint(new Point(§<§.mouseX,§<§.mouseY))).pop() as DisplayObject;
                                 addr113:
                                 if(_loc6_ != null)
                                 {
                                    if(!(_loc7_ = _loc6_ as InteractiveObject))
                                    {
                                       _loc6_ = _loc6_.parent;
                                       §§goto(addr113);
                                    }
                                    if(!_loc10_)
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr118);
                                 }
                                 addr116:
                                 if(!_loc7_)
                                 {
                                    addr118:
                                    _loc7_ = §<§;
                                 }
                                 var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                                 if(_loc9_ || param3)
                                 {
                                    _loc7_.dispatchEvent(_loc8_);
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr36);
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §<o§;
      }
   }
}
