package §0§
{
   import flash.utils.Dictionary;
   
   public class §8L§ extends §#![§
   {
       
      
      protected var §8A§:Dictionary;
      
      protected var §`"#§:Dictionary;
      
      protected var §[l§:Object = null;
      
      protected var §=!9§:Dictionary;
      
      protected var §`v§:Dictionary;
      
      public function §8L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§`v§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§8A§ = new Dictionary();
               addr77:
               while(true)
               {
                  this.§`"#§ = new Dictionary();
                  addr59:
                  while(_loc1_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.§=!9§ = new Dictionary();
            while(_loc1_)
            {
               super();
               if(_loc2_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop3;
               }
               §§goto(addr77);
            }
            §§goto(addr59);
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§[l§[param1] = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§[l§ = param1;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§8A§[param1] = param2;
            do
            {
               this.§=!9§["dest." + param1] = param3;
            }
            while(!(_loc5_ || param3));
            
         }
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§`v§[param1] = param2;
         }
         do
         {
            this.§=!9§["source." + param1] = param3;
         }
         while(!(_loc4_ || param1));
         
      }
      
      override protected function newInstance() : §#![§
      {
         return new §8L§();
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(_loc6_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc8_:Vector.<Number> = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = null;
         §§push(1 - param1);
         if(!(_loc18_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§[l§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§`v§;
         var _loc7_:Dictionary = this.§`"#§;
         for(_loc14_ in _loc4_)
         {
            loop1:
            while(true)
            {
               addr106:
               while(true)
               {
                  §§push(Number(_loc5_[_loc14_]));
                  if(!(_loc18_ && _loc3_))
                  {
                     _loc6_ = §§pop();
                     if(_loc19_)
                     {
                        continue loop1;
                     }
                     while(true)
                     {
                        §§push(param1);
                        while(true)
                        {
                           if(_loc19_ || _loc2_)
                           {
                              §§push(_loc10_);
                              if(!(_loc18_ && _loc3_))
                              {
                                 §§push(§§pop() - §§pop() * (1 / _loc9_));
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                                 addr452:
                              }
                              while(true)
                              {
                                 if(_loc19_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop11:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          addr463:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             while(true)
                                             {
                                                if(!_loc18_)
                                                {
                                                   continue;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr416);
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr468);
                                    }
                                    addr467:
                                 }
                                 §§goto(addr481);
                                 §§goto(addr452);
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr466:
                           }
                           §§goto(addr467);
                        }
                     }
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr405);
               }
            }
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc1_:String = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc2_:Object = this.§[l§;
         var _loc3_:Dictionary = this.§`v§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§`"#§;
         var _loc9_:Dictionary = this.§=!9§;
         var _loc10_:* = 0;
         var _loc11_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(!_loc12_)
            {
               if(!§§pop())
               {
                  if(!_loc12_)
                  {
                     if(_loc13_ || _loc1_)
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc12_)
                           {
                              _loc10_ = §§pop();
                              if(!(_loc12_ && _loc1_))
                              {
                                 _loc11_ = _loc4_;
                                 if(_loc13_ || _loc2_)
                                 {
                                    addr235:
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    loop12:
                                    while(§§pop())
                                    {
                                       _loc1_ = §§nextname(_loc10_,_loc11_);
                                       §§push(uint((_loc6_ = _loc5_[_loc1_] as Vector.<Number>).length));
                                       if(!(_loc12_ && this))
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc12_)
                                          {
                                             continue;
                                          }
                                          §§push(uint(0));
                                          if(!(_loc12_ && _loc1_))
                                          {
                                             addr358:
                                             _loc8_ = §§pop();
                                             while(true)
                                             {
                                                addr321:
                                                while(true)
                                                {
                                                   addr370:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                   }
                                                }
                                             }
                                             addr369:
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop() >= _loc7_)
                                             {
                                                continue loop12;
                                             }
                                             if(_loc9_["cp." + _loc1_ + "." + _loc8_])
                                             {
                                                if(_loc12_)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc13_)
                                                {
                                                   _loc6_[_loc8_] += _loc2_[_loc1_];
                                                   loop14:
                                                   while(true)
                                                   {
                                                      addr291:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc13_ || _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(uint(§§pop() + 1));
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(_loc13_ || _loc1_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr291);
                                          }
                                       }
                                       §§goto(addr358);
                                    }
                                    return;
                                    addr376:
                                    addr375:
                                    addr374:
                                 }
                                 addr195:
                                 _loc4_[_loc1_] += _loc2_[_loc1_];
                                 if(false)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc3_[_loc1_] == undefined)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_[_loc1_] = _loc2_[_loc1_];
                                             addr219:
                                             addr234:
                                             loop10:
                                             while(_loc13_ || this)
                                             {
                                                while(_loc9_["dest." + _loc1_])
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!(_loc13_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr235);
                                             }
                                             while(true)
                                             {
                                                continue loop8;
                                                §§goto(addr219);
                                             }
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                                 §§goto(addr235);
                              }
                              addr256:
                              _loc11_ = _loc5_;
                              if(!_loc12_)
                              {
                                 §§goto(addr373);
                              }
                              §§goto(addr268);
                           }
                           addr253:
                           _loc10_ = §§pop();
                           if(!_loc12_)
                           {
                              §§goto(addr256);
                           }
                           §§goto(addr376);
                        }
                     }
                     §§goto(addr235);
                  }
                  addr246:
                  if(!_loc12_)
                  {
                     if(_loc13_)
                     {
                        §§goto(addr253);
                        §§push(0);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr256);
               }
               else
               {
                  _loc1_ = §§nextname(_loc10_,_loc11_);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc4_[_loc1_] == undefined)
                        {
                           continue loop1;
                        }
                        loop5:
                        while(_loc9_["source." + _loc1_])
                        {
                           addr62:
                           if(_loc13_ || _loc3_)
                           {
                              _loc3_[_loc1_] += _loc2_[_loc1_];
                           }
                           if(_loc13_ || this)
                           {
                              if(_loc13_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr114:
                           while(true)
                           {
                              continue loop5;
                              §§goto(addr62);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc12_ && this))
               {
                  §§goto(addr246);
               }
               §§goto(addr375);
            }
            else
            {
               _loc1_ = §§nextname(_loc10_,_loc11_);
               §§goto(addr234);
            }
         }
         §§goto(addr374);
      }
      
      public function §7!f§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§`"#§[param1] as Vector.<Number>) == null)
         {
            if(_loc7_)
            {
               this.§`"#§[param1] = _loc4_ = new Vector.<Number>();
               §§goto(addr56);
            }
            §§goto(addr61);
         }
         addr56:
         _loc4_.push(param2);
         if(_loc7_)
         {
            this.§=!9§["cp." + param1 + "." + _loc4_.length] = param3;
            addr61:
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§[l§[param1];
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§8L§ = param1 as §8L§;
         if(!(_loc4_ && _loc3_))
         {
            this.§[l§ = _loc2_.§[l§;
            while(true)
            {
               this.§ !+§(this.§`v§,_loc2_.§`v§);
               while(_loc3_)
               {
                  this.§ !+§(this.§8A§,_loc2_.§8A§);
                  do
                  {
                     this.§ !+§(this.§`"#§,_loc2_.§`"#§);
                     do
                     {
                        this.§ !+§(this.§=!9§,_loc2_.§=!9§);
                     }
                     while(_loc4_ && param1);
                     
                  }
                  while(!(_loc3_ || param1));
                  
                  if(!(_loc4_ && _loc2_))
                  {
                     return;
                     addr81:
                  }
               }
            }
         }
         §§goto(addr81);
      }
   }
}
