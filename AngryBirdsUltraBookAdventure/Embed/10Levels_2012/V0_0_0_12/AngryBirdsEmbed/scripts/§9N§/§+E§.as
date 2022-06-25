package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+E§ implements §!o§
   {
       
      
      private var §2;§:Vector.<§!o§>;
      
      private var §1r§:Number;
      
      private var §;-§:Boolean = false;
      
      private var §4p§:Number = 1.0;
      
      public function §+E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§1r§ = 0;
               if(!_loc2_)
               {
                  addr42:
                  this.§2;§ = new Vector.<§!o§>(0);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4p§ = param1;
         }
      }
      
      public function add(param1:§!o§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_)
         {
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_ || this)
               {
                  addr35:
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§pop();
                        addr81:
                        if(_loc4_ || this)
                        {
                           §§push(this.§2;§.indexOf(param1) == -1);
                        }
                        this.§2;§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 addr101:
                                 _loc2_.addEventListener(Event.§0=§,this.§7Z§);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr101);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr81);
               }
               addr107:
               return;
            }
            §§goto(addr35);
         }
         §§goto(addr81);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;-§ = param1;
         }
      }
      
      public function §[D§(param1:§!o§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§2;§.indexOf(param1);
         if(_loc4_ || this)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr62:
                  this.§2;§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                        _loc3_.removeEventListener(Event.§0=§,this.§7Z§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §'3§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&l§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§2;§.length;
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§2;§[_loc3_] as §&l§));
               if(_loc5_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        addr81:
                        §§pop();
                        if(_loc5_)
                        {
                           addr88:
                           if(_loc4_.target == param1)
                           {
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              addr106:
                              this.§2;§.splice(_loc3_,1);
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                           }
                           §§push(_loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr81);
            }
            return;
         }
         addr31:
      }
      
      public function §[!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2;§.length = 0;
         }
      }
      
      public function §7G§(param1:Function, param2:Number, ... rest) : §!H§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§!H§ = new §!H§(param1,param2,rest);
         if(_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            if(this.§;-§)
            {
               return;
            }
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * this.§4p§);
               if(_loc6_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr45);
            }
            §§goto(addr75);
         }
         addr45:
         §§push(this);
         §§push(this.§1r§);
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§1r§ = §§pop();
         if(this.§2;§.length == 0)
         {
            if(!(_loc5_ && _loc2_))
            {
               addr75:
               return;
            }
         }
         var _loc2_:int = this.§2;§.length;
         var _loc3_:Vector.<§!o§> = this.§2;§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            if(!(_loc5_ && _loc2_))
            {
               _loc4_++;
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
            }
         }
      }
      
      private function §7Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[D§(param1.target as §!o§);
         }
      }
      
      public function get §+d§() : Number
      {
         return this.§1r§;
      }
   }
}
