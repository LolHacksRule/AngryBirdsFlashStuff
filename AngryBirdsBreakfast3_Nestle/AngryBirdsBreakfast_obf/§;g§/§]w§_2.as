package §;g§
{
   public class §]w§
   {
       
      
      protected var §>!?§:Number = 0.0;
      
      protected var §<!n§:Number = 0.0;
      
      private var §7!J§:Boolean = true;
      
      protected var §;!h§:Function = null;
      
      protected var §^=§:Function = null;
      
      protected var §#M§:Boolean = true;
      
      protected var §0!!§:Boolean = true;
      
      protected var §7!>§:Boolean = true;
      
      public function §]w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!h§ = null;
            do
            {
               this.§^=§ = null;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§<!n§ = param1;
         }
         while(true)
         {
            if(param1 < 0)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§<!n§ = 0;
               }
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§<!n§);
                     if(_loc2_ || this)
                     {
                        §§push(-§§pop());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     §§pop().§>!?§ = §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
               continue;
            }
            §§goto(addr28);
         }
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§7!J§;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§7!J§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!J§ = false;
         }
      }
      
      public function set §6!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#M§ = param1;
         }
      }
      
      public function set §7y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!!§ = param1;
         }
      }
      
      public function get §7y§() : Boolean
      {
         return this.§0!!§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.isCompleted)
            {
               if(!_loc3_)
               {
                  addr33:
                  this.§;!h§ = param1;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function set §>!R§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§>!?§ <= 0)
            {
               if(!_loc2_)
               {
                  this.§^=§ = param1;
               }
            }
         }
      }
      
      public function set §+!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7!>§ = param1;
         }
      }
      
      public function get §+!d§() : Boolean
      {
         return this.§7!>§;
      }
      
      protected function §^!m§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7!J§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        addr170:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           loop12:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§>!?§);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§>!?§ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(this.§>!?§);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr104:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc2_ || this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr121:
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                      addr73:
                                                      loop7:
                                                      while(!(_loc3_ && this))
                                                      {
                                                         this.§^=§();
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               §§push(false);
                                                            }
                                                            else
                                                            {
                                                               addr140:
                                                            }
                                                            this.§^=§ = null;
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc2_ || param1))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(true);
                                                               if(_loc3_)
                                                               {
                                                                  addr120:
                                                                  return §§pop();
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr141);
                                                               continue loop7;
                                                            }
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 addr138:
                              }
                              §§goto(addr141);
                           }
                        }
                     }
                     addr169:
                  }
                  §§goto(addr138);
               }
            }
            §§goto(addr169);
         }
         §§goto(addr170);
      }
   }
}
