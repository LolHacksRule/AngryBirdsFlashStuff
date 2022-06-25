package §0H§
{
   import flash.events.Event;
   
   public class §5#§ extends Event
   {
      
      public static const §0!t§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!t§ = "fileLoaded";
         }
      }
      
      public var file:§?K§;
      
      public function §5#§(param1:String, param2:§?K§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_ && this);
         
      }
      
      override public function clone() : Event
      {
         return new §5#§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() + type);
            if(!_loc1_)
            {
               §§push("\" filename=\"");
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr72);
               }
               §§goto(addr84);
            }
         }
         addr45:
         §§push(§§pop() + this.file.§-F§);
         if(_loc2_)
         {
            §§push("\" bubbles=");
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc1_)
               {
                  addr72:
                  §§push(§§pop() + bubbles);
                  if(_loc2_ || this)
                  {
                     §§push(" cancelable=");
                     if(_loc2_)
                     {
                        addr84:
                        §§push(§§pop() + §§pop());
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc2_)
                           {
                              addr106:
                              §§push(" eventPhase=");
                              if(_loc2_ || this)
                              {
                                 addr114:
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || this)
                                 {
                                 }
                                 §§goto(addr128);
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr128);
               }
               §§goto(addr106);
            }
            §§goto(addr114);
         }
         addr128:
         §§push(§§pop() + eventPhase);
         if(_loc2_)
         {
            return "]";
         }
      }
   }
}
