package §0!H§
{
   import flash.events.Event;
   
   public class §&!5§ extends Event
   {
      
      public static const §7!i§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §7!i§ = "fileLoaded";
         }
      }
      
      public var file:§^!?§;
      
      public function §&!5§(param1:String, param2:§^!?§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc5_ && param1);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §&!5§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!_loc1_)
         {
            §§push(§§pop() + type);
            if(!_loc1_)
            {
               §§push("\" filename=\"");
               if(!_loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                     §§push(§§pop() + this.file.§1L§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push("\" bubbles=");
                        if(!_loc1_)
                        {
                           addr54:
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || this)
                           {
                              §§push(§§pop() + bubbles);
                              if(!_loc1_)
                              {
                                 addr66:
                                 §§push(" cancelable=");
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || this)
                                    {
                                       addr92:
                                       §§push(§§pop() + cancelable);
                                       if(!_loc1_)
                                       {
                                          addr96:
                                          §§push(" eventPhase=");
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr104:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() + eventPhase);
                                                if(!_loc1_)
                                                {
                                                   addr111:
                                                   §§push(§§pop() + "]");
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr111);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr111);
               }
               §§goto(addr54);
            }
            §§goto(addr96);
         }
         §§goto(addr66);
      }
   }
}
