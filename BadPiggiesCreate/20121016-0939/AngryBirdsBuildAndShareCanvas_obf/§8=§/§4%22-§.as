package §8=§
{
   import §2p§.§1>§;
   import flash.utils.Dictionary;
   
   public class §4"-§ implements §36§
   {
       
      
      protected var §!i§:§1>§ = null;
      
      protected var §,_§:Dictionary;
      
      protected var §?"3§:Number = 0.0;
      
      protected var § "&§:Boolean = false;
      
      protected var §"!c§:Object = null;
      
      protected var §[m§:Dictionary;
      
      protected var §^"?§:Dictionary;
      
      protected var §-!m§:Dictionary;
      
      public function §4"-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§-!m§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            this.§,_§ = new Dictionary();
            while(true)
            {
               this.§^"?§ = new Dictionary();
               while(_loc1_)
               {
                  this.§[m§ = new Dictionary();
                  continue loop0;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§"!c§[param1] = param2;
         }
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§,_§[param1] = param2;
         }
         do
         {
            this.§^"?§["dest." + param1] = param3;
         }
         while(!_loc5_);
         
      }
      
      protected function copyFrom(param1:§4"-§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4"-§ = param1 as §4"-§;
         if(_loc4_ || _loc2_)
         {
            this.§"!c§ = _loc2_.§"!c§;
            while(true)
            {
               this.§!i§ = _loc2_.§!i§;
            }
            addr96:
         }
         loop1:
         do
         {
            this.§&'§(this.§-!m§,_loc2_.§-!m§);
            while(true)
            {
               this.§&'§(this.§,_§,_loc2_.§,_§);
               for(; !_loc3_; this.§&'§(this.§^"?§,_loc2_.§^"?§),if(!_loc3_)
               {
                  continue loop1;
               })
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr96);
               }
            }
         }
         while(!_loc4_);
         
      }
      
      public function update(param1:Number) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc9_:* = null;
         if(_loc12_ || _loc2_)
         {
            if(!this.§ "&§)
            {
               if(!_loc13_)
               {
                  addr35:
                  this.resolveValues();
               }
            }
            var _loc3_:Object = this.§"!c§;
            var _loc4_:§1>§ = this.§!i§;
            var _loc5_:Dictionary = this.§,_§;
            var _loc6_:Dictionary = this.§-!m§;
            var _loc8_:Dictionary = this.§[m§;
            loop0:
            for(_loc9_ in _loc5_)
            {
               do
               {
                  §§push(param1);
                  loop2:
                  while(§§pop() < _loc8_[_loc9_])
                  {
                     §§push(Number(_loc6_[_loc9_]));
                     if(!(_loc12_ || _loc2_))
                     {
                        continue;
                     }
                     _loc7_ = §§pop();
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           break loop2;
                        }
                        _loc3_[_loc9_] = _loc4_.§6^§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
                        if(_loc12_ || _loc3_)
                        {
                           if(!(_loc12_ || param1))
                           {
                              break;
                           }
                           if(false)
                           {
                              addr102:
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr102);
                  }
               }
               while(_loc13_);
               
               _loc3_[_loc9_] = _loc5_[_loc9_];
               §§goto(addr134);
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §&'§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(!_loc6_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      public function get duration() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§ "&§)
            {
               if(!_loc2_)
               {
                  addr43:
                  this.resolveValues();
               }
            }
            return this.§?"3§;
         }
         §§goto(addr43);
      }
      
      protected function newInstance() : §4"-§
      {
         return new §4"-§();
      }
      
      public function set §!!T§(param1:§1>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!i§ = param1;
         }
      }
      
      public function get target() : Object
      {
         return this.§"!c§;
      }
      
      public function clone() : §+?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4"-§ = this.newInstance();
         if(!_loc2_)
         {
            if(_loc1_ != null)
            {
               if(_loc3_ || _loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!c§ = param1;
         }
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§-!m§[param1] = param2;
         }
         do
         {
            this.§^"?§["source." + param1] = param3;
         }
         while(!_loc4_);
         
      }
      
      protected function resolveValues() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc1_:String = null;
         var _loc7_:* = NaN;
         var _loc2_:Object = this.§"!c§;
         var _loc3_:Dictionary = this.§-!m§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§^"?§;
         var _loc6_:Dictionary = this.§[m§;
         §§push(0);
         if(_loc11_)
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
            if(!_loc12_)
            {
               if(!§§pop())
               {
                  if(!_loc12_)
                  {
                     if(_loc11_)
                     {
                        if(_loc11_)
                        {
                           _loc9_ = 0;
                           if(!(_loc12_ && this))
                           {
                              addr126:
                              _loc10_ = _loc4_;
                              addr174:
                              if(_loc11_ || _loc1_)
                              {
                                 addr292:
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 break;
                              }
                              §§push(_loc7_);
                              if(!(_loc12_ && _loc1_))
                              {
                                 addr182:
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    addr190:
                                    _loc8_ = Number(§§pop());
                                    addr191:
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       addr198:
                                       if(_loc11_ || this)
                                       {
                                          addr205:
                                          if(false)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                _loc6_[_loc1_] = _loc7_;
                                                addr212:
                                                loop18:
                                                while(true)
                                                {
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      addr219:
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               if(§§pop() >= _loc7_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               if(!_loc12_)
                                                               {
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     §§goto(addr174);
                                                                  }
                                                                  while(_loc11_ || _loc2_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     addr227:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!i§.§0G§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]));
                                                                        addr241:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr242:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              §§goto(addr243);
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  addr243:
                                                                  addr268:
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_[_loc1_] = _loc2_[_loc1_];
                                                         §§goto(addr219);
                                                      }
                                                      addr275:
                                                   }
                                                   while(_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc5_["dest." + _loc1_])
                                                         {
                                                            while(true)
                                                            {
                                                               _loc4_[_loc1_] += _loc2_[_loc1_];
                                                               §§goto(addr268);
                                                               break loop18;
                                                            }
                                                            addr258:
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                   }
                                                   addr291:
                                                   while(true)
                                                   {
                                                      if(_loc3_[_loc1_] == undefined)
                                                      {
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr303);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr294);
               }
               else
               {
                  _loc1_ = §§nextname(_loc9_,_loc10_);
                  loop1:
                  while(true)
                  {
                     addr84:
                     while(true)
                     {
                        if(_loc4_[_loc1_] == undefined)
                        {
                           while(true)
                           {
                              _loc4_[_loc1_] = _loc2_[_loc1_];
                              addr96:
                              while(true)
                              {
                              }
                           }
                           addr90:
                        }
                        while(_loc5_["source." + _loc1_])
                        {
                           if(_loc11_)
                           {
                              if(_loc11_)
                              {
                                 _loc3_[_loc1_] += _loc2_[_loc1_];
                                 addr73:
                                 if(!_loc12_)
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr73);
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
            §§goto(addr291);
            §§goto(addr292);
         }
         addr294:
         addr295:
         if(!(_loc12_ && this))
         {
            this.§?"3§ = _loc8_;
            do
            {
               this.§ "&§ = true;
            }
            while(_loc12_ && this);
            
            addr303:
         }
      }
      
      public function get §!!T§() : §1>§
      {
         return this.§!i§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§"!c§[param1];
      }
   }
}
