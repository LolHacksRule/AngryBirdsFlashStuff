package §5! §
{
   import flash.events.Event;
   
   public class §4d§ extends Event
   {
      
      public static const §&!4§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §&!4§ = "fileLoaded";
         }
      }
      
      public var file:§#!E§;
      
      public function §4d§(param1:String, param2:§#!E§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.file = param2;
            if(!_loc5_)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §4d§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(!_loc2_)
         {
            §§push("\" filename=\"");
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() + §§pop() + this.file.§%n§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push("\" bubbles=");
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        addr72:
                        §§push(§§pop() + bubbles);
                        if(_loc1_)
                        {
                           §§push(" cancelable=");
                           if(!(_loc2_ && _loc2_))
                           {
                              addr84:
                              §§push(§§pop() + §§pop());
                              if(_loc1_)
                              {
                                 §§push(§§pop() + cancelable);
                                 §§push(" eventPhase=");
                                 if(!_loc2_)
                                 {
                                    addr92:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       addr97:
                                       §§push(§§pop() + eventPhase);
                                       §§push("]");
                                    }
                                    §§goto(addr97);
                                 }
                                 return §§pop() + §§pop();
                              }
                           }
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr84);
               }
               §§goto(addr72);
            }
            §§goto(addr92);
         }
         §§goto(addr72);
      }
   }
}
