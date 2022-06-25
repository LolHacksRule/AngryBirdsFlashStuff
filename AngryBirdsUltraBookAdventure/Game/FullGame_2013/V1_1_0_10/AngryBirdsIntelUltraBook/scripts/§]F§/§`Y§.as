package §]F§
{
   public class §`Y§ extends §!Q§ implements §9!A§
   {
       
      
      private var §4!P§:Number;
      
      private var §?!c§:Boolean;
      
      private var §9!U§:Boolean;
      
      private var §]!q§:Function;
      
      private var §+F§:Object;
      
      private var § a§:Object;
      
      private var §@;§:Object;
      
      public function §`Y§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  if(§§pop() <= 0)
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(_loc6_ || param2)
                        {
                           addr108:
                           param4 = §§pop();
                        }
                        §§goto(addr108);
                     }
                     while(true)
                     {
                        loop5:
                        for(; !(_loc7_ && param3); loop7:
                        while(true)
                        {
                           this.§9!U§ = true;
                           do
                           {
                              this.§?!c§ = false;
                           }
                           while(_loc7_);
                           
                           if(_loc7_ && param1)
                           {
                              break;
                           }
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           addr85:
                           while(_loc6_)
                           {
                              §!!L§ = 0;
                              break loop7;
                           }
                           while(true)
                           {
                              this.§]!q§ = param5;
                              §§goto(addr64);
                           }
                           addr64:
                        })
                        {
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                     }
                     addr109:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§4!P§ = §§pop();
                     §§goto(addr85);
                     §§goto(addr109);
                  }
               }
               §§goto(addr108);
               if(_loc7_ && this)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr43);
               }
               param2 = this.§-! §(param2,param1);
               if(_loc6_)
               {
                  if(param3 != null)
                  {
                     if(_loc6_)
                     {
                        param3 = this.§-! §(param3,param2);
                        if(!_loc7_)
                        {
                           this.§`!t§(param2,param3);
                           if(_loc6_ || param3)
                           {
                              addr160:
                              this.§+F§ = param1;
                           }
                        }
                        return;
                     }
                  }
                  else
                  {
                     this.§`!t§(param2,param1);
                  }
               }
               §§goto(addr160);
            }
         }
         §§goto(addr59);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?!c§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§9!U§;
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
               this.§+F§ = null;
               loop2:
               while(_loc2_ || _loc2_)
               {
                  this.§ a§ = null;
                  if(!(_loc1_ && this))
                  {
                     addr55:
                     if(_loc1_)
                     {
                        while(true)
                        {
                           this.§@;§ = null;
                           continue loop2;
                           §§goto(addr55);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §>!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!!L§ = -§+!e§;
         }
         do
         {
            this.§?!c§ = false;
         }
         while(!_loc1_);
         
      }
      
      private function §-! §(param1:Object, param2:Object) : Object
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
                           while(true)
                           {
                              §§pop();
                              addr141:
                              while(true)
                              {
                                 addr95:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                 }
                              }
                           }
                           addr140:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc8_ && param1)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop11:
                                 while(§§pop())
                                 {
                                    addr73:
                                    if(_loc7_ || this)
                                    {
                                       _loc3_[_loc4_] = param1[_loc4_];
                                    }
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             break loop11;
                                          }
                                       }
                                       addr93:
                                    }
                                    else
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             addr131:
                                             §§push(param2[_loc4_] is Number);
                                             if(_loc7_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop8;
                                             }
                                             addr121:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§pop();
                                                   continue loop10;
                                                }
                                                §§goto(addr140);
                                                §§goto(addr131);
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                    }
                                    §§goto(addr95);
                                 }
                                 continue loop0;
                                 addr71:
                              }
                              §§goto(addr121);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr93);
         }
         return _loc3_;
      }
      
      private function §`!t§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc8_ || this)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!(_loc8_ || param1))
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc8_ || this)
         {
            this.§@;§ = _loc3_;
            do
            {
               this.§ a§ = _loc4_;
            }
            while(!_loc8_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§?!c§)
            {
               loop0:
               while(true)
               {
                  this.§?!c§ = true;
                  loop1:
                  while(true)
                  {
                     §10§ = null;
                     addr65:
                     while(true)
                     {
                        §!!L§ = this.§4!P§;
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr60:
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §&T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§?!c§)
            {
               if(!_loc1_)
               {
                  addr58:
                  this.§?!c§ = true;
               }
               while(true)
               {
                  §!!L§ = this.§4!P§;
                  while(!(_loc1_ && _loc1_))
                  {
                     this.§%<§();
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr30);
                  }
               }
            }
            addr30:
            return;
         }
         §§goto(addr58);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§9!U§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!U§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9!U§);
            if(_loc2_)
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
                        addr164:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc2_)
                           {
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr163:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §!!L§ += param1;
                        loop3:
                        while(true)
                        {
                           if(§!!L§ >= this.§4!P§)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!§2!L§)
                                 {
                                    §!!L§ = 0;
                                    loop4:
                                    while(true)
                                    {
                                       addr43:
                                       loop8:
                                       while(true)
                                       {
                                          this.§%<§();
                                          for(; !_loc3_; this.§3Y§(),if(!(_loc3_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop8;
                                             }
                                             addr117:
                                             while(_loc2_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             while(!_loc3_)
                                             {
                                                this.§?!c§ = true;
                                                §§goto(addr67);
                                             }
                                             addr67:
                                             continue loop3;
                                          })
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                continue;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       if(_loc2_ || _loc2_)
                                       {
                                          return;
                                       }
                                       break loop1;
                                    }
                                 }
                                 while(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §!!L§ = this.§4!P§;
                                    }
                                    else
                                    {
                                       §§goto(addr164);
                                    }
                                    §§goto(addr48);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr43);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr163);
         }
         §§goto(addr84);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §%<§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_ || _loc1_)
            {
               addr38:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§]!Q§());
               if(_loc4_ || this)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  var _loc2_:int = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§@;§;
                     if(_loc4_ || _loc1_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc4_)
                        {
                           this.§+F§[attribute] = this.§ a§[attribute] + this.§@;§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!(_loc5_ && this))
               {
                  §?!c§ = true;
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr149);
               }
               if(!§[!c§)
               {
                  addr149:
                  throw e;
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §3Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.isCompleted);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc1_)
                     {
                        addr59:
                        §§pop();
                        if(_loc4_)
                        {
                           addr62:
                           §§push(§10§ == null);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr69);
                     }
                  }
                  addr68:
                  if(!§§pop())
                  {
                     try
                     {
                        addr69:
                        §10§();
                        if(!_loc3_)
                        {
                           §10§ = null;
                        }
                     }
                     catch(e:Error)
                     {
                        if(_loc4_)
                        {
                           §10§ = null;
                           if(_loc4_ || _loc3_)
                           {
                           }
                           §§goto(addr112);
                        }
                        if(!§[!c§)
                        {
                           addr112:
                           throw e;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr59);
         }
         §§goto(addr62);
      }
      
      private function §]!Q§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4!P§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() <= 0)
               {
                  if(_loc3_ || _loc1_)
                  {
                     return 1;
                     addr47:
                  }
               }
               §§push(Number(Math.max(0,§!!L§)));
            }
            var _loc1_:* = §§pop();
            if(_loc3_ || this)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§4!P§));
            }
            return this.§]!q§(_loc1_,0,1,this.§4!P§);
         }
         §§goto(addr47);
      }
   }
}
