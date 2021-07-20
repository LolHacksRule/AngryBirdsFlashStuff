package §2"'§
{
   public class §;5§ extends § "%§ implements §'v§
   {
       
      
      private var §^"!§:Number;
      
      private var §=>§:Boolean;
      
      private var §[$§:Boolean;
      
      private var §<"V§:Function;
      
      private var §1"'§:Object;
      
      private var §"!!§:Object;
      
      private var §^3§:Object;
      
      public function §;5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc7_ || param1)
               {
                  if(§§pop() <= 0)
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc7_ || param3)
                        {
                           addr113:
                           §§push(Number(§§pop()));
                        }
                        param4 = §§pop();
                     }
                     while(true)
                     {
                     }
                     addr115:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(_loc7_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§^"!§ = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§<"V§ = param5;
                        while(!_loc6_)
                        {
                           continue loop0;
                           addr44:
                           if(_loc6_ && param3)
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.§=>§ = false;
                              if(!(_loc6_ && this))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§[$§ = true;
                                 }
                                 addr33:
                              }
                              addr37:
                              addr56:
                              while(_loc7_ || param3)
                              {
                                 §§goto(addr44);
                              }
                              while(!_loc6_)
                              {
                                 §§goto(addr33);
                                 §§goto(addr37);
                              }
                              continue loop3;
                           }
                           param2 = this.§^2§(param2,param1);
                           if(!(_loc6_ && param2))
                           {
                              if(param3 != null)
                              {
                                 if(_loc7_)
                                 {
                                    addr147:
                                    param3 = this.§^2§(param3,param2);
                                    if(!_loc6_)
                                    {
                                       this.§#!C§(param2,param3);
                                       if(_loc7_)
                                       {
                                          addr166:
                                          this.§1"'§ = param1;
                                          addr161:
                                       }
                                       return;
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              else
                              {
                                 this.§#!C§(param2,param1);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr147);
                        }
                        continue loop2;
                     }
                  }
               }
               §§goto(addr113);
            }
         }
         §§goto(addr51);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=>§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§[$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
            while(true)
            {
               this.§1"'§ = null;
            }
            addr57:
         }
         loop1:
         do
         {
            this.§^3§ = null;
            while(_loc2_)
            {
               this.§"!!§ = null;
               if(!_loc1_)
               {
                  continue loop1;
               }
            }
            §§goto(addr57);
         }
         while(_loc1_);
         
      }
      
      public function §?!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!M§ = -§!"U§;
         }
         do
         {
            this.§=>§ = false;
         }
         while(_loc1_ && this);
         
      }
      
      private function §^2§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!_loc8_)
            {
               §§push(param2[_loc4_] == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr126:
                              loop10:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                    if(_loc7_)
                                    {
                                       addr84:
                                       if(!_loc8_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(param2[_loc4_] is Number);
                                                            if(!_loc7_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr49:
                                                            if(_loc7_ || param2)
                                                            {
                                                               _loc3_[_loc4_] = param1[_loc4_];
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr84);
                                                   addr106:
                                                }
                                                while(§§pop())
                                                {
                                                   §§goto(addr49);
                                                }
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                          addr86:
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr106);
                                 }
                              }
                           }
                        }
                        §§goto(addr86);
                     }
                  }
               }
            }
            §§goto(addr126);
         }
         return _loc3_;
      }
      
      private function §#!C§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc8_ || param2)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc9_)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc8_ || this)
         {
            this.§^3§ = _loc3_;
            do
            {
               this.§"!!§ = _loc4_;
            }
            while(_loc9_ && param1);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§=>§)
            {
               loop0:
               do
               {
                  this.§=>§ = true;
                  while(true)
                  {
                     §[!r§ = null;
                     while(_loc2_)
                     {
                        §"!M§ = this.§^"!§;
                        if(!(_loc1_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc2_ || _loc1_));
               
               addr74:
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §7!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§=>§)
            {
               loop0:
               while(true)
               {
                  this.§=>§ = true;
                  while(true)
                  {
                     §"!M§ = this.§^"!§;
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           this.§3!T§();
                           if(!_loc2_)
                           {
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               addr57:
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[$§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§[$§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[$§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr160:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc3_ || this)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr153:
                        break;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                     §§goto(addr160);
                  }
                  §"!M§ += param1;
               }
            }
         }
         loop5:
         while(true)
         {
            if(§"!M§ >= this.§^"!§)
            {
               while(true)
               {
                  if(!§1!>§)
                  {
                     §"!M§ = 0;
                     loop7:
                     while(true)
                     {
                        addr62:
                        loop11:
                        while(true)
                        {
                           this.§3!T§();
                           addr75:
                           addr94:
                           while(_loc3_ || param1)
                           {
                              this.§![§();
                              if(_loc3_ || param1)
                              {
                                 continue loop7;
                              }
                           }
                           while(true)
                           {
                              continue loop11;
                              §§goto(addr75);
                           }
                        }
                        addr57:
                        if(_loc2_)
                        {
                           continue loop5;
                        }
                        if(!_loc2_)
                        {
                           break loop5;
                        }
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr102);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr62);
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §3!T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_)
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§9,§());
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  var _loc2_:int = 0;
                  if(_loc4_)
                  {
                     var _loc3_:* = this.§^3§;
                     if(_loc5_ && _loc2_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§1"'§[attribute] = this.§"!!§[attribute] + this.§^3§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!(_loc5_ && this))
               {
                  §=>§ = true;
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr144);
               }
               if(!§-$§)
               {
                  addr144:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §![§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.isCompleted);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr48:
                        §§pop();
                        if(!(_loc4_ && this))
                        {
                           addr66:
                           §§push(§[!r§ == null);
                           if(_loc3_)
                           {
                              §§goto(addr72);
                           }
                           addr72:
                           §§goto(addr71);
                        }
                        §§goto(addr73);
                     }
                     addr71:
                     if(!§§pop())
                     {
                        try
                        {
                           addr73:
                           §[!r§();
                           if(!(_loc4_ && this))
                           {
                              §[!r§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           var _loc2_:* = e;
                           if(!(_loc4_ && _loc2_))
                           {
                              §[!r§ = null;
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§-$§)
                                 {
                                 }
                              }
                           }
                           throw e;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      private function §9,§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^"!§);
            if(_loc2_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
               §§push(Number(Math.max(0,§"!M§)));
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§^"!§));
            }
            return this.§<"V§(_loc1_,0,1,this.§^"!§);
         }
         addr51:
         return 1;
      }
   }
}
