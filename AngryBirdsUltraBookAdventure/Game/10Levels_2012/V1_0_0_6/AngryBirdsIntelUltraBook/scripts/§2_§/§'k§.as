package §2_§
{
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   
   public class §'k§
   {
       
      
      private var §2O§:Sprite;
      
      private var §?B§:§4!f§;
      
      private var §#!%§:Boolean;
      
      public function §'k§(param1:Sprite, param2:§4!f§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§2O§ = param1;
               loop1:
               while(_loc4_ || param2)
               {
                  while(true)
                  {
                     this.§?B§ = param2;
                     do
                     {
                        this.§#!%§ = param3;
                     }
                     while(!(_loc4_ || this));
                     
                     if(!(_loc5_ && param3))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§2O§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§2O§);
               if(!(_loc1_ && _loc1_))
               {
                  continue loop0;
               }
            }
            addr53:
            return;
         }
      }
      
      public function §6%§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§1C§ = null;
         var _loc7_:§-§ = null;
         if(!(_loc10_ && this))
         {
            this.clear();
         }
         var _loc2_:Array = this.§@9§(this.§0! §(param1));
         §§push(this.§2p§(_loc2_));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§#!L§(_loc2_));
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_)
         {
            §§push(-§§pop());
            if(!_loc10_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §-§(_loc6_.texture,this.§#!%§)).scaleX = _loc6_.scale;
            if(_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
            }
            loop1:
            while(true)
            {
               this.§2O§.addChild(_loc7_);
               while(true)
               {
                  _loc7_.x = _loc5_;
                  loop3:
                  while(!(_loc10_ && this))
                  {
                     continue loop1;
                     do
                     {
                        §§push(_loc7_);
                        §§push(-_loc4_);
                        if(_loc11_ || _loc3_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        do
                        {
                           §§push(_loc5_);
                           if(_loc11_)
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                        }
                        while(_loc10_ && param1);
                        
                        if(_loc11_ || this)
                        {
                           continue;
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
         }
         if(!_loc10_)
         {
            this.§2O§.flatten();
         }
      }
      
      private function §0! §(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(!_loc4_)
         {
            if(param1 <= 0)
            {
               if(_loc5_ || param1)
               {
                  _loc2_.push(0);
                  addr73:
                  _loc2_.reverse();
                  addr146:
               }
               §§goto(addr146);
            }
            else
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(_loc5_ || this)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           if(_loc5_ || param1)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc5_ || param1))
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr73);
                                    }
                                    else
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(10);
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(int(§§pop()));
                                                   while(!(_loc5_ || _loc3_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   param1 = §§pop();
                                                   addr103:
                                                   while(true)
                                                   {
                                                      _loc2_.push(_loc3_);
                                                   }
                                                   addr103:
                                                   addr121:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      continue loop1;
                                                   }
                                                   addr130:
                                                }
                                             }
                                             addr94:
                                          }
                                          §§goto(addr103);
                                       }
                                    }
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr121);
                                 }
                                 continue;
                              }
                              addr129:
                              §§push(param1 % 10);
                              §§goto(addr130);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr103);
               }
            }
            return _loc2_;
         }
         §§goto(addr73);
      }
      
      private function §@9§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§1C§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§?B§.getFrame(_loc3_);
            if(_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §2p§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§1C§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               §§push(_loc2_);
               if(_loc7_ || _loc2_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §#!L§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§1C§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_)
            {
               if(_loc4_)
               {
                  if(_loc9_ || param1)
                  {
                     §§push(_loc5_.pivotY);
                     while(true)
                     {
                        addr226:
                        §§push(int(-§§pop()));
                        addr227:
                        while(true)
                        {
                           _loc2_ = §§pop();
                        }
                     }
                     addr225:
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                  }
                  addr228:
               }
               else
               {
                  §§push(_loc5_.pivotY);
                  if(!(_loc8_ && param1))
                  {
                     if(_loc9_)
                     {
                        §§push(-§§pop());
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr166:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc9_ || param1)
                                 {
                                    §§push(_loc5_.pivotY);
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                       loop4:
                                       while(_loc9_ || _loc2_)
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr186:
                                             loop5:
                                             while(true)
                                             {
                                                addr41:
                                                while(true)
                                                {
                                                   §§push(_loc5_.pivotY);
                                                   if(_loc9_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(_loc5_.texture.height);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc9_ || param1)
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               addr139:
                                                               addr139:
                                                               §§push(_loc5_.height);
                                                            }
                                                            addr143:
                                                            §§push(int(§§pop() + §§pop()));
                                                            if(!_loc8_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr146:
                                                               if(!_loc8_)
                                                               {
                                                                  addr148:
                                                                  if(false)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr189:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + _loc5_.height);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr225);
                                                               }
                                                            }
                                                         }
                                                         addr209:
                                                         §§push(int(§§pop()));
                                                         while(_loc8_)
                                                         {
                                                            §§goto(addr227);
                                                            §§goto(addr209);
                                                         }
                                                         _loc3_ = §§pop();
                                                         addr213:
                                                         break;
                                                         addr210:
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr226);
                                       addr124:
                                       if(!(_loc9_ || this))
                                       {
                                          continue;
                                       }
                                       §§push(-§§pop());
                                       if(_loc9_ || this)
                                       {
                                          §§goto(addr139);
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr41);
                           }
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr185);
               }
               §§goto(addr189);
            }
            §§goto(addr148);
         }
         return _loc3_ - _loc2_;
      }
   }
}
