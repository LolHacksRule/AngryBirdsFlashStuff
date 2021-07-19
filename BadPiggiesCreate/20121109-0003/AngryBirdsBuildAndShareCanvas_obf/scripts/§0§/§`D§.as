package §0§
{
   import §0x§.§?"3§;
   import flash.utils.Dictionary;
   
   public class §`D§ implements §,l§
   {
       
      
      protected var §#"+§:§?"3§ = null;
      
      protected var §8A§:Dictionary;
      
      protected var §2!d§:Number = 0.0;
      
      protected var § +§:Boolean = false;
      
      protected var §[l§:Object = null;
      
      protected var §!"-§:Dictionary;
      
      protected var §=!9§:Dictionary;
      
      protected var §`v§:Dictionary;
      
      public function §`D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`v§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§8A§ = new Dictionary();
               while(true)
               {
                  this.§=!9§ = new Dictionary();
                  addr58:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  super();
                  addr65:
                  if(_loc2_ && _loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           while(true)
                           {
                              this.§!"-§ = new Dictionary();
                              continue loop3;
                           }
                           return;
                           addr35:
                           addr71:
                        }
                        §§goto(addr58);
                     }
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr71);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§[l§[param1] = param2;
         }
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§8A§[param1] = param2;
         }
         do
         {
            this.§=!9§["dest." + param1] = param3;
         }
         while(!_loc5_);
         
      }
      
      protected function copyFrom(param1:§`D§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`D§ = param1 as §`D§;
         if(_loc3_ || _loc3_)
         {
            this.§[l§ = _loc2_.§[l§;
            loop0:
            while(true)
            {
               this.§#"+§ = _loc2_.§#"+§;
               while(true)
               {
                  this.§ !+§(this.§`v§,_loc2_.§`v§);
                  while(!_loc4_)
                  {
                     continue loop0;
                     this.§ !+§(this.§8A§,_loc2_.§8A§);
                     do
                     {
                        this.§ !+§(this.§=!9§,_loc2_.§=!9§);
                     }
                     while(!_loc3_);
                     
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                        addr59:
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function update(param1:Number) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc9_:* = null;
         if(_loc12_ || this)
         {
            if(!this.§ +§)
            {
               if(_loc12_)
               {
                  addr35:
                  this.resolveValues();
               }
            }
            var _loc3_:Object = this.§[l§;
            var _loc4_:§?"3§ = this.§#"+§;
            var _loc5_:Dictionary = this.§8A§;
            var _loc6_:Dictionary = this.§`v§;
            var _loc8_:Dictionary = this.§!"-§;
            loop0:
            for(_loc9_ in _loc5_)
            {
               loop1:
               do
               {
                  §§push(param1);
                  while(§§pop() < _loc8_[_loc9_])
                  {
                     §§push(Number(_loc6_[_loc9_]));
                     if(!_loc13_)
                     {
                        _loc7_ = §§pop();
                        do
                        {
                           _loc3_[_loc9_] = _loc4_.§85§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
                        }
                        while(!_loc12_);
                        
                        if(!_loc13_)
                        {
                           if(!(_loc12_ || _loc3_))
                           {
                              break;
                           }
                           if(false)
                           {
                              addr99:
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  _loc3_[_loc9_] = _loc5_[_loc9_];
               }
               while(_loc13_ && param1);
               
               §§goto(addr99);
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(!(_loc6_ && this))
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      public function get duration() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!this.§ +§)
            {
               if(!(_loc1_ && this))
               {
                  this.resolveValues();
               }
            }
         }
         return this.§2!d§;
      }
      
      protected function newInstance() : §`D§
      {
         return new §`D§();
      }
      
      public function set §3!`§(param1:§?"3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#"+§ = param1;
         }
      }
      
      public function get target() : Object
      {
         return this.§[l§;
      }
      
      public function clone() : §-!G§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`D§ = this.newInstance();
         if(!(_loc2_ && this))
         {
            if(_loc1_ != null)
            {
               if(!_loc2_)
               {
                  addr53:
                  _loc1_.copyFrom(this);
               }
            }
            return _loc1_;
         }
         §§goto(addr53);
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[l§ = param1;
         }
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`v§[param1] = param2;
            do
            {
               this.§=!9§["source." + param1] = param3;
            }
            while(!_loc5_);
            
         }
      }
      
      protected function resolveValues() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc1_:String = null;
         var _loc7_:* = NaN;
         var _loc2_:Object = this.§[l§;
         var _loc3_:Dictionary = this.§`v§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§=!9§;
         var _loc6_:Dictionary = this.§!"-§;
         §§push(0);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = 0;
         var _loc10_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc10_,_loc9_));
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(!_loc11_)
                  {
                     if(_loc12_)
                     {
                        if(!(_loc11_ && _loc3_))
                        {
                           _loc9_ = 0;
                           if(_loc12_ || this)
                           {
                              addr137:
                              _loc10_ = _loc4_;
                              if(!_loc11_)
                              {
                                 addr288:
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 break;
                              }
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc5_["dest." + _loc1_])
                                    {
                                       if(!(_loc11_ && this))
                                       {
                                          _loc4_[_loc1_] += _loc2_[_loc1_];
                                       }
                                       loop11:
                                       while(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§#"+§.§3!z§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]));
                                             loop13:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop14:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         _loc6_[_loc1_] = _loc7_;
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  if(§§pop() < _loc7_)
                                                                  {
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr173:
                                                                        if(!(_loc11_ && _loc1_))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc12_ || _loc1_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc12_ || _loc1_)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc3_[_loc1_] = _loc2_[_loc1_];
                                                                           break loop16;
                                                                           §§goto(addr173);
                                                                        }
                                                                     }
                                                                     addr199:
                                                                     if(!(_loc12_ || _loc3_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc11_ && _loc3_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               break;
                                                            }
                                                            continue loop11;
                                                         }
                                                         _loc8_ = §§pop();
                                                         §§goto(addr199);
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc3_[_loc1_] != undefined)
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr273);
                                       }
                                       addr287:
                                    }
                                    §§goto(addr223);
                                 }
                              }
                           }
                           addr291:
                           if(_loc12_ || this)
                           {
                              this.§2!d§ = _loc8_;
                           }
                        }
                        do
                        {
                           this.§ +§ = true;
                        }
                        while(_loc11_ && _loc3_);
                        
                        return;
                     }
                     §§goto(addr137);
                  }
                  addr290:
                  §§goto(addr291);
               }
               else
               {
                  _loc1_ = §§nextname(_loc9_,_loc10_);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc4_[_loc1_] == undefined)
                        {
                           while(!_loc11_)
                           {
                              _loc4_[_loc1_] = _loc2_[_loc1_];
                              while(true)
                              {
                              }
                           }
                           continue loop1;
                           addr94:
                        }
                        while(_loc5_["source." + _loc1_])
                        {
                           if(_loc12_ || _loc1_)
                           {
                              if(!(_loc11_ && _loc3_))
                              {
                                 _loc3_[_loc1_] += _loc2_[_loc1_];
                                 addr84:
                                 if(!_loc11_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 §§goto(addr94);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr84);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc1_ = §§nextname(_loc9_,_loc10_);
            §§goto(addr287);
            §§goto(addr288);
         }
         §§goto(addr290);
      }
      
      public function get §3!`§() : §?"3§
      {
         return this.§#"+§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§[l§[param1];
      }
   }
}
