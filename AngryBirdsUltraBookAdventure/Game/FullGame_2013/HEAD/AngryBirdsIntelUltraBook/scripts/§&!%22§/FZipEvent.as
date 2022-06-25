package §&!"§
{
   import flash.events.Event;
   
   public class FZipEvent extends Event
   {
      
      public static const FILE_LOADED:String = "fileLoaded";
      
      {
         var FILE_LOADED:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || FILE_LOADED)
         {
         }
         do
         {
            FILE_LOADED = "fileLoaded";
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public var file:FZipFile;
      
      public function FZipEvent(type:String, file:FZipFile = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || type)
         {
         }
         if(!(_loc5_ && file))
         {
            while(true)
            {
            }
            addr120:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     this.file = file;
                     loop5:
                     while(true)
                     {
                        while(_loc6_)
                        {
                           super(type,bubbles,cancelable);
                           continue loop5;
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop3;
                           }
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           if(!_loc5_)
                           {
                              return;
                           }
                           §§goto(addr120);
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return new FZipEvent(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         §§push("[FZipEvent type=\"");
         if(!(_loc1_ && _loc1_))
         {
            if(!(_loc1_ && this))
            {
               §§push(§§pop() + type);
               if(!_loc1_)
               {
                  §§push("\" filename=\"");
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() + this.file.§4F§);
                        if(!_loc1_)
                        {
                           addr79:
                           §§push("\" bubbles=");
                           if(_loc2_ || _loc2_)
                           {
                              addr87:
                              §§push(§§pop() + §§pop());
                              if(!(_loc1_ && this))
                              {
                                 addr95:
                                 §§push(§§pop() + bubbles);
                                 if(_loc1_ && _loc1_)
                                 {
                                 }
                                 §§goto(addr164);
                              }
                              §§push(" cancelable=");
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || this)
                                 {
                                    addr121:
                                    §§push(§§pop() + cancelable);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(" eventPhase=");
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr149:
                                          §§push(§§pop() + §§pop());
                                          if(_loc2_)
                                          {
                                             addr152:
                                             §§push(§§pop() + eventPhase);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push("]");
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       addr164:
                                       return §§pop();
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr152);
                              }
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr87);
               }
               §§goto(addr95);
            }
            §§goto(addr79);
         }
         §§goto(addr121);
      }
   }
}
