package §@!^§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §<!?§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §"m§:int = 0;
      
      public static const §8!z§:int = 1;
      
      public static const §@!N§:int = 2;
      
      public static const §0"2§:String = "SWFWheel.join";
      
      public static const § p§:String = "SWFWheel.getState";
      
      private static var §+"7§:Stage;
      
      private static var §7u§:int;
      
      private static var §>v§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §"m§ = 0;
               while(true)
               {
                  §8!z§ = 1;
                  addr83:
                  while(!_loc1_)
                  {
                  }
               }
               addr71:
               while(true)
               {
                  if(!(_loc1_ && §<!?§))
                  {
                     §0"2§ = "SWFWheel.join";
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §@!N§ = 2;
            §§goto(addr71);
         }
      }
      
      public function §<!?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(available);
            if(!_loc2_)
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
                        loop4:
                        do
                        {
                           if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                           {
                              continue;
                           }
                           loop5:
                           while(true)
                           {
                              §+"7§ = param1;
                              loop6:
                              while(true)
                              {
                                 ExternalInterface.call(§0"2§,ExternalInterface.objectID);
                                 loop7:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       loop9:
                                       while(true)
                                       {
                                          §7u§ = ExternalInterface.call(§ p§,ExternalInterface.objectID);
                                          do
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(§7u§ == §"m§)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr59:
                                                }
                                                while(true)
                                                {
                                                   ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr59);
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          while(_loc2_ && _loc3_);
                                          
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             §§goto(addr148);
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        while(!(_loc3_ || _loc2_));
                        
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        addr166:
                        while(true)
                        {
                           §§push(§#J§);
                           if(_loc3_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr167);
                        }
                        addr167:
                     }
                     addr148:
                     return;
                  }
                  return;
                  addr146:
               }
               §§goto(addr166);
            }
         }
         §§goto(addr100);
      }
      
      public static function get §#J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§+"7§ == null);
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
         if(_loc4_ || _loc3_)
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc1_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           §§goto(addr63);
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
                        addr72:
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
               §§goto(addr72);
            }
            §§goto(addr79);
         }
         addr63:
         return §§pop().§§slot[1];
      }
      
      public static function get §1!j§() : int
      {
         return §7u§;
      }
      
      public static function get §;!G§() : Boolean
      {
         return §>v§;
      }
      
      public static function set §;!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §>v§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(_loc10_)
         {
            §§push(§7u§);
            loop0:
            while(true)
            {
               §§push(§"m§);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§7u§);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(§8!z§);
                        if(!_loc10_)
                        {
                           continue loop1;
                        }
                        §§push(§§pop() == §§pop());
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr59:
                                 addr66:
                                 while(!_loc9_)
                                 {
                                    §§push(§>v§);
                                    if(!_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!_loc9_)
                                    {
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              addr58:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_ && param1)
                                 {
                                    if(_loc9_)
                                    {
                                       return;
                                    }
                                    addr65:
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 if(!_loc9_)
                                 {
                                    return;
                                 }
                                 §§goto(addr59);
                              }
                              break;
                              §§goto(addr61);
                           }
                           var _loc5_:Array;
                           var _loc6_:DisplayObject = (_loc5_ = §+"7§.getObjectsUnderPoint(new Point(§+"7§.mouseX,§+"7§.mouseY))).pop() as DisplayObject;
                           addr109:
                           if(_loc6_ != null)
                           {
                              if(!(_loc7_ = _loc6_ as InteractiveObject))
                              {
                                 _loc6_ = _loc6_.parent;
                                 §§goto(addr109);
                              }
                              if(!_loc9_)
                              {
                                 §§goto(addr112);
                              }
                              §§goto(addr114);
                           }
                           addr112:
                           if(!_loc7_)
                           {
                              addr114:
                              _loc7_ = §+"7§;
                           }
                           var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                           if(_loc10_ || param3)
                           {
                              _loc7_.dispatchEvent(_loc8_);
                           }
                           return;
                        }
                        §§goto(addr58);
                     }
                     continue loop0;
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr66);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §>v§;
      }
   }
}
