package §<p§
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
      
      public static const §0!'§:int = 0;
      
      public static const §;t§:int = 1;
      
      public static const §<b§:int = 2;
      
      public static const §'!%§:String = "SWFWheel.join";
      
      public static const §+'§:String = "SWFWheel.getState";
      
      private static var §7f§:Stage;
      
      private static var §``§:int;
      
      private static var §6T§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §;t§ = 1;
            §<b§ = 2;
            while(true)
            {
               §'!%§ = "SWFWheel.join";
               do
               {
                  §+'§ = "SWFWheel.getState";
               }
               while(_loc2_ && _loc2_);
               
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               §6T§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
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
                        addr148:
                        while(true)
                        {
                           §§push(isReady);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           addr123:
                           if(_loc3_ && param1)
                           {
                              continue loop2;
                           }
                           if(_loc3_ && _loc3_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr94:
                        if(!ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                        {
                           addr89:
                           §7f§ = param1;
                           ExternalInterface.call(§'!%§,ExternalInterface.objectID);
                           ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                           §``§ = ExternalInterface.call(§+'§,ExternalInterface.objectID);
                           addr88:
                           addr81:
                           if(!(_loc3_ && _loc2_))
                           {
                              if(§``§ == §0!'§)
                              {
                                 if(!(_loc3_ && SWFWheel))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr88);
                                       }
                                       return;
                                    }
                                    §§goto(addr88);
                                 }
                                 if(_loc2_)
                                 {
                                    §§goto(addr23);
                                 }
                                 §§goto(addr94);
                              }
                              addr23:
                              ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                              if(_loc3_)
                              {
                                 §§goto(addr81);
                              }
                              return;
                           }
                           §§goto(addr89);
                        }
                        return;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr148);
                  }
               }
            }
         }
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§7f§ == null);
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
         if(!(_loc3_ && SWFWheel))
         {
            §§push(false);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(_loc4_)
                     {
                        addr55:
                        §§push(§§newactivation());
                        if(_loc4_ || _loc1_)
                        {
                           §§goto(addr73);
                        }
                        else
                        {
                           addr84:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr78:
                        }
                     }
                     §§goto(addr99);
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
                     addr99:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr99);
               }
               §§goto(addr55);
            }
            §§goto(addr84);
         }
         addr73:
         return §§pop().§§slot[1];
      }
      
      public static function get §;o§() : int
      {
         return §``§;
      }
      
      public static function get §=!E§() : Boolean
      {
         return §6T§;
      }
      
      public static function set §=!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §6T§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(_loc10_)
         {
            §§push(§``§);
            loop0:
            while(true)
            {
               §§push(§0!'§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§``§);
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§push(§;t§);
                     if(_loc9_)
                     {
                        continue loop1;
                     }
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc10_)
                              {
                                 return;
                              }
                              if(!_loc9_)
                              {
                                 if(!(_loc10_ || SWFWheel))
                                 {
                                    break loop1;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              loop5:
                              while(true)
                              {
                                 if(_loc9_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§6T§);
                                 if(_loc10_ || param2)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc10_ || SWFWheel)
                                 {
                                    continue loop3;
                                 }
                                 addr73:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                           var _loc5_:Array;
                           var _loc6_:DisplayObject = (_loc5_ = §7f§.getObjectsUnderPoint(new Point(§7f§.mouseX,§7f§.mouseY))).pop() as DisplayObject;
                           addr129:
                           if(_loc6_ != null)
                           {
                              if(!(_loc7_ = _loc6_ as InteractiveObject))
                              {
                                 _loc6_ = _loc6_.parent;
                                 §§goto(addr129);
                              }
                              if(_loc10_)
                              {
                                 §§goto(addr132);
                              }
                              §§goto(addr134);
                           }
                           addr132:
                           if(!_loc7_)
                           {
                              addr134:
                              _loc7_ = §7f§;
                           }
                           var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                           if(!(_loc9_ && param2))
                           {
                              _loc7_.dispatchEvent(_loc8_);
                           }
                           return;
                           addr47:
                        }
                        §§goto(addr73);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §6T§;
      }
   }
}
