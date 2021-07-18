package §?@§
{
   public class §-w§
   {
       
      
      protected var §^B§:Number = 0.0;
      
      protected var §55§:Number = 0.0;
      
      private var §=2§:Boolean = true;
      
      protected var §try§:Function = null;
      
      protected var §0!3§:Function = null;
      
      protected var §5l§:Boolean = true;
      
      protected var §@[§:Boolean = true;
      
      protected var §7f§:Boolean = true;
      
      public function §-w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§try§ = null;
         }
         do
         {
            this.§0!3§ = null;
         }
         while(_loc1_);
         
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§55§ = param1;
         }
         do
         {
            if(param1 < 0)
            {
               while(true)
               {
                  this.§55§ = 0;
                  addr89:
                  while(true)
                  {
                  }
               }
               addr86:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§55§);
               if(_loc2_ || this)
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 1000);
                  }
               }
               §§pop().§^B§ = §§pop();
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr86);
            }
         }
         while(_loc3_ && this);
         
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§=2§;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=2§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=2§ = false;
         }
      }
      
      public function set §<d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§5l§ = param1;
         }
      }
      
      public function set §`F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@[§ = param1;
         }
      }
      
      public function get §`F§() : Boolean
      {
         return this.§@[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.isCompleted)
            {
               if(!_loc2_)
               {
                  addr49:
                  this.§try§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function set §@!]§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^B§ <= 0)
            {
               if(_loc2_)
               {
                  this.§0!3§ = param1;
               }
            }
         }
      }
      
      public function set §2!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7f§ = param1;
         }
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§7f§;
      }
      
      protected function §`G§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§=2§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr165:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           addr127:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              addr105:
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr112);
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr164:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§^B§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§^B§ = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(this.§^B§);
                              loop8:
                              while(true)
                              {
                                 §§push(0);
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§^B§);
                                          if(_loc2_)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(this.§0!3§ != null)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr93:
                                                   if(_loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         §§goto(addr103);
                                                      }
                                                      addr102:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr127);
                                                }
                                                while(!_loc3_)
                                                {
                                                   this.§0!3§();
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      addr139:
                                                      §§push(false);
                                                      continue loop0;
                                                   }
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop8;
                                       }
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          addr103:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr105);
                                          }
                                          addr112:
                                          return §§pop();
                                       }
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr164);
                                       §§goto(addr127);
                                    }
                                    §§goto(addr93);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr139);
                  }
               }
            }
         }
         §§goto(addr102);
      }
   }
}
