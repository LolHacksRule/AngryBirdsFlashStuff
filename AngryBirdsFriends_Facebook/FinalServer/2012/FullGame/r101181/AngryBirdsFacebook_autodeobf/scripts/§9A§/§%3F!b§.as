package §9A§
{
   import flash.events.Event;
   
   public class §?!b§ extends Event
   {
      
      public static const §6!0§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6!0§ = "fileLoaded";
         }
      }
      
      public var file:§>"§;
      
      public function §?!b§(param1:String, param2:§>"§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_ && param3);
         
      }
      
      override public function clone() : Event
      {
         return new §?!b§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"");
         if(_loc1_ || this)
         {
            §§push(§§pop() + type);
            if(!(_loc2_ && _loc2_))
            {
               §§push("\" filename=\"");
               if(!_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc1_ || _loc1_)
                  {
                     addr44:
                     §§push(§§pop() + this.file.§>" §);
                     if(!_loc2_)
                     {
                        §§push("\" bubbles=");
                        if(!_loc2_)
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc1_))
                           {
                              addr71:
                              §§push(§§pop() + bubbles);
                              if(_loc1_)
                              {
                                 §§push(" cancelable=");
                                 if(_loc1_)
                                 {
                                    addr78:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() + cancelable);
                                       if(_loc1_ || _loc2_)
                                       {
                                          addr100:
                                          §§push(" eventPhase=");
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§goto(addr108);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr100);
                                 }
                                 addr108:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr116:
                                    §§push(§§pop() + eventPhase);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr126:
                                       return §§pop() + "]";
                                    }
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr71);
               }
               §§goto(addr63);
            }
            §§goto(addr116);
         }
         §§goto(addr44);
      }
   }
}
