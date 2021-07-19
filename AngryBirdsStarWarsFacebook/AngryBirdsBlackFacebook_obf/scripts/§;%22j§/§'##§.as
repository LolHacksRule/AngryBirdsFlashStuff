package §;"j§
{
   import flash.events.Event;
   
   public class §'##§ extends Event
   {
      
      public static const §,"6§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,"6§ = "fileLoaded";
         }
      }
      
      public var file:§4"W§;
      
      public function §'##§(param1:String, param2:§4"W§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_);
         
      }
      
      override public function clone() : Event
      {
         return new §'##§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!_loc1_)
         {
            §§push(§§pop() + "\" filename=\"");
            if(_loc2_ || this)
            {
               §§push(§§pop() + this.file.§1"n§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(!(_loc1_ && this))
                  {
                     addr61:
                     §§push(§§pop() + bubbles);
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop() + " cancelable=");
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc2_ || _loc2_)
                           {
                           }
                           addr113:
                           return §§pop() + "]";
                           addr111:
                        }
                        §§push(§§pop() + " eventPhase=");
                        if(!(_loc1_ && this))
                        {
                           addr107:
                           §§push(§§pop() + eventPhase);
                           if(_loc2_)
                           {
                              §§goto(addr111);
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr113);
            }
            §§goto(addr107);
         }
         §§goto(addr61);
      }
   }
}
