package §<a§
{
   import flash.events.Event;
   
   public class §7p§ extends Event
   {
      
      public static const § "S§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § "S§ = "fileLoaded";
         }
      }
      
      public var file:§;L§;
      
      public function §7p§(param1:String, param2:§;L§ = null, param3:Boolean = false, param4:Boolean = false)
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
         while(_loc6_);
         
      }
      
      override public function clone() : Event
      {
         return new §7p§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"");
         if(!_loc2_)
         {
            §§push(§§pop() + type);
            if(!_loc2_)
            {
               §§push("\" filename=\"");
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() + this.file.§@"2§);
                     if(_loc1_)
                     {
                        §§push("\" bubbles=");
                        if(_loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              addr56:
                              §§push(§§pop() + bubbles);
                              if(_loc1_)
                              {
                                 §§push(" cancelable=");
                                 if(_loc1_)
                                 {
                                    addr63:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr71);
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr90);
                           }
                           addr71:
                           §§push(§§pop() + cancelable);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr90:
                              §§push(" eventPhase=");
                              if(_loc1_ || this)
                              {
                                 addr98:
                                 §§push(§§pop() + §§pop());
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr106:
                                    §§push(§§pop() + eventPhase);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr116:
                                       §§push(§§pop() + "]");
                                    }
                                 }
                              }
                              §§goto(addr116);
                           }
                           return §§pop();
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr56);
               }
               §§goto(addr63);
            }
            §§goto(addr90);
         }
         §§goto(addr56);
      }
   }
}
