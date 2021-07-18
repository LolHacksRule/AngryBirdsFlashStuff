package §0b§
{
   import flash.events.Event;
   
   public class §8@§ extends Event
   {
      
      public static const §`9§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`9§ = "fileLoaded";
         }
      }
      
      public var file:§2!#§;
      
      public function §8@§(param1:String, param2:§2!#§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc5_ && this);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §8@§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(!_loc2_)
         {
            §§push(§§pop() + "\" filename=\"");
            if(!_loc2_)
            {
               §§push(§§pop() + this.file.§``§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(_loc1_ || this)
                  {
                  }
                  addr63:
                  §§push(§§pop() + cancelable);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() + " eventPhase=");
                     if(_loc1_)
                     {
                        addr76:
                        §§push(§§pop() + eventPhase);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr95:
                           return §§pop() + "]";
                        }
                     }
                  }
                  §§goto(addr95);
               }
               §§push(§§pop() + bubbles);
               if(!_loc2_)
               {
                  addr59:
                  §§push(§§pop() + " cancelable=");
                  if(_loc1_)
                  {
                     §§goto(addr63);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr59);
         }
         §§goto(addr63);
      }
   }
}
