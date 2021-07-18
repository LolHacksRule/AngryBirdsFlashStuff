package §5&§
{
   import flash.events.Event;
   
   public class §?!y§ extends Event
   {
      
      public static const §0!4§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?!y§))
         {
            §0!4§ = "fileLoaded";
         }
      }
      
      public var file:§ B§;
      
      public function §?!y§(param1:String, param2:§ B§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
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
         return new §?!y§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() + "\" filename=\"");
            if(_loc2_ || this)
            {
               addr36:
               §§push(§§pop() + this.file.§!! §);
               if(!_loc1_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + bubbles);
                     if(_loc2_ || _loc1_)
                     {
                        addr70:
                        §§push(§§pop() + " cancelable=");
                        if(_loc2_)
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr78);
                     }
                     addr74:
                     §§push(§§pop() + cancelable);
                     if(!_loc1_)
                     {
                        addr78:
                        §§push(§§pop() + " eventPhase=");
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop() + eventPhase);
                           if(_loc2_)
                           {
                              addr101:
                              return §§pop() + "]";
                           }
                        }
                     }
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr36);
      }
   }
}
