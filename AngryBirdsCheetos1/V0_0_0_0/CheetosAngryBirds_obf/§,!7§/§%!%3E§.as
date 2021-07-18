package §,!7§
{
   import flash.events.Event;
   
   public class §%!>§ extends Event
   {
      
      public static const §++§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §++§ = "fileLoaded";
         }
      }
      
      public var file:§7!G§;
      
      public function §%!>§(param1:String, param2:§7!G§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §%!>§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + "\" filename=\"");
            if(_loc2_ || this)
            {
               §§push(§§pop() + this.file.§8!§);
               if(_loc2_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() + bubbles);
                     if(!(_loc1_ && this))
                     {
                        addr70:
                        §§push(§§pop() + " cancelable=");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc1_ && _loc1_)
                           {
                           }
                           §§goto(addr102);
                        }
                        §§push(§§pop() + " eventPhase=");
                        if(!_loc1_)
                        {
                           §§goto(addr102);
                        }
                     }
                  }
                  §§goto(addr70);
               }
               §§goto(addr106);
            }
            §§goto(addr70);
         }
         addr102:
         §§push(§§pop() + eventPhase);
         if(!_loc1_)
         {
            addr106:
            return §§pop() + "]";
         }
      }
   }
}
