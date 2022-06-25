package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0,§ extends EventDispatcher implements §!!8§
   {
       
      
      private var §'D§:Number = 0;
      
      private var §`!j§:Number;
      
      private var §&,§:Function;
      
      private var §"!Z§:Array;
      
      private var §91§:int = 1;
      
      public function §0,§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&,§ = param1;
               loop1:
               while(true)
               {
                  this.§`!j§ = Math.max(param2,0.0001);
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        this.§"!Z§ = param3;
                        if(_loc5_ || param2)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§'D§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§'D§ = Math.min(this.§`!j§,this.§'D§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§`!j§);
                  addr176:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           addr192:
                           §§push(§§pop());
                           if(_loc4_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              addr160:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    do
                                    {
                                       this.§&,§.apply(null,this.§"!Z§);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(this.§91§ <= 1)
                                             {
                                                dispatchEvent(new Event(Event.§4P§));
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr31);
                                                      }
                                                      continue;
                                                   }
                                                   addr134:
                                                   while(true)
                                                   {
                                                      this.§'D§ = 0;
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(_loc2_);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§push(param1);
                                                            if(_loc4_)
                                                            {
                                                               addr87:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§push(this.§`!j§);
                                                               }
                                                               §§pop().advanceTime(§§pop());
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop6;
                                                                  }
                                                                  continue loop9;
                                                                  §§goto(addr87);
                                                               }
                                                               continue loop5;
                                                               addr89:
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                   }
                                                }
                                                §§goto(addr89);
                                             }
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       addr128:
                                       while(true)
                                       {
                                          this.§91§ -= 1;
                                          §§goto(addr134);
                                       }
                                    }
                                    while(!_loc4_);
                                    
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr31:
                                 return;
                              }
                              addr160:
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           §§push(§§pop() >= §§pop());
                           addr149:
                           continue loop1;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      public function get §8&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§91§ == 1);
            if(!(_loc1_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr60:
                        §§pop();
                        addr61:
                        §§push(this.§'D§ >= this.§`!j§);
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr69);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  addr69:
                  return §§pop();
               }
            }
            §§goto(addr60);
         }
         §§goto(addr61);
      }
      
      public function get §2L§() : Number
      {
         return this.§`!j§;
      }
      
      public function get §#!@§() : Number
      {
         return this.§'D§;
      }
      
      public function get §;t§() : int
      {
         return this.§91§;
      }
      
      public function set §;t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§91§ = param1;
         }
      }
   }
}
