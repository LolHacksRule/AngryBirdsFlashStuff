package § !C§
{
   import flash.events.Event;
   
   public class §'!&§ extends Event
   {
      
      public static const §;!,§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;!,§ = "fileLoaded";
         }
      }
      
      public var file:§>!y§;
      
      public function §'!&§(param1:String, param2:§>!y§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!(_loc6_ || param3));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §'!&§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + "\" filename=\"");
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() + this.file.§8`§);
               if(!(_loc1_ && _loc2_))
               {
                  addr57:
                  §§push(§§pop() + "\" bubbles=");
                  if(_loc2_)
                  {
                     §§push(§§pop() + bubbles);
                     if(!(_loc1_ && this))
                     {
                        addr70:
                        §§push(§§pop() + " cancelable=");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc2_)
                           {
                              addr83:
                              §§push(§§pop() + " eventPhase=");
                              if(_loc1_ && this)
                              {
                              }
                              addr113:
                              return §§pop() + "]";
                              addr111:
                           }
                           §§push(§§pop() + eventPhase);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr111);
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr70);
            }
            §§goto(addr57);
         }
         §§goto(addr83);
      }
   }
}
