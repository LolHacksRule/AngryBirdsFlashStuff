package §?!G§
{
   import flash.events.Event;
   
   public class §#x§ extends Event
   {
      
      public static const § !`§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !`§ = "fileLoaded";
         }
      }
      
      public var file:§#<§;
      
      public function §#x§(param1:String, param2:§#<§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc5_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §#x§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() + "\" filename=\"");
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() + this.file.§<l§);
               if(!_loc1_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(!(_loc1_ && _loc1_))
                  {
                     addr61:
                     §§push(§§pop() + bubbles);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() + " cancelable=");
                        if(!_loc1_)
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc2_ || this)
                           {
                              addr83:
                              §§push(§§pop() + " eventPhase=");
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop() + eventPhase);
                                 if(_loc2_)
                                 {
                                    addr106:
                                    return §§pop() + "]";
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr61);
      }
   }
}
