package §_-05L§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §_-wn§
   {
       
      
      protected var §_-FQ§:Sprite;
      
      protected var §_-7S§:Number;
      
      protected var §_-Dg§:Number;
      
      protected var §_-ub§:Class;
      
      protected var §_-ap§:Number;
      
      protected var §_-uV§:Number;
      
      protected var §_-KI§:Number;
      
      protected var §_-0D6§:Number;
      
      protected var §_-018§:Number = -1;
      
      protected var §_-WB§:Array;
      
      protected var §_-wH§:int = -1;
      
      protected var §_-EM§:Number = 0;
      
      protected var §_-07x§:int = 0;
      
      protected var §_-0BP§:Vector.<§_-p§>;
      
      protected var §_-2x§:Vector.<§_-p§>;
      
      public function §_-wn§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§_-0BP§ = new Vector.<§_-p§>(0);
            loop0:
            while(true)
            {
               this.§_-2x§ = new Vector.<§_-p§>(0);
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§_-FQ§ = new Sprite();
                     continue loop0;
                     addr48:
                     if(!(_loc7_ && param2))
                     {
                        return;
                     }
                  }
                  loop10:
                  for(; !(_loc7_ && param1); if(!(_loc8_ || param3))
                  {
                     continue;
                  },§§goto(addr99))
                  {
                     this.§_-0Ao§();
                     loop11:
                     while(true)
                     {
                        this.§_-016§();
                        loop12:
                        while(true)
                        {
                           if(!(_loc7_ && this))
                           {
                              continue loop10;
                           }
                           continue loop11;
                           addr64:
                           loop13:
                           while(!(_loc7_ && param3))
                           {
                              while(true)
                              {
                                 this.§_-FQ§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                 if(!(_loc7_ && param2))
                                 {
                                    break;
                                 }
                                 continue loop13;
                              }
                              if(_loc8_)
                              {
                                 addr41:
                                 if(_loc8_ || param2)
                                 {
                                    §§goto(addr48);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§_-WB§ = param3;
                                       break loop12;
                                       §§goto(addr41);
                                    }
                                    addr154:
                                 }
                              }
                              while(_loc8_)
                              {
                                 this.§_-uV§ = param6;
                                 continue loop10;
                              }
                              while(!_loc7_)
                              {
                                 while(true)
                                 {
                                    this.§_-Dg§ = param2;
                                    §§goto(addr154);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this);
                           if(!_loc7_)
                           {
                              §§pop().§_-ub§ = param4 || §_-p§;
                              while(true)
                              {
                                 this.§_-ap§ = param5;
                                 §§goto(addr129);
                                 addr99:
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop7;
                                 }
                                 if(this.§_-WB§)
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§_-Iq§();
                                    }
                                    §§goto(addr64);
                                 }
                                 §§goto(addr24);
                              }
                           }
                           §§goto(addr141);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      protected function §_-0Ao§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-0D6§ = Math.floor(this.§_-7S§ / (this.§_-gG§ + this.§_-ap§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      protected function §_-016§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(_loc2_)
         {
            _loc1_.graphics.beginFill(0,1);
            loop0:
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§_-7S§,this.§_-Dg§);
               while(true)
               {
                  _loc1_.graphics.endFill();
                  while(!(_loc3_ && this))
                  {
                     this.§_-FQ§.addChild(_loc1_);
                     continue loop0;
                     if(_loc2_)
                     {
                        return;
                        addr46:
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §_-7Z§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-p§ = null;
         if(!_loc4_)
         {
            this.§_-7S§ = this.§_-FQ§.mask.width = param1;
            if(!(_loc4_ && _loc3_))
            {
               this.§_-0D6§ = Math.max(0,Math.floor(this.§_-7S§ / (this.§_-gG§ + this.§_-ap§)));
            }
            loop0:
            while(true)
            {
               addr55:
               while(true)
               {
                  this.§_-wH§ = Math.min(this.§_-0D6§,this.§_-WB§.length);
                  continue loop0;
               }
            }
            addr91:
         }
         while(true)
         {
            this.§_-cN§();
            if(_loc4_)
            {
               continue;
            }
            if(!(_loc4_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr91);
            }
            §§goto(addr55);
         }
         while(this.§_-2x§.length > this.§_-0D6§)
         {
            _loc2_ = this.§_-2x§.pop();
            if(_loc5_ || _loc2_)
            {
               if(_loc2_ == null)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               else
               {
                  this.§_-FQ§.removeChild(_loc2_);
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
               }
               this.§_-2D§(_loc2_);
            }
         }
         if(_loc5_ || this)
         {
            this.§_-MZ§(0);
            if(!(_loc4_ && param1))
            {
               this.§_-EM§ = this.§_-07x§;
               do
               {
                  this.updatePositions();
               }
               while(_loc4_);
               
               addr159:
            }
            return;
         }
         §§goto(addr159);
      }
      
      protected function §_-Iq§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-p§ = null;
         if(_loc5_ || this)
         {
            this.§_-07x§ = this.§_-EM§ = 0;
            if(_loc5_)
            {
               this.§_-wH§ = Math.min(this.§_-0D6§,this.§_-WB§.length);
               if(!(_loc4_ && _loc2_))
               {
                  this.§_-cN§();
               }
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§_-wH§)
         {
            _loc2_ = this.§_-Dt§();
            if(!(_loc4_ && this))
            {
               this.§_-FQ§.addChild(_loc2_);
               while(true)
               {
                  _loc2_.index = _loc1_;
               }
               addr132:
            }
            loop2:
            while(true)
            {
               _loc2_.data = this.§_-WB§[_loc1_];
               loop3:
               while(!_loc4_)
               {
                  loop4:
                  do
                  {
                     this.§_-2x§.push(_loc2_);
                     while(_loc5_)
                     {
                        _loc1_++;
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                     continue loop3;
                  }
                  while(false);
                  
                  continue loop0;
               }
               §§goto(addr132);
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            this.updatePositions();
         }
      }
      
      protected function §_-cN§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-KI§ = Math.min((this.§_-7S§ - this.§_-wH§ * this.§_-gG§) / this.§_-wH§,this.§_-uV§);
         }
      }
      
      protected function get §_-gG§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-p§ = null;
         if(!_loc3_)
         {
            §§push(this.§_-018§);
            if(_loc2_)
            {
               if(§§pop() == -1)
               {
                  addr47:
                  _loc1_ = this.§_-Dt§();
                  if(!_loc3_)
                  {
                     this.§_-018§ = _loc1_.width;
                     if(!(_loc3_ && this))
                     {
                        this.§_-2D§(_loc1_);
                     }
                  }
               }
               return this.§_-018§;
            }
         }
         §§goto(addr47);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§_-WB§.length == this.§_-wH§)
            {
               if(_loc4_)
               {
                  return;
               }
               while(true)
               {
               }
               addr93:
            }
            loop0:
            while(true)
            {
               this.§_-MZ§(param1);
               loop1:
               while(param2)
               {
                  if(_loc4_)
                  {
                     this.§_-EM§ = this.§_-07x§;
                  }
                  while(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || param2)
                     {
                        this.updatePositions();
                        if(!(_loc3_ && _loc3_))
                        {
                           break loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr93);
      }
      
      protected function §_-MZ§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-07x§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr121:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr122:
                  while(true)
                  {
                     §§push(0);
                     addr123:
                     addr124:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     this.§_-07x§ = 0;
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§_-07x§ != this.§_-EM§)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§_-EM§);
                  if(!_loc2_)
                  {
                     §§push(this.§_-07x§ - this.§_-EM§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§_-EM§ = §§pop();
                  loop1:
                  while(_loc3_)
                  {
                     loop2:
                     while(Math.abs(this.§_-EM§ - this.§_-07x§) < 0.01)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           this.§_-EM§ = this.§_-07x§;
                        }
                        while(true)
                        {
                           break loop2;
                        }
                        if(_loc3_)
                        {
                           return;
                        }
                        addr111:
                        return;
                     }
                     while(true)
                     {
                        this.updatePositions();
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr105);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-p§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§_-p§ = null;
         var _loc1_:* = int(this.§_-2x§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr264);
                     }
                     break;
                  }
                  addr227:
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(this.§_-7S§);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc5_)
                        {
                           §§push(§§pop() < §§pop());
                           if(!(_loc6_ && _loc1_))
                           {
                              loop19:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc5_ || this)
                                 {
                                    addr187:
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop();
                                          if(_loc5_ || _loc1_)
                                          {
                                             if(true)
                                             {
                                                §§push(this.§ if§(_loc1_));
                                                if(_loc6_ && _loc2_)
                                                {
                                                }
                                                §§goto(addr261);
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr202:
                                                addr241:
                                                while(_loc5_ || _loc2_)
                                                {
                                                   §§push(this.§_-gG§);
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                      addr212:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop19;
                                                               }
                                                               if(_loc6_ && _loc1_)
                                                               {
                                                               }
                                                               addr261:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr264:
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr337:
                                                                        §§push(_loc1_);
                                                                        break loop0;
                                                                     }
                                                                     _loc4_ = this.§_-Dt§();
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§_-FQ§.addChild(_loc4_);
                                                                        _loc4_.data = this.§_-WB§[_loc1_];
                                                                        _loc4_.index = _loc1_;
                                                                        addr296:
                                                                        _loc4_.x = _loc3_;
                                                                        this.§_-2x§.push(_loc4_);
                                                                        addr328:
                                                                        addr323:
                                                                        addr315:
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        addr300:
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  addr294:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                               addr329:
                                                               _loc1_++;
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  §§goto(addr337);
                                                               }
                                                               return;
                                                               continue loop19;
                                                            }
                                                            §§goto(addr187);
                                                            addr216:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop13;
                                                   §§goto(addr202);
                                                }
                                             }
                                          }
                                          §§goto(addr337);
                                       }
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr202);
               }
               else
               {
                  _loc2_ = this.§_-2x§[_loc1_];
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.x = this.§_-03Q§(_loc2_.index);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.x >= this.§_-7S§);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    this.§_-FQ§.removeChild(_loc2_);
                                 }
                                 while(true)
                                 {
                                    this.§_-2x§.splice(this.§_-2x§.indexOf(_loc2_),1);
                                    addr78:
                                    loop7:
                                    while(true)
                                    {
                                       addr62:
                                       while(true)
                                       {
                                          this.§_-2D§(_loc2_);
                                          addr66:
                                          while(_loc5_)
                                          {
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 addr108:
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc2_.x <= -this.§_-gG§);
                                             if(_loc5_ || this)
                                             {
                                                continue loop2;
                                             }
                                             addr117:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop4;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr62);
                                    }
                                    else
                                    {
                                       §§goto(addr108);
                                    }
                                 }
                                 §§goto(addr66);
                              }
                              continue loop0;
                           }
                           addr100:
                        }
                        §§goto(addr117);
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§_-WB§.length)
            {
               §§push(this.§_-03Q§(_loc1_));
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr241);
            }
            §§goto(addr294);
            §§goto(addr337);
         }
      }
      
      protected function §_-03Q§(param1:Number) : Number
      {
         return Math.round(this.§_-KI§ / 2 + (param1 + this.§_-EM§) * (this.§_-gG§ + this.§_-KI§));
      }
      
      protected function § if§(param1:int) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§_-2x§.length)
            {
               if(!_loc4_)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  addr80:
                  return §§pop();
               }
               loop1:
               while(!(_loc3_ || this))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§_-2x§[_loc2_].index == param1)
            {
               break;
            }
            §§goto(addr53);
         }
         while(_loc3_ || _loc2_);
         
         §§goto(addr80);
         §§push(true);
      }
      
      public function §_-8B§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-p§ = null;
         for each(_loc1_ in this.§_-2x§)
         {
            if(_loc5_)
            {
               _loc1_.data = this.§_-WB§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§_-WB§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-WB§ = param1;
         }
         loop0:
         while(true)
         {
            this.clear();
            while(true)
            {
               if(_loc3_)
               {
                  if(this.§_-WB§)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        this.§_-Iq§();
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function get §_-xC§() : int
      {
         return this.§_-wH§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-p§ = null;
         while(this.§_-2x§.length > 0)
         {
            _loc1_ = this.§_-2x§.pop();
            if(!_loc2_)
            {
               this.§_-FQ§.removeChild(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  this.§_-2D§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§_-07x§;
      }
      
      protected function §_-Dt§() : §_-p§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§_-0BP§.length > 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr51);
               }
            }
            var _loc1_:§_-p§ = new this.§_-ub§();
            if(_loc3_ || this)
            {
               _loc1_.§_-FJ§ = this;
            }
            return _loc1_;
         }
         addr51:
         return this.§_-0BP§.pop();
      }
      
      protected function §_-2D§(param1:§_-p§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.data = null;
            do
            {
               this.§_-0BP§.push(param1);
            }
            while(_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            do
            {
               this.§_-FQ§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
