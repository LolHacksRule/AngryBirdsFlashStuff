package §6Q§
{
   import flash.events.Event;
   
   public class FZipEvent extends Event
   {
      
      public static const FILE_LOADED:String = "fileLoaded";
      
      {
         var FILE_LOADED:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         do
         {
            FILE_LOADED = "fileLoaded";
         }
         while(!(FILE_LOADED || FILE_LOADED));
         
      }
      
      public var file:FZipFile;
      
      public function FZipEvent(type:String, file:FZipFile = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && bubbles)
         {
         }
         if(!(_loc6_ && bubbles))
         {
            while(true)
            {
               loop1:
               while(_loc5_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(!_loc6_)
                        {
                           addr97:
                           if(_loc5_ || type)
                           {
                              if(!_loc6_)
                              {
                                 super(type,bubbles,cancelable);
                                 while(!(_loc6_ && this))
                                 {
                                    if(!(_loc6_ && type))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc6_ && file))
                                    {
                                       §§goto(addr97);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                       addr111:
                                    }
                                 }
                                 addr70:
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.file = file;
            §§goto(addr111);
         }
         §§goto(addr63);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return new FZipEvent(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         §§push("[FZipEvent type=\"");
         if(!_loc1_)
         {
            if(_loc2_ || _loc1_)
            {
               addr37:
               §§push(§§pop() + type);
               if(!(_loc1_ && this))
               {
                  §§push("\" filename=\"");
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        §§push(§§pop() + this.file.§2!e§);
                        if(_loc2_)
                        {
                           addr74:
                           §§push("\" bubbles=");
                           if(!_loc1_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_)
                              {
                                 §§push(§§pop() + bubbles);
                                 if(!_loc1_)
                                 {
                                    §§push(" cancelable=");
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr93:
                                       §§push(§§pop() + §§pop());
                                       if(_loc2_)
                                       {
                                          addr137:
                                          §§push(§§pop() + cancelable);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr116:
                                             §§push(" eventPhase=");
                                             if(!_loc1_)
                                             {
                                                addr119:
                                                §§push(§§pop() + §§pop());
                                                if(_loc2_ || _loc1_)
                                                {
                                                }
                                                §§goto(addr139);
                                             }
                                             addr138:
                                             addr139:
                                             return §§pop();
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr138);
                                          §§push("]");
                                       }
                                       §§push(§§pop() + eventPhase);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§goto(addr137);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr119);
               }
               §§goto(addr74);
            }
            §§goto(addr116);
         }
         §§goto(addr37);
      }
   }
}
