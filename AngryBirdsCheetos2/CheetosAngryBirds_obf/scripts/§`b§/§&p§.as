package §`b§
{
   import flash.events.Event;
   
   public class §&p§ extends Event
   {
      
      public static const §#!"§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §#!"§ = "fileLoaded";
         }
      }
      
      public var file:§=#§;
      
      public function §&p§(param1:String, param2:§=#§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc6_ && this);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §&p§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(_loc1_ || this)
         {
            §§push(§§pop() + "\" filename=\"");
            if(!_loc2_)
            {
               §§push(§§pop() + this.file.§@b§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() + bubbles);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + " cancelable=");
                        if(_loc1_ || this)
                        {
                        }
                        §§goto(addr107);
                     }
                     §§push(§§pop() + cancelable);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr82:
                        §§push(§§pop() + " eventPhase=");
                        if(_loc1_)
                        {
                           §§push(§§pop() + eventPhase);
                           if(_loc1_ || _loc2_)
                           {
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  §§goto(addr107);
               }
            }
            addr107:
            return §§pop() + "]";
         }
         §§goto(addr82);
      }
   }
}
