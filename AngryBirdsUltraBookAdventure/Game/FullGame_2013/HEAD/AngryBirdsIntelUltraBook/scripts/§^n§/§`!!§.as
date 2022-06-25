package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!!§ extends EventDispatcher implements §"!>§
   {
       
      
      private var §!!2§:Number = 0;
      
      private var §!v§:Number;
      
      private var §2z§:Function;
      
      private var §@%§:Array;
      
      private var §>!^§:int = 1;
      
      public function §`!!§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§2z§ = param1;
               while(_loc5_)
               {
                  this.§!v§ = Math.max(param2,0.0001);
                  while(_loc5_)
                  {
                     this.§@%§ = param3;
                     if(_loc5_)
                     {
                        return;
                        addr40:
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§!!2§);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.§!!2§ = Math.min(this.§!v§,this.§!!2§ + param1);
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(this.§!v§);
               addr184:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr185:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr186:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr196:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 do
                                 {
                                    this.§2z§.apply(null,this.§@%§);
                                    loop9:
                                    while(true)
                                    {
                                       if(this.§>!^§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§ Z§));
                                          if(!_loc4_)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(_loc2_);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr80:
                                                               §§push(§§pop() - this.§!v§);
                                                            }
                                                            §§pop().advanceTime(§§pop());
                                                            addr83:
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   addr130:
                                                   this.§!!2§ = 0;
                                                }
                                                continue loop0;
                                             }
                                             if(!_loc4_)
                                             {
                                                §§goto(addr35);
                                             }
                                             addr115:
                                             this.§>!^§ -= 1;
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr83);
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                                 while(_loc4_);
                                 
                              }
                              addr35:
                              return;
                           }
                           addr160:
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get §8!V§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!^§ == 1);
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr66:
                        §§push(this.§!!2§ >= this.§!v§);
                        if(!(_loc1_ && this))
                        {
                           addr78:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr78);
                  }
               }
               return §§pop();
            }
            §§goto(addr78);
         }
         §§goto(addr66);
      }
      
      public function get §%!2§() : Number
      {
         return this.§!v§;
      }
      
      public function get §,b§() : Number
      {
         return this.§!!2§;
      }
      
      public function get §4!j§() : int
      {
         return this.§>!^§;
      }
      
      public function set §4!j§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!^§ = param1;
         }
      }
   }
}
