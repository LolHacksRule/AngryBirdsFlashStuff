package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-RO§ implements §_-eI§
   {
       
      
      private var §_-Tx§:Vector.<§_-eI§>;
      
      private var §_-je§:Number;
      
      private var §_-A5§:Boolean = false;
      
      private var §_-0D2§:Number = 1.0;
      
      public function §_-RO§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§_-je§ = 0;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§_-Tx§ = new Vector.<§_-eI§>(0);
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-0D2§ = param1;
         }
      }
      
      public function add(param1:§_-eI§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1 == null);
            if(_loc4_ || this)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr54:
                        §§pop();
                        if(_loc4_ || this)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr85);
                     }
                  }
               }
               addr68:
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         addr62:
         if(this.§_-Tx§.indexOf(param1) == -1)
         {
            if(!_loc3_)
            {
               this.§_-Tx§.push(param1);
               addr85:
               _loc2_ = param1 as EventDispatcher;
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        _loc2_.addEventListener(Event.§_-rC§,this.§_-qg§);
                     }
                  }
               }
            }
            §§goto(addr85);
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-A5§ = param1;
         }
      }
      
      public function §_-Ob§(param1:§_-eI§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§_-Tx§.indexOf(param1);
         if(_loc5_ || _loc2_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_ || _loc3_)
               {
                  this.§_-Tx§.splice(_loc2_,1);
                  addr53:
               }
               _loc3_ = param1 as EventDispatcher;
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     if(_loc5_ || param1)
                     {
                        _loc3_.removeEventListener(Event.§_-rC§,this.§_-qg§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §_-FX§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§ for§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr32);
               }
            }
            var _loc2_:int = this.§_-Tx§.length;
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§_-Tx§[_loc3_] as § for§));
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(_loc4_.target == param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc6_ || this)
                  {
                     this.§_-Tx§.splice(_loc3_,1);
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            return;
         }
         addr32:
      }
      
      public function §_-Qn§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-Tx§.length = 0;
         }
      }
      
      public function §_-fX§(param1:Function, param2:Number, ... rest) : §_-K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            if(param1 == null)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr54);
               }
            }
            var _loc4_:§_-K§ = new §_-K§(param1,param2,rest);
            if(!_loc5_)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr54:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!this.§_-A5§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() * this.§_-0D2§);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  while(!(_loc6_ && _loc3_))
                  {
                     if(!(_loc6_ && param1))
                     {
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§_-je§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§_-je§ = §§pop();
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(this.§_-Tx§.length != 0)
                                    {
                                       break;
                                    }
                                    if(!(_loc6_ && this))
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                              var _loc2_:int = this.§_-Tx§.length;
                              var _loc3_:Vector.<§_-eI§> = this.§_-Tx§.concat();
                              var _loc4_:int = 0;
                              addr113:
                              if(_loc4_ >= _loc2_)
                              {
                                 if(_loc5_ || this)
                                 {
                                    if(_loc6_ && this)
                                    {
                                       _loc4_++;
                                       addr146:
                                       §§goto(addr113);
                                       addr154:
                                    }
                                    return;
                                 }
                                 §§goto(addr146);
                              }
                              _loc3_[_loc4_].advanceTime(param1);
                              §§goto(addr154);
                           }
                        }
                        addr94:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      private function §_-qg§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-Ob§(param1.target as §_-eI§);
         }
      }
      
      public function get §_-0EP§() : Number
      {
         return this.§_-je§;
      }
   }
}
