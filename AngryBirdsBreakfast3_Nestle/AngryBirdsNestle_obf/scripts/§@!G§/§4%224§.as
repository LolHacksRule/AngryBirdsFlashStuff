package §@!G§
{
   import flash.events.Event;
   
   public class §4"4§ extends Event
   {
      
      public static const §7!2§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §4"4§))
         {
            §7!2§ = "fileLoaded";
         }
      }
      
      public var file:§]b§;
      
      public function §4"4§(param1:String, param2:§]b§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_ && param1);
         
      }
      
      override public function clone() : Event
      {
         return new §4"4§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() + "\" filename=\"");
            if(!_loc1_)
            {
               §§push(§§pop() + this.file.§@z§);
               if(_loc2_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(_loc2_)
                  {
                     §§push(§§pop() + bubbles);
                     if(!_loc1_)
                     {
                        §§push(§§pop() + " cancelable=");
                        if(!(_loc1_ && this))
                        {
                           §§push(§§pop() + cancelable);
                           if(!_loc2_)
                           {
                           }
                           addr93:
                           return §§pop() + "]";
                           addr91:
                        }
                     }
                     §§push(§§pop() + " eventPhase=");
                     if(_loc2_)
                     {
                        addr72:
                        §§push(§§pop() + eventPhase);
                        if(_loc2_ || this)
                        {
                           §§goto(addr91);
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr72);
         }
         §§goto(addr93);
      }
   }
}
