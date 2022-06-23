package §8!E§
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
      
      public static const §9#§:int = 0;
      
      public static const §`!C§:int = 1;
      
      public static const §03§:int = 2;
      
      public static const §+W§:String = "SWFWheel.join";
      
      public static const §?7§:String = "SWFWheel.getState";
      
      private static var _stage:Stage;
      
      private static var §&v§:int;
      
      private static var §-!1§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.5";
            §9#§ = 0;
            §`!C§ = 1;
            if(_loc2_)
            {
               §03§ = 2;
               if(!_loc1_)
               {
                  addr45:
                  §+W§ = "SWFWheel.join";
                  §?7§ = "SWFWheel.getState";
               }
               §-!1§ = true;
               return;
            }
         }
         §§goto(addr45);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(available);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(isReady);
                           if(_loc3_)
                           {
                              addr46:
                              if(!§§pop())
                              {
                                 if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                                 {
                                    if(_loc3_)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    _stage = param1;
                                    ExternalInterface.call(§+W§,ExternalInterface.objectID);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       §&v§ = ExternalInterface.call(§?7§,ExternalInterface.objectID);
                                       if(!(_loc2_ && SWFWheel))
                                       {
                                          if(§&v§ == §9#§)
                                          {
                                             if(_loc2_ && SWFWheel)
                                             {
                                                §§goto(addr128);
                                             }
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr47);
                           }
                           §§goto(addr46);
                        }
                        addr128:
                        ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                        return;
                     }
                  }
               }
            }
            §§goto(addr46);
         }
         addr47:
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(_stage == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(false);
            if(!(_loc4_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc4_)
                     {
                        addr49:
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr73:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr67:
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     try
                     {
                        §§goto(addr67);
                     }
                     catch(e:Error)
                     {
                     }
                     addr88:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr88);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr73);
      }
      
      public static function get §^$§() : int
      {
         return §&v§;
      }
      
      public static function get §=g§() : Boolean
      {
         return §-!1§;
      }
      
      public static function set §=g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-!1§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_ || param1)
         {
            §§push(§&v§);
            if(!_loc10_)
            {
               §§push(§9#§);
               if(!_loc10_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc10_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(§&v§ == §`!C§);
                     if(_loc9_ || SWFWheel)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || param1)
                           {
                              §§pop();
                              if(!(_loc10_ && SWFWheel))
                              {
                                 §§push(§-!1§);
                                 if(!_loc9_)
                                 {
                                 }
                                 addr84:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       §§goto(addr92);
                                    }
                                    else
                                    {
                                       §§goto(addr93);
                                    }
                                 }
                              }
                              §§goto(addr93);
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr84);
                  }
                  addr92:
                  return;
               }
            }
            §§goto(addr45);
         }
         addr93:
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
         if(_loc9_ || SWFWheel)
         {
            _loc7_.dispatchEvent(_loc8_);
         }
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §-!1§;
      }
   }
}
