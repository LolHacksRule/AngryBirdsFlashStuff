package §9!3§
{
   import flash.events.Event;
   
   public class §`S§ extends Event
   {
      
      public static const §>"§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>"§ = "fileLoaded";
         }
      }
      
      public var file:§;G§;
      
      public function §`S§(param1:String, param2:§;G§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_ && param1);
         
      }
      
      override public function clone() : Event
      {
         return new §`S§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + type);
            if(!_loc1_)
            {
               §§push("\" filename=\"");
               if(!_loc1_)
               {
                  §§push(§§pop() + §§pop() + this.file.§;V§);
                  if(!_loc1_)
                  {
                     §§push("\" bubbles=");
                     if(!_loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_)
                        {
                           addr55:
                           §§push(§§pop() + bubbles);
                           if(!(_loc1_ && this))
                           {
                              §§push(" cancelable=");
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() + cancelable);
                                    §§push(" eventPhase=");
                                    if(_loc2_ || this)
                                    {
                                       §§goto(addr96);
                                    }
                                    §§goto(addr101);
                                 }
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr101);
            }
            §§goto(addr55);
         }
         addr96:
         §§push(§§pop() + §§pop() + eventPhase);
         if(_loc2_)
         {
            addr101:
            return §§pop() + "]";
         }
      }
   }
}
