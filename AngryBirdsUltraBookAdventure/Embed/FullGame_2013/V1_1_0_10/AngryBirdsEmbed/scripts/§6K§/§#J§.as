package §6K§
{
   import flash.events.Event;
   
   public class §#J§ extends Event
   {
      
      public static const § Y§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § Y§ = "fileLoaded";
         }
      }
      
      public var file:§,$§;
      
      public function §#J§(param1:String, param2:§,$§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.file = param2;
            if(_loc5_)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §#J§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(!_loc2_)
         {
            §§push("\" filename=\"");
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + §§pop() + this.file.§%;§);
               §§push("\" bubbles=");
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc1_ || this)
                  {
                     addr60:
                     §§push(§§pop() + bubbles);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(" cancelable=");
                        if(_loc1_ || _loc2_)
                        {
                           addr87:
                           §§push(§§pop() + §§pop() + cancelable);
                           if(_loc1_ || _loc2_)
                           {
                              addr97:
                              §§push(" eventPhase=");
                              if(!_loc1_)
                              {
                              }
                           }
                           §§goto(addr107);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc2_)
                        {
                           addr107:
                           return §§pop() + §§pop();
                           §§push(§§pop() + eventPhase);
                           §§push("]");
                        }
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr87);
         }
         §§goto(addr60);
      }
   }
}
