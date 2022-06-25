package §1!+§
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
      
      public static const §4e§:int = 0;
      
      public static const §;U§:int = 1;
      
      public static const §0!6§:int = 2;
      
      public static const §1m§:String = "SWFWheel.join";
      
      public static const §#A§:String = "SWFWheel.getState";
      
      private static var _stage:Stage;
      
      private static var §2!F§:int;
      
      private static var §>Q§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "1.5";
            if(_loc1_ || _loc1_)
            {
               §4e§ = 0;
               if(!(_loc2_ && SWFWheel))
               {
                  §;U§ = 1;
                  §0!6§ = 2;
                  addr64:
                  §1m§ = "SWFWheel.join";
                  if(_loc1_)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr64);
         }
         addr69:
         if(!_loc2_)
         {
            addr74:
            §>Q§ = true;
         }
      }
      
      public function SWFWheel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(available);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(isReady);
                           if(_loc3_)
                           {
                              addr41:
                              if(§§pop())
                              {
                                 return;
                              }
                              if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                              {
                                 if(!(_loc2_ && SWFWheel))
                                 {
                                    return;
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr41);
                        }
                        _stage = param1;
                        ExternalInterface.call(§1m§,ExternalInterface.objectID);
                        if(_loc3_)
                        {
                           ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                           if(_loc3_)
                           {
                              §2!F§ = ExternalInterface.call(§#A§,ExternalInterface.objectID);
                              if(!_loc2_)
                              {
                                 if(§2!F§ == §4e§)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr112);
                                    }
                                 }
                              }
                           }
                           ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                           return;
                        }
                        §§goto(addr112);
                     }
                  }
               }
            }
            §§goto(addr41);
         }
         addr112:
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(_stage == null);
         if(_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc3_)
                     {
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           §§goto(addr48);
                        }
                        else
                        {
                           addr74:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr89:
                           return f;
                           addr75:
                           addr68:
                        }
                     }
                     §§goto(addr75);
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
                     §§goto(addr89);
                     §§push(§§newactivation());
                  }
                  e = §§pop();
               }
               §§goto(addr89);
            }
            §§goto(addr74);
         }
         addr48:
         return §§pop().§§slot[1];
      }
      
      public static function get §0s§() : int
      {
         return §2!F§;
      }
      
      public static function get §'Q§() : Boolean
      {
         return §>Q§;
      }
      
      public static function set §'Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §>Q§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_)
         {
            §§push(§2!F§);
            if(!_loc10_)
            {
               §§push(§4e§);
               if(_loc9_ || param2)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc10_ && param3))
                     {
                        return;
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     addr50:
                     §§push(§2!F§ == §;U§);
                     if(!(_loc10_ && SWFWheel))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || param1)
                           {
                              addr67:
                              §§pop();
                              if(!_loc10_)
                              {
                                 addr70:
                                 §§goto(addr89);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr88);
                        }
                        addr89:
                        §§push(§>Q§);
                        if(!(_loc10_ && SWFWheel))
                        {
                           addr88:
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!_loc10_)
                           {
                              §§goto(addr92);
                           }
                        }
                        var _loc5_:Array;
                        var _loc6_:DisplayObject = (_loc5_ = _stage.getObjectsUnderPoint(new Point(_stage.mouseX,_stage.mouseY))).pop() as DisplayObject;
                        while(_loc6_ != null)
                        {
                           if(_loc7_ = _loc6_ as InteractiveObject)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§goto(addr130);
                           }
                           _loc6_ = _loc6_.parent;
                        }
                        if(!_loc7_)
                        {
                           addr130:
                           _loc7_ = _stage;
                           var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                           §§goto(addr133);
                        }
                        addr133:
                        if(!(_loc10_ && param2))
                        {
                           _loc7_.dispatchEvent(_loc8_);
                        }
                        return;
                     }
                     §§goto(addr67);
                  }
                  addr92:
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §>Q§;
      }
   }
}
