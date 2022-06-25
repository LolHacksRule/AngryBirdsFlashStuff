package §2"$§
{
   import flash.events.Event;
   
   public class §<!0§ extends Event
   {
      
      public static const §5!-§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!-§ = "fileLoaded";
         }
      }
      
      public var file:§=!,§;
      
      public function §<!0§(param1:String, param2:§=!,§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc6_ && param2);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §<!0§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop() + type);
            if(!_loc1_)
            {
               §§push("\" filename=\"");
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() + this.file.§=!;§);
                     if(!_loc1_)
                     {
                        addr61:
                        §§push("\" bubbles=");
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              §§push(§§pop() + bubbles);
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr81:
                                 §§push(" cancelable=");
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr107:
                                       §§push(§§pop() + cancelable);
                                       if(_loc2_)
                                       {
                                          §§push(" eventPhase=");
                                          if(!_loc1_)
                                          {
                                             addr114:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() + eventPhase);
                                                if(!_loc2_)
                                                {
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          addr122:
                                          addr123:
                                          return §§pop();
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§goto(addr122);
                                    §§push("]");
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr114);
            }
            §§goto(addr123);
         }
         §§goto(addr61);
      }
   }
}
