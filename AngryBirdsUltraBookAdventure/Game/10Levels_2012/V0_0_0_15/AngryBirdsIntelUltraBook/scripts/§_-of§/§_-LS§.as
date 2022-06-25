package §_-of§
{
   import flash.events.Event;
   
   public class §_-LS§ extends Event
   {
      
      public static const §_-FH§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-FH§ = "fileLoaded";
         }
      }
      
      public var file:§_-Ec§;
      
      public function §_-LS§(param1:String, param2:§_-Ec§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_ && param3);
         
      }
      
      override public function clone() : Event
      {
         return new §_-LS§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!_loc1_)
         {
            §§push(§§pop() + type);
            if(!(_loc1_ && this))
            {
               §§push("\" filename=\"");
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() + this.file.§_-UM§);
                     if(!_loc1_)
                     {
                        §§push("\" bubbles=");
                        if(_loc2_ || _loc2_)
                        {
                           addr64:
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() + bubbles);
                              if(_loc2_ || this)
                              {
                                 addr81:
                                 §§push(" cancelable=");
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr102:
                                       §§push(§§pop() + cancelable);
                                       if(_loc2_)
                                       {
                                          addr106:
                                          §§push(" eventPhase=");
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr114:
                                             §§push(§§pop() + §§pop());
                                             if(_loc2_)
                                             {
                                                §§goto(addr123);
                                             }
                                             §§goto(addr121);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr81);
               }
               §§goto(addr64);
            }
            addr123:
            §§push(§§pop() + eventPhase);
            if(_loc2_)
            {
               addr121:
               return "]";
            }
         }
         §§goto(addr102);
      }
   }
}
