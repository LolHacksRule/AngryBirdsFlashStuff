package §+O§
{
   import flash.events.Event;
   
   public class §0!G§ extends Event
   {
      
      public static const §,K§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,K§ = "fileLoaded";
         }
      }
      
      public var file:§=F§;
      
      public function §0!G§(param1:String, param2:§=F§ = null, param3:Boolean = false, param4:Boolean = false)
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
            while(!(_loc6_ || param2));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §0!G§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"" + type);
         if(_loc1_)
         {
            §§push("\" filename=\"");
            if(_loc1_ || _loc1_)
            {
               addr30:
               §§push(§§pop() + §§pop() + this.file.§26§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push("\" bubbles=");
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() + §§pop() + bubbles);
                     if(!_loc2_)
                     {
                        §§push(" cancelable=");
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc1_)
                           {
                              §§push(§§pop() + cancelable);
                              if(!(_loc2_ && this))
                              {
                                 §§push(" eventPhase=");
                                 if(_loc1_ || this)
                                 {
                                    §§goto(addr97);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr103);
                  }
                  addr97:
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     addr103:
                     return §§pop() + eventPhase + "]";
                  }
               }
            }
            §§goto(addr103);
         }
         §§goto(addr30);
      }
   }
}
