package §?,§
{
   import flash.events.Event;
   
   public class §&m§ extends Event
   {
      
      public static const §@!§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!§ = "fileLoaded";
         }
      }
      
      public var file:§9b§;
      
      public function §&m§(param1:String, param2:§9b§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.file = param2;
            if(_loc5_ || param2)
            {
               addr43:
               super(param1,param3,param4);
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function clone() : Event
      {
         return new §&m§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + type);
            §§push("\" filename=\"");
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr57);
               }
               §§goto(addr86);
            }
            §§goto(addr83);
         }
         addr57:
         §§push(§§pop() + this.file.§1§);
         §§push("\" bubbles=");
         if(!(_loc1_ && this))
         {
            §§push(§§pop() + §§pop());
            if(!_loc1_)
            {
               §§goto(addr94);
            }
            addr86:
            §§push(§§pop() + cancelable);
            §§push(" eventPhase=");
            if(_loc2_ || this)
            {
            }
            §§goto(addr94);
         }
         addr94:
         §§push(§§pop() + bubbles);
         §§push(" cancelable=");
         if(_loc2_)
         {
            addr83:
            §§push(§§pop() + §§pop());
         }
         return §§pop() + §§pop() + eventPhase + "]";
      }
   }
}
