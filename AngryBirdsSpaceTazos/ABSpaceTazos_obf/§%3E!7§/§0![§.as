package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0![§ implements §`B§
   {
       
      
      private var §-`§:Vector.<§`B§>;
      
      private var §`"8§:Number;
      
      private var §%"&§:Boolean = false;
      
      private var §^§:Number = 1.0;
      
      public function §0![§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§`"8§ = 0;
               do
               {
                  this.§-`§ = new Vector.<§`B§>(0);
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc1_);
            
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^§ = param1;
         }
      }
      
      public function add(param1:§`B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  addr34:
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§pop();
                        addr70:
                        if(!_loc4_)
                        {
                           §§push(this.§-`§.indexOf(param1) == -1);
                        }
                        this.§-`§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr105:
                                 _loc2_.addEventListener(Event.§^m§,this.§<y§);
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr105);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                  }
                  §§goto(addr70);
               }
               addr111:
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr70);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%"&§ = param1;
         }
      }
      
      public function §;T§(param1:§`B§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§-`§.indexOf(param1);
         if(_loc5_ || _loc2_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_ || _loc3_)
               {
                  addr53:
                  this.§-`§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr90);
               }
               _loc3_.removeEventListener(Event.§^m§,this.§<y§);
            }
            addr90:
            return;
         }
         §§goto(addr53);
      }
      
      public function §1D§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§#k§ = null;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§-`§.length;
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§-`§[_loc3_] as §#k§));
               if(_loc5_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           addr83:
                           if(_loc4_.target == param1)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 this.§-`§.splice(_loc3_,1);
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                  }
               }
               §§goto(addr83);
            }
            return;
         }
         addr31:
      }
      
      public function §&""§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-`§.length = 0;
         }
      }
      
      public function §[O§(param1:Function, param2:Number, ... rest) : §8"?§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param1 == null)
            {
               if(_loc5_ || param2)
               {
                  return null;
               }
            }
         }
         var _loc4_:§8"?§ = new §8"?§(param1,param2,rest);
         if(_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!this.§%"&§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * this.§^§);
                     if(!_loc6_)
                     {
                        addr92:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     do
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§`"8§);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§`"8§ = §§pop();
                           loop3:
                           for(; this.§-`§.length == 0; if(!(_loc6_ && _loc2_))
                           {
                              continue loop1;
                           })
                           {
                              if(_loc5_ || param1)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 break loop2;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop2;
                              }
                           }
                           var _loc2_:int = this.§-`§.length;
                           var _loc3_:Vector.<§`B§> = this.§-`§.concat();
                           var _loc4_:int = 0;
                           while(true)
                           {
                              if(_loc4_ >= _loc2_)
                              {
                                 if(_loc6_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 _loc3_[_loc4_].advanceTime(param1);
                              }
                              _loc4_++;
                           }
                           return;
                        }
                        continue loop0;
                     }
                     while(_loc6_ && param1);
                     
                     if(!(_loc6_ && this))
                     {
                        return;
                     }
                     addr98:
                     return;
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr56);
      }
      
      private function §<y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;T§(param1.target as §`B§);
         }
      }
      
      public function get §'"G§() : Number
      {
         return this.§`"8§;
      }
   }
}
