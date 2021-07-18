package §'#%§
{
   public final class §2#?§
   {
       
      
      private var §!"v§:Boolean = false;
      
      private var §,"x§:Array;
      
      private var callback:Function = null;
      
      public function §2#?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,"x§ = [];
         }
         do
         {
            super();
         }
         while(!_loc1_);
         
      }
      
      public function get locked() : Boolean
      {
         return this.§!"v§;
      }
      
      public function get keyCodes() : Array
      {
         return this.§,"x§;
      }
      
      public function lockWithKeycodes(param1:Array, param2:Function) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = true;
         if(_loc5_ || _loc3_)
         {
            §§push(this.locked);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.unlock());
                     addr162:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr163:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr164:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr160:
               }
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(!_loc4_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§-#1§.§%!E§);
                           addr131:
                           while(true)
                           {
                              §§push(param1);
                              addr132:
                              while(true)
                              {
                                 §§push(§§pop().§+M§(§§pop()));
                                 addr133:
                                 while(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr137:
                                       while(_loc5_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr162);
                              }
                           }
                        }
                        addr129:
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        loop10:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop11:
                              while(!_loc4_)
                              {
                                 §§push(§-#1§.§%!E§);
                                 if(!_loc4_)
                                 {
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().§ #1§(§§pop(),this.unlock));
                                       loop12:
                                       for(; !_loc4_; while(true)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!_loc4_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr27);
                                                      }
                                                      addr61:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr90);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr66);
                                             }
                                             break;
                                          }
                                          continue loop12;
                                       },§§goto(addr133))
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(false);
                                             continue;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             this.§!!=§(true);
                                             loop17:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§1!w§(param1);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         this.§0#5§(param2);
                                                         while(true)
                                                         {
                                                            if(_loc4_ && this)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     break loop14;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                         addr66:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr129);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   addr123:
                                                   §§goto(addr136);
                                                   addr90:
                                                }
                                                else
                                                {
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr162);
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr27);
                        }
                     }
                  }
                  §§goto(addr163);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr61);
      }
      
      public function unlock() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.locked);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§-#1§.§%!E§.§!v§(this.keyCodes));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§!!=§(false);
                              while(true)
                              {
                                 this.§5§();
                                 loop5:
                                 for(; _loc3_; while(_loc3_ || this)
                                 {
                                    §§push(true);
                                    continue loop2;
                                 })
                                 {
                                    this.§0#5§(null);
                                    while(true)
                                    {
                                       this.§1!w§([]);
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           addr112:
                        }
                        loop8:
                        while(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || _loc1_)
                              {
                                 break;
                              }
                              continue loop8;
                           }
                           return §§pop();
                        }
                     }
                  }
                  addr96:
               }
               §§goto(addr22);
            }
         }
         §§goto(addr69);
      }
      
      private function §!!=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!"v§ = param1;
         }
      }
      
      private function §1!w§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,"x§ = param1.concat();
         }
      }
      
      private function §0#5§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.callback = param1;
         }
      }
      
      private function §5§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(typeof this.callback == "function")
            {
               try
               {
                  addr33:
                  this.callback();
               }
               catch(error:Error)
               {
               }
            }
            return;
         }
         §§goto(addr33);
      }
   }
}
