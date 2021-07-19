package §6"G§
{
   public class §?!4§
   {
       
      
      protected var §@o§:Number = 0.0;
      
      protected var §"!l§:Number = 0.0;
      
      private var §7!q§:Boolean = true;
      
      protected var §;!S§:Function = null;
      
      protected var §!"R§:Function = null;
      
      protected var §4"q§:Boolean = true;
      
      protected var §-!s§:Boolean = true;
      
      protected var §'#_§:Boolean = true;
      
      public function §?!4§()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;!S§ = null;
            do
            {
               this.§!"R§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§"!l§ = param1;
            loop0:
            for(; param1 < 0; if(_loc3_ && param1)
            {
               continue;
            },this.§"!l§ = 0)
            {
               if(_loc2_ || _loc3_)
               {
                  continue;
               }
               addr94:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§"!l§);
               if(_loc2_)
               {
                  §§push(-§§pop());
                  if(!(_loc3_ && param1))
                  {
                     addr52:
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§@o§ = §§pop();
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr94);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§7!q§;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7!q§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!q§ = false;
         }
      }
      
      public function set §;"8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§4"q§ = param1;
         }
      }
      
      public function set §>h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!s§ = param1;
         }
      }
      
      public function get §>h§() : Boolean
      {
         return this.§-!s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || _loc3_)
               {
                  addr54:
                  this.§;!S§ = param1;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function set §0!X§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§@o§ <= 0)
            {
               if(_loc3_)
               {
                  addr45:
                  this.§!"R§ = param1;
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
         if(!(_loc2_ && param1))
         {
            this.§'#_§ = param1;
         }
      }
      
      public function get § each§() : Boolean
      {
         return this.§'#_§;
      }
      
      protected function §"c§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§7!q§);
            if(_loc2_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr185:
                        loop8:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           loop9:
                           while(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 loop1:
                                 while(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§@o§);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§@o§ = §§pop();
                                       loop3:
                                       for(; _loc2_ || _loc3_; if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       },if(this.§!"R§ != null)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr61);
                                             }
                                             this.§!"R§();
                                          }
                                          §§goto(addr109);
                                       },§§goto(addr24))
                                       {
                                          §§push(this.§@o§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop5:
                                             while(§§pop() > §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§@o§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            break;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr109:
                                                         addr109:
                                                         if(_loc3_ && param1)
                                                         {
                                                            break loop5;
                                                         }
                                                         if(_loc3_ && param1)
                                                         {
                                                            break loop1;
                                                         }
                                                         this.§!"R§ = null;
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr109);
                                                         }
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                §§push(true);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                addr130:
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr160:
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                 }
                                 §§push(false);
                                 addr157:
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                     addr184:
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr184);
         }
         §§goto(addr185);
      }
   }
}
