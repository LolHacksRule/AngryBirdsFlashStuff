package §_-UC§
{
   import flash.events.Event;
   
   public class §_-uB§ extends Event
   {
      
      public static const §_-Qs§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Qs§ = "fileLoaded";
         }
      }
      
      public var file:§_-o§;
      
      public function §_-uB§(param1:String, param2:§_-o§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.file = param2;
            if(!_loc6_)
            {
               addr32:
               super(param1,param3,param4);
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function clone() : Event
      {
         return new §_-uB§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-3K§ + "\" bubbles=");
         if(!_loc2_)
         {
            §§push(§§pop() + bubbles);
            if(!(_loc2_ && this))
            {
               §§goto(addr42);
            }
            §§goto(addr48);
         }
         addr42:
         §§push(§§pop() + " cancelable=" + cancelable);
         if(!_loc2_)
         {
            addr48:
            §§push(§§pop() + " eventPhase=");
            if(!_loc2_)
            {
               §§goto(addr59);
            }
            §§goto(addr63);
         }
         addr59:
         §§push(§§pop() + eventPhase);
         if(!_loc2_)
         {
            addr63:
            §§push(§§pop() + "]");
         }
         return §§pop();
      }
   }
}
