package §=u§
{
   public class § ">§
   {
       
      
      protected var § "?§:Number = 0.0;
      
      protected var §1"'§:Number = 0.0;
      
      private var §%"&§:Boolean = true;
      
      protected var §6!s§:Function = null;
      
      protected var §;4§:Function = null;
      
      protected var §1"G§:Boolean = true;
      
      protected var §>f§:Boolean = true;
      
      protected var §["-§:Boolean = true;
      
      public function § ">§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6!s§ = null;
            do
            {
               this.§;4§ = null;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1"'§ = param1;
            loop0:
            while(true)
            {
               if(param1 < 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§1"'§ = 0;
                     while(!_loc2_)
                     {
                        while(true)
                        {
                        }
                        §§pop().§ "?§ = §§pop();
                        if(!(_loc2_ && param1))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§1"'§);
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                     if(!_loc2_)
                     {
                        addr48:
                        §§push(§§pop() * 1000);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr48);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr85);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§%"&§;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%"&§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%"&§ = false;
         }
      }
      
      public function set §>!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1"G§ = param1;
         }
      }
      
      public function set §%S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>f§ = param1;
         }
      }
      
      public function get §%S§() : Boolean
      {
         return this.§>f§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§6!s§ = param1;
               }
            }
         }
      }
      
      public function set §""E§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ "?§ <= 0)
            {
               if(!_loc2_)
               {
                  addr45:
                  this.§;4§ = param1;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function set § each§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§["-§ = param1;
         }
      }
      
      public function get § each§() : Boolean
      {
         return this.§["-§;
      }
      
      protected function §7z§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§%"&§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.isCompleted);
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                        loop3:
                        for(; !_loc3_; if(_loc2_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           continue loop1;
                        })
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§ "?§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().§ "?§ = §§pop();
                                    while(true)
                                    {
                                       §§push(this.§ "?§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr100:
                                          addr101:
                                          while(§§pop() > §§pop())
                                          {
                                             continue loop7;
                                          }
                                          addr101:
                                          §§push(false);
                                          if(!(_loc2_ || this))
                                          {
                                             break loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr156:
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr152);
                           }
                        }
                        continue loop0;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr150);
            }
         }
         §§goto(addr156);
      }
   }
}
