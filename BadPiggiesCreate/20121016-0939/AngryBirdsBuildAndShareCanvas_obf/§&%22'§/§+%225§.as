package §&"'§
{
   public class §+"5§ extends §1!X§ implements §@5§
   {
       
      
      private var §^!F§:Number;
      
      private var §`>§:Boolean;
      
      private var §93§:Boolean;
      
      private var §'!T§:Function;
      
      private var §;D§:Object;
      
      private var §>!;§:Object;
      
      private var §?",§:Object;
      
      public function §+"5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc7_)
               {
                  if(§§pop() <= 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr118:
                        }
                        while(true)
                        {
                           param4 = §§pop();
                           addr120:
                           while(true)
                           {
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(!(_loc7_ || this))
                           {
                              continue loop1;
                           }
                           loop6:
                           while(true)
                           {
                              this.§93§ = true;
                              loop7:
                              while(!_loc6_)
                              {
                                 addr65:
                                 if(!(_loc6_ && param2))
                                 {
                                    this.§`>§ = false;
                                    if(!(_loc7_ || param2))
                                    {
                                       continue;
                                    }
                                    addr36:
                                    if(_loc7_ || param3)
                                    {
                                       if(_loc6_ && this)
                                       {
                                          break loop6;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §7A§ = 0;
                                       break loop7;
                                       §§goto(addr36);
                                    }
                                    continue loop1;
                                    addr99:
                                 }
                                 while(true)
                                 {
                                    this.§'!T§ = param5;
                                    §§goto(addr99);
                                    §§goto(addr65);
                                 }
                              }
                              continue loop5;
                           }
                           §§goto(addr120);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§^!F§ = §§pop();
                     §§goto(addr108);
                     §§goto(addr120);
                  }
               }
               §§goto(addr118);
            }
         }
         §§goto(addr120);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§`>§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§93§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.stop();
            do
            {
               this.§;D§ = null;
               do
               {
                  this.§?",§ = null;
                  do
                  {
                     this.§>!;§ = null;
                  }
                  while(_loc1_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §'!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §7A§ = -§0!<§;
            do
            {
               this.§`>§ = false;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §="%§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!(_loc7_ && this))
            {
               §§push(param2[_loc4_] == null);
               if(_loc8_ || param1)
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     addr129:
                     §§push(§§pop());
                     loop9:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr141:
                           while(true)
                           {
                              §§pop();
                              addr142:
                              while(true)
                              {
                                 addr94:
                                 while(true)
                                 {
                                    §§push(param1[_loc4_] is Number);
                                 }
                                 continue loop0;
                              }
                           }
                           addr141:
                        }
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 continue loop9;
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(!(_loc7_ && param1))
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param2[_loc4_] is Number);
                                       if(!(_loc8_ || this))
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc8_ || param2))
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   _loc3_[_loc4_] = param1[_loc4_];
                                                   break loop8;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr142);
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr63);
                           }
                           continue loop9;
                        }
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr129);
            }
            §§goto(addr79);
         }
         return _loc3_;
      }
      
      private function §""+§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!(_loc8_ && this))
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(!_loc9_)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc9_ || param2)
         {
            this.§?",§ = _loc3_;
            do
            {
               this.§>!;§ = _loc4_;
            }
            while(!_loc9_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§`>§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§`>§ = true;
               }
               loop0:
               while(true)
               {
                  §&6§ = null;
                  addr62:
                  while(true)
                  {
                     §7A§ = this.§^!F§;
                     if(_loc1_ || this)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr62);
      }
      
      public function §9g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!this.§`>§)
            {
               if(!_loc2_)
               {
                  this.§`>§ = true;
                  addr75:
                  while(true)
                  {
                     §7A§ = this.§^!F§;
                     while(_loc1_)
                     {
                        this.§6?§();
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr24);
                        }
                     }
                  }
                  addr75:
               }
               §§goto(addr75);
            }
            addr24:
            return;
         }
         §§goto(addr75);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§93§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§93§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§93§);
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
                        addr154:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §7A§ += param1;
                           loop6:
                           while(!_loc3_)
                           {
                              if(§7A§ >= this.§^!F§)
                              {
                                 loop7:
                                 while(_loc2_ || param1)
                                 {
                                    if(!§4!Y§)
                                    {
                                       §7A§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             while(true)
                                             {
                                                this.§6?§();
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               return;
                                                            }
                                                            addr146:
                                                            continue;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr96:
                                                      while(!(_loc3_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            §7A§ = this.§^!F§;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr107:
                                                   while(true)
                                                   {
                                                      this.§`>§ = true;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             return;
                                             addr36:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr36);
                                             §§goto(addr107);
                                          }
                                       }
                                    }
                                    §§goto(addr96);
                                 }
                                 continue loop5;
                              }
                              §§goto(addr36);
                           }
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr146);
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §6?§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc4_ && this))
            {
               addr39:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§-""§());
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  var _loc2_:int = 0;
                  if(_loc5_)
                  {
                     var _loc3_:* = this.§?",§;
                     if(!(_loc4_ && _loc1_))
                     {
                        for(attribute in _loc3_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        addr150:
                        return;
                        addr105:
                        addr108:
                        addr109:
                     }
                     while(true)
                     {
                        this.§;D§[attribute] = this.§>!;§[attribute] + this.§?",§[attribute] * timeValue;
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr109);
            }
            catch(e:Error)
            {
               if(_loc5_)
               {
                  §`>§ = true;
                  if(!(_loc4_ && this))
                  {
                     if(§<!y§)
                     {
                     }
                  }
               }
               throw e;
            }
            §§goto(addr150);
         }
         §§goto(addr39);
      }
      
      private function §1!m§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(this.isCompleted);
            if(!(_loc4_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        addr53:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(§&6§ == null);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr76:
                              §§push(!§§pop());
                           }
                        }
                        try
                        {
                           addr78:
                           §&6§();
                           if(_loc3_)
                           {
                              §&6§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(_loc3_)
                           {
                              §&6§ = null;
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr121);
                           }
                           if(!§<!y§)
                           {
                              addr121:
                              throw e;
                           }
                        }
                        §§goto(addr126);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr78);
                  }
                  addr126:
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr76);
         }
         §§goto(addr78);
      }
      
      private function §-""§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§^!F§);
            if(!_loc3_)
            {
               if(§§pop() <= 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr41);
                  }
               }
               §§push(Number(Math.max(0,§7A§)));
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               _loc1_ = Number(Math.min(_loc1_,this.§^!F§));
            }
            return this.§'!T§(_loc1_,0,1,this.§^!F§);
         }
         addr41:
         return 1;
      }
   }
}
