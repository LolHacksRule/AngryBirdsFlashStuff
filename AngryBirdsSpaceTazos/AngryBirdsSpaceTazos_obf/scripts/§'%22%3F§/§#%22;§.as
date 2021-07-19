package §'"?§
{
   import flash.events.Event;
   
   public class §#";§ extends Event
   {
      
      public static const §9"'§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9"'§ = "fileLoaded";
         }
      }
      
      public var file:§]"!§;
      
      public function §#";§(param1:String, param2:§]"!§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(!(_loc5_ || param2));
         
      }
      
      override public function clone() : Event
      {
         return new §#";§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(_loc1_)
         {
            §§push(§§pop() + "\" filename=\"");
            if(!_loc2_)
            {
               §§push(§§pop() + this.file.§0^§);
               if(_loc1_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(!_loc2_)
                  {
                     addr35:
                     §§push(§§pop() + bubbles);
                     if(!(_loc2_ && this))
                     {
                        addr54:
                        §§push(§§pop() + " cancelable=");
                        if(_loc1_ || _loc1_)
                        {
                           addr63:
                           §§push(§§pop() + cancelable);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(§§pop() + " eventPhase=");
                              if(_loc1_ || this)
                              {
                                 addr91:
                                 §§push(§§pop() + eventPhase);
                                 if(_loc2_)
                                 {
                                 }
                                 §§goto(addr97);
                              }
                              addr97:
                              return §§pop();
                              §§push(§§pop() + "]");
                           }
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr54);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr35);
      }
   }
}
