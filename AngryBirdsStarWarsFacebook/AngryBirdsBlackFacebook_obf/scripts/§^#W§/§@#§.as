package §^#W§
{
   public dynamic class §@#§
   {
       
      
      public var §8!c§:Object;
      
      private var §8"g§:Vector.<String>;
      
      private var §]#$§:Vector.<String>;
      
      public function §@#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8!c§ = new Object();
            loop0:
            while(true)
            {
               this.§8"g§ = new Vector.<String>();
               while(true)
               {
                  this.§]#$§ = new Vector.<String>();
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           super();
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §]#Z§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§]#$§.indexOf(param1.toLowerCase());
         if(_loc4_)
         {
            if(_loc2_ == -1)
            {
               if(!_loc3_)
               {
                  §§goto(addr51);
               }
            }
            return this.§8"g§[_loc2_];
         }
         addr51:
         throw new Error("No result");
      }
      
      public function §<#T§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§8"g§.push(param1);
            if(!_loc3_)
            {
               this.§]#$§.push(param1.toLowerCase());
               addr30:
            }
            var _loc2_:Array = param1.split("");
            if(_loc4_ || this)
            {
               _loc2_.push(new String());
               do
               {
                  this.§!#V§(_loc2_,this.§8!c§);
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function contains(param1:String) : Boolean
      {
         return this.§]#$§.indexOf(param1.toLowerCase(),0) > -1;
      }
      
      private function §!#V§(param1:Array, param2:Object) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop()[§§pop()] == undefined)
                  {
                     if(_loc4_ || param1)
                     {
                        return;
                     }
                     addr35:
                     §§push(param1);
                     §§push(0);
                  }
                  §§goto(addr35);
               }
               var _loc3_:String = §§pop()[§§pop()];
               if(_loc4_ || this)
               {
                  if(!param2[_loc3_])
                  {
                     if(!_loc5_)
                     {
                        addr97:
                        param2[_loc3_] = new Object();
                     }
                     while(true)
                     {
                        §§goto(addr62);
                     }
                  }
                  addr62:
                  while(true)
                  {
                     this.§!#V§(param1.slice(1,param1.length),param2[_loc3_]);
                     if(_loc4_ || param2)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr97);
            }
         }
         §§goto(addr35);
      }
      
      public function §#"_§(param1:Array) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = null;
         var _loc6_:* = uint(0);
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:* = null;
         var _loc2_:* = "";
         var _loc3_:uint = param1.length;
         var _loc4_:Object = this.§8!c§;
         if(!(_loc13_ && _loc2_))
         {
            if(_loc3_ < 1)
            {
               if(_loc14_)
               {
                  §§goto(addr90);
               }
            }
            loop0:
            while(true)
            {
               while(_loc6_ < _loc3_)
               {
                  §§push(param1[_loc6_]);
                  if(!(_loc13_ && _loc3_))
                  {
                     _loc5_ = §§pop();
                     if(!_loc13_)
                     {
                        §§push(Boolean(_loc4_[_loc5_.toUpperCase()]));
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                              if(_loc14_)
                              {
                                 addr62:
                                 §§pop();
                                 if(_loc14_)
                                 {
                                    if(false)
                                    {
                                       continue loop0;
                                    }
                                    addr191:
                                    §§push(Boolean(_loc4_[_loc5_.toLowerCase()]));
                                    if(_loc14_)
                                    {
                                       addr100:
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             addr103:
                                             _loc8_ = _loc4_[_loc5_.toUpperCase()];
                                             _loc9_ = _loc4_[_loc5_.toLowerCase()];
                                             _loc4_ = this.§2#Z§(_loc9_,_loc8_);
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                addr181:
                                                §§push(_loc6_);
                                                if(!_loc13_)
                                                {
                                                   §§push(uint(§§pop() + 1));
                                                }
                                                _loc6_ = §§pop();
                                             }
                                             continue;
                                          }
                                       }
                                       else if(_loc4_[_loc5_.toUpperCase()])
                                       {
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             _loc4_ = _loc4_[_loc5_.toUpperCase()];
                                          }
                                          §§goto(addr181);
                                       }
                                       else
                                       {
                                          if(!_loc4_[_loc5_.toLowerCase()])
                                          {
                                             §§goto(addr178);
                                          }
                                          if(!(_loc14_ || _loc3_))
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr181);
                                       §§goto(addr181);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          while(§§pop())
                                          {
                                             §§push(false);
                                             if(!(_loc14_ || this))
                                             {
                                                continue;
                                             }
                                             _loc7_ = §§pop();
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                var _loc11_:int = 0;
                                                var _loc12_:* = _loc4_;
                                                if(_loc14_ || param1)
                                                {
                                                   while(§§hasnext(_loc12_,_loc11_))
                                                   {
                                                      §§push(§§nextname(_loc11_,_loc12_));
                                                      if(!_loc13_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            if(this.§"!g§(_loc4_))
                                                            {
                                                               addr253:
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop() + _loc10_);
                                                                  }
                                                               }
                                                               _loc4_ = _loc4_[_loc10_];
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  _loc7_ = true;
                                                               }
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      _loc2_ = §§pop();
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr253);
                                             }
                                          }
                                          return _loc2_;
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr181);
                  }
                  addr178:
                  return _loc2_;
               }
               §§goto(addr191);
            }
         }
         addr90:
         return _loc2_;
      }
      
      private function §2#Z§(param1:Object, param2:Object) : Object
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc3_:Object = new Object();
         var _loc6_:int = 0;
         var _loc7_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop())
               {
                  _loc4_ = §§nextname(_loc6_,_loc7_);
                  if(!(_loc9_ && this))
                  {
                     _loc3_[_loc4_] = param1[_loc4_];
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(_loc8_ || this)
                  {
                     if(!(_loc9_ && param1))
                     {
                        _loc6_ = 0;
                        if(_loc8_)
                        {
                           _loc7_ = param2;
                           if(_loc8_ || param1)
                           {
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 break loop0;
                              }
                              addr204:
                              return _loc3_;
                              addr200:
                              addr203:
                              addr202:
                           }
                           loop9:
                           while(true)
                           {
                              if(false)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param2[_loc5_] == undefined);
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr134:
                                             §§push(!§§pop());
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         _loc3_[_loc5_] = this.§2#Z§(_loc3_[_loc5_],param2[_loc5_]);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc3_[_loc5_] = param2[_loc5_];
                                                      if(_loc8_)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      break;
                                                   }
                                                   addr181:
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                addr163:
                                                if(_loc8_ || param1)
                                                {
                                                   §§goto(addr200);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_[_loc5_] == undefined);
                                                   §§goto(addr163);
                                                }
                                                addr141:
                                                addr199:
                                             }
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                break loop7;
                                                §§goto(addr134);
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr181);
                                       }
                                       addr180:
                                    }
                                    §§goto(addr134);
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr141);
                                 }
                              }
                              §§goto(addr200);
                           }
                        }
                        §§goto(addr203);
                     }
                  }
                  §§goto(addr204);
               }
               §§goto(addr202);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc5_ = §§nextname(_loc6_,_loc7_);
               §§goto(addr199);
            }
            §§goto(addr204);
         }
      }
      
      private function §"!g§(param1:Object) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:* = Number(0);
         loop0:
         for(_loc3_ in param1)
         {
            loop1:
            do
            {
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(§§pop() <= 0)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        if(!(_loc6_ || _loc2_))
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break loop3;
                           }
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
            while(!_loc6_);
            
            return false;
         }
         return true;
      }
   }
}
