package §<!o§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §[#3§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §>#E§:int = 0;
      
      public static const §>!I§:int = 1;
      
      public static const §+e§:int = 2;
      
      public static const §%F§:String = "SWFWheel.join";
      
      public static const §+!?§:String = "SWFWheel.getState";
      
      private static var §`#2§:Stage;
      
      private static var §9#X§:int;
      
      private static var §^O§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §>#E§ = 0;
               while(true)
               {
                  §>!I§ = 1;
                  while(!_loc2_)
                  {
                     §+e§ = 2;
                     loop3:
                     for(; _loc1_ || _loc2_; loop5:
                     while(_loc1_ || _loc2_)
                     {
                        continue loop0;
                        while(true)
                        {
                           §^O§ = true;
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr65);
                        }
                        return;
                     })
                     {
                        §%F§ = "SWFWheel.join";
                        while(true)
                        {
                           §+!?§ = "SWFWheel.getState";
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc2_ && §[#3§)
               {
                  continue;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr60);
      }
      
      public function §[#3§()
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(available);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop11:
                        while(true)
                        {
                           §§push(§4"8§);
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr128:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr128);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr131:
                                       while(!_loc2_)
                                       {
                                       }
                                       return;
                                       addr119:
                                    }
                                    while(true)
                                    {
                                       §`#2§ = param1;
                                       loop5:
                                       while(true)
                                       {
                                          ExternalInterface.call(§%F§,ExternalInterface.objectID);
                                          do
                                          {
                                             ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                             continue loop5;
                                          }
                                          while(_loc2_ && param1);
                                          
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr131);
                           }
                        }
                     }
                     addr151:
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr151);
         }
         §§goto(addr132);
      }
      
      public static function get §4"8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§`#2§ == null);
         if(!(_loc2_ && _loc2_))
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
               if(!_loc4_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc4_ && §[#3§))
                     {
                        addr54:
                        §§push(§§newactivation());
                        if(_loc3_ || _loc1_)
                        {
                           return §§pop().§§slot[1];
                        }
                        addr78:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr72:
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     try
                     {
                        §§goto(addr72);
                     }
                     catch(e:Error)
                     {
                     }
                     addr103:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr103);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr78);
      }
      
      public static function get state() : int
      {
         return §9#X§;
      }
      
      public static function get §&!`§() : Boolean
      {
         return §^O§;
      }
      
      public static function set §&!`§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §^O§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(_loc10_)
         {
            §§push(§9#X§);
            loop0:
            while(true)
            {
               §§push(§>#E§);
               addr114:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr115:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §^O§;
      }
   }
}
