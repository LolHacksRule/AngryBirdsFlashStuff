package §0X§
{
   import flash.events.Event;
   
   public class §+l§ extends Event
   {
      
      public static const §]-§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+l§))
         {
            §]-§ = "fileLoaded";
         }
      }
      
      public var file:§;a§;
      
      public function §+l§(param1:String, param2:§;a§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.file = param2;
            if(_loc6_ || this)
            {
               addr29:
               super(param1,param3,param4);
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function clone() : Event
      {
         return new §+l§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && _loc1_))
         {
            §§push("\" filename=\"");
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() + §§pop() + this.file.§?s§);
               if(_loc2_)
               {
                  §§push("\" bubbles=");
                  if(!(_loc1_ && this))
                  {
                     §§push(§§pop() + §§pop() + bubbles);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(" cancelable=");
                        if(!_loc1_)
                        {
                           §§push(§§pop() + §§pop() + cancelable);
                           if(!_loc1_)
                           {
                              §§goto(addr108);
                           }
                           §§push(§§pop() + eventPhase);
                           if(_loc2_ || this)
                           {
                           }
                        }
                        §§goto(addr108);
                     }
                     §§push("]");
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr96);
         }
         addr108:
         §§push(" eventPhase=");
         if(_loc2_ || _loc1_)
         {
            addr96:
            §§push(§§pop() + §§pop());
         }
         return §§pop() + §§pop();
      }
   }
}
