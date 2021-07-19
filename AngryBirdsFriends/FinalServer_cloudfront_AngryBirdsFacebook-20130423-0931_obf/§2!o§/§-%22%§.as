package §2!o§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §-"%§
   {
       
      
      protected var §?!T§:Sprite;
      
      protected var §#!n§:Number;
      
      protected var §,9§:Number;
      
      protected var §<!m§:Class;
      
      protected var §="-§:Number;
      
      protected var §const§:Number;
      
      protected var §1^§:Number;
      
      protected var §<M§:Number;
      
      protected var §;"8§:Number = -1;
      
      protected var §+]§:Array;
      
      protected var §7"A§:int = -1;
      
      protected var §&"P§:Number = 0;
      
      protected var §#w§:int = 0;
      
      protected var §6"J§:Vector.<§2"3§>;
      
      protected var §5C§:Vector.<§2"3§>;
      
      public function §-"%§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§6"J§ = new Vector.<§2"3§>(0);
            loop0:
            while(true)
            {
               this.§5C§ = new Vector.<§2"3§>(0);
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§?!T§ = new Sprite();
                     while(true)
                     {
                        this.§#!n§ = param1;
                        while(true)
                        {
                           this.§,9§ = param2;
                           continue loop0;
                           loop10:
                           while(_loc8_ || param3)
                           {
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                              this.calculateMaxItemsVisible();
                              loop11:
                              while(true)
                              {
                                 this.§0v§();
                                 loop12:
                                 while(true)
                                 {
                                    if(this.§+]§)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   this.§=`§();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      addr24:
                                                      while(true)
                                                      {
                                                         this.§?!T§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      if(_loc8_ || this)
                                                      {
                                                         §§pop().§<!m§ = param4 || §2"3§;
                                                         break loop13;
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   addr136:
                                                }
                                             }
                                             break;
                                          }
                                          continue loop11;
                                       }
                                       while(true)
                                       {
                                          this.§="-§ = param5;
                                          addr106:
                                          while(_loc8_ || param1)
                                          {
                                             while(true)
                                             {
                                                this.§const§ = param6;
                                                continue loop10;
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr24);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§<M§ = Math.floor(this.§#!n§ / (this.§+q§ + this.§="-§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§?!T§;
      }
      
      protected function §0v§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.graphics.beginFill(0,1);
            loop0:
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§#!n§,this.§,9§);
               do
               {
                  _loc1_.graphics.endFill();
                  do
                  {
                     this.§?!T§.addChild(_loc1_);
                     continue loop0;
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && this);
               
            }
         }
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§2"3§ = null;
         if(_loc4_ || param1)
         {
            this.§#!n§ = this.§?!T§.mask.width = param1;
            if(!_loc5_)
            {
               this.§<M§ = Math.floor(this.§#!n§ / (this.§+q§ + this.§="-§));
               loop0:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     this.§7"A§ = Math.min(this.§<M§,this.§+]§.length);
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.calculateMargin();
               if(!(_loc5_ && this))
               {
                  while(false)
                  {
                     §§goto(addr52);
                  }
                  while(this.§5C§.length > this.§<M§)
                  {
                     _loc2_ = this.§5C§.pop();
                     if(!_loc5_)
                     {
                        this.§?!T§.removeChild(_loc2_);
                        if(_loc4_)
                        {
                           this.§&!N§(_loc2_);
                        }
                     }
                  }
                  if(_loc4_)
                  {
                     this.§@+§(0);
                     if(!(_loc5_ && this))
                     {
                        this.§&"P§ = this.§#w§;
                        do
                        {
                           this.updatePositions();
                        }
                        while(!(_loc4_ || param1));
                        
                        addr159:
                     }
                     return;
                  }
                  §§goto(addr159);
                  addr50:
               }
               §§goto(addr62);
            }
         }
         §§goto(addr50);
      }
      
      protected function §=`§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§2"3§ = null;
         if(_loc5_)
         {
            this.§#w§ = this.§&"P§ = 0;
            if(_loc5_)
            {
               this.§7"A§ = Math.min(this.§<M§,this.§+]§.length);
               if(_loc5_)
               {
                  addr44:
                  this.calculateMargin();
               }
            }
            var _loc1_:int = 0;
            loop0:
            while(_loc1_ < this.§7"A§)
            {
               _loc2_ = this.§5!v§();
               if(_loc5_ || _loc1_)
               {
                  this.§?!T§.addChild(_loc2_);
                  loop1:
                  while(true)
                  {
                     _loc2_.index = _loc1_;
                     while(true)
                     {
                        _loc2_.data = this.§+]§[_loc1_];
                        while(_loc5_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr83:
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§5C§.push(_loc2_);
                                    continue loop1;
                                    §§goto(addr83);
                                 }
                                 addr85:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr85);
               }
            }
            if(_loc5_)
            {
               this.updatePositions();
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§1^§ = Math.min((this.§#!n§ - this.§7"A§ * this.§+q§) / this.§7"A§,this.§const§);
         }
      }
      
      protected function get §+q§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2"3§ = null;
         if(!_loc2_)
         {
            §§push(this.§;"8§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == -1)
               {
                  addr53:
                  _loc1_ = this.§5!v§();
                  if(_loc3_ || _loc3_)
                  {
                     this.§;"8§ = _loc1_.width;
                     if(_loc2_)
                     {
                     }
                     addr75:
                     return this.§;"8§;
                     addr73:
                  }
                  this.§&!N§(_loc1_);
               }
               §§goto(addr73);
            }
            §§goto(addr75);
         }
         §§goto(addr53);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§+]§.length != this.§7"A§)
            {
               while(true)
               {
                  this.§@+§(param1);
                  loop1:
                  while(!(_loc3_ && this))
                  {
                     while(param2)
                     {
                        if(_loc4_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr87);
                           }
                           this.§&"P§ = this.§#w§;
                        }
                        do
                        {
                           this.updatePositions();
                        }
                        while(!_loc4_);
                        
                        if(!(_loc3_ && param2))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            addr87:
            return;
         }
         §§goto(addr80);
      }
      
      public function §0"Q§(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§#w§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr106:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr107:
                  while(true)
                  {
                     §§push(0);
                     addr108:
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        if(!(_loc2_ && this))
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc2_)
                                       {
                                          break loop5;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop4;
                                       }
                                    }
                                 }
                                 return §§pop();
                                 addr74:
                              }
                              return §§pop();
                           }
                        }
                        addr118:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      protected function §@+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§#w§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr115:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr116:
                  while(true)
                  {
                     §§push(0);
                     addr117:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr125:
                              this.§#w§ = 0;
                           }
                           break;
                           addr128:
                        }
                        continue loop0;
                     }
                     addr25:
                     return;
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§#w§ != this.§&"P§)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§&"P§);
                  if(!_loc2_)
                  {
                     §§push(this.§#w§ - this.§&"P§);
                     if(_loc3_)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§&"P§ = §§pop();
                  while(!(_loc2_ && param1))
                  {
                     if(Math.abs(this.§&"P§ - this.§#w§) < 0.01)
                     {
                        for(; !_loc2_; if(_loc2_ && _loc2_)
                        {
                           continue;
                        },§§goto(addr56))
                        {
                           if(_loc2_)
                           {
                              §§goto(addr116);
                           }
                           this.§&"P§ = this.§#w§;
                           while(true)
                           {
                              addr29:
                              §§goto(addr56);
                           }
                        }
                        continue;
                     }
                     §§goto(addr29);
                  }
               }
            }
            addr116:
            return;
         }
         addr56:
         while(true)
         {
            this.updatePositions();
            if(_loc3_ || _loc3_)
            {
               continue loop2;
            }
            continue loop3;
         }
         addr56:
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2"3§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§2"3§ = null;
         var _loc1_:* = int(this.§5C§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     addr368:
                     if(§§pop() < this.§+]§.length)
                     {
                        §§push(this.getPositionFromIndex(_loc1_));
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop11:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              continue loop11;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr368);
                        }
                        addr367:
                     }
                     §§goto(addr372);
                  }
                  §§goto(addr367);
                  addr159:
               }
               else
               {
                  _loc2_ = this.§5C§[_loc1_];
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc2_.x = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§#!n§);
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr123:
                                 do
                                 {
                                    §§push(_loc2_.x <= -this.§+q§);
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(!_loc6_);
                                 
                                 continue loop2;
                              }
                           }
                           loop5:
                           while(§§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr123);
                              }
                              else
                              {
                                 this.§5C§.splice(this.§5C§.indexOf(_loc2_),1);
                                 addr113:
                                 loop8:
                                 while(true)
                                 {
                                    addr58:
                                    while(true)
                                    {
                                       this.§&!N§(_loc2_);
                                       addr62:
                                       addr64:
                                       while(_loc6_)
                                       {
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          break loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr113:
                              }
                           }
                           §§push(_loc1_);
                           if(_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr58);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr62);
                        }
                     }
                  }
                  §§goto(addr64);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc5_ || this)
         {
            §§goto(addr159);
         }
         §§goto(addr218);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§1^§ / 2 + (param1 + this.§&"P§) * (this.§+q§ + this.§1^§));
      }
      
      protected function §2X§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§5C§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  addr71:
                  return §§pop();
               }
            }
            else if(this.§5C§[_loc2_].index == param1)
            {
               break;
            }
            _loc2_++;
         }
         while(!_loc3_);
         
         §§goto(addr71);
         §§push(true);
      }
      
      public function §->§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2"3§ = null;
         for each(_loc1_ in this.§5C§)
         {
            if(_loc4_)
            {
               _loc1_.data = this.§+]§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§+]§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+]§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               while(this.§+]§)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  addr50:
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         this.§=`§();
         §§goto(addr50);
      }
      
      public function get §0"P§() : int
      {
         return this.§7"A§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2"3§ = null;
         while(this.§5C§.length > 0)
         {
            _loc1_ = this.§5C§.pop();
            if(!(_loc2_ && this))
            {
               this.§?!T§.removeChild(_loc1_);
               if(!_loc2_)
               {
                  this.§&!N§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§#w§;
      }
      
      protected function §5!v§() : §2"3§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§6"J§.length > 0)
            {
               if(_loc2_)
               {
                  §§goto(addr35);
               }
            }
            var _loc1_:§2"3§ = new this.§<!m§();
            if(_loc2_ || this)
            {
               _loc1_.§>"7§ = this;
            }
            return _loc1_;
         }
         addr35:
         return this.§6"J§.pop();
      }
      
      protected function §&!N§(param1:§2"3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.data = null;
            do
            {
               this.§6"J§.push(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
            do
            {
               this.§?!T§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!(_loc1_ || this));
            
         }
      }
   }
}
