package §#!"§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §6r§
   {
       
      
      protected var §2O§:Sprite;
      
      protected var §@5§:Number;
      
      protected var §?!k§:Number;
      
      protected var §5$§:Class;
      
      protected var §@f§:Number;
      
      protected var §,E§:Number;
      
      protected var §%R§:Number;
      
      protected var §%!L§:Number;
      
      protected var §<r§:Number = -1;
      
      protected var §%v§:Array;
      
      protected var §'6§:int = -1;
      
      protected var § true§:Number = 0;
      
      protected var §5!4§:int = 0;
      
      protected var §@!O§:Vector.<§[!'§>;
      
      protected var §;E§:Vector.<§[!'§>;
      
      public function §6r§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§@!O§ = new Vector.<§[!'§>(0);
            while(true)
            {
               this.§;E§ = new Vector.<§[!'§>(0);
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§2O§ = new Sprite();
                     while(true)
                     {
                        this.§@5§ = param1;
                        loop4:
                        while(true)
                        {
                           this.§?!k§ = param2;
                           loop5:
                           while(true)
                           {
                              this.§%v§ = param3;
                              loop6:
                              while(true)
                              {
                                 §§push(this);
                                 if(!_loc8_)
                                 {
                                    §§pop().§5$§ = param4 || §[!'§;
                                    while(true)
                                    {
                                       this.§@f§ = param5;
                                       loop8:
                                       for(; !(_loc8_ && param1); loop10:
                                       while(!(_loc8_ && param2))
                                       {
                                          this.§5W§();
                                          while(true)
                                          {
                                             this.§1d§();
                                             continue loop6;
                                             addr43:
                                             if(!(_loc8_ && this))
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                while(true)
                                                {
                                                   this.§2O§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                   if(!(_loc7_ || param3))
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§goto(addr43);
                                                   continue loop14;
                                                }
                                                addr28:
                                             }
                                             continue loop10;
                                          }
                                       })
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             this.§,E§ = param6;
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr154);
                                 addr98:
                                 while(!(_loc8_ && this))
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc8_ && param1))
                  {
                     return;
                  }
               }
               if(_loc8_ && this)
               {
                  continue;
               }
               this.§%!F§();
               §§goto(addr77);
            }
         }
         §§goto(addr144);
      }
      
      protected function §5W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%!L§ = Math.floor(this.§@5§ / (this.§&!b§ + this.§@f§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§2O§;
      }
      
      protected function §1d§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.graphics.beginFill(0,1);
         }
         loop0:
         while(true)
         {
            _loc1_.graphics.drawRect(0,0,this.§@5§,this.§?!k§);
            loop1:
            do
            {
               _loc1_.graphics.endFill();
               while(true)
               {
                  this.§2O§.addChild(_loc1_);
                  while(!_loc3_)
                  {
                     continue loop0;
                     this.§2O§.mask = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc3_ && _loc1_);
            
            return;
         }
      }
      
      public function §?!]§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[!'§ = null;
         if(_loc4_ || param1)
         {
            this.§@5§ = this.§2O§.mask.width = param1;
            if(_loc4_)
            {
               this.§%!L§ = Math.max(0,Math.floor(this.§@5§ / (this.§&!b§ + this.§@f§)));
               loop5:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     this.§'6§ = Math.min(this.§%!L§,this.§%v§.length);
                     addr62:
                     while(_loc5_ && _loc2_)
                     {
                        continue loop5;
                     }
                     continue loop5;
                  }
               }
               addr95:
            }
            while(true)
            {
               this.§8s§();
               if(_loc5_ && this)
               {
                  continue;
               }
               if(true)
               {
                  break;
               }
               §§goto(addr52);
            }
            while(this.§;E§.length > this.§%!L§)
            {
               _loc2_ = this.§;E§.pop();
               if(_loc4_ || this)
               {
                  if(_loc2_ == null)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     this.§2O§.removeChild(_loc2_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
               }
               this.§1K§(_loc2_);
            }
            if(!_loc5_)
            {
               this.§+!"§(0);
               if(_loc4_ || this)
               {
                  this.§ true§ = this.§5!4§;
                  do
                  {
                     this.updatePositions();
                  }
                  while(!(_loc4_ || this));
                  
                  addr178:
               }
               return;
            }
            §§goto(addr178);
         }
         §§goto(addr95);
      }
      
      protected function §%!F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[!'§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§5!4§ = this.§ true§ = 0;
            if(_loc4_)
            {
               this.§'6§ = Math.min(this.§%!L§,this.§%v§.length);
               if(!(_loc5_ && this))
               {
                  this.§8s§();
               }
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§'6§)
         {
            _loc2_ = this.§7!C§();
            if(_loc4_ || _loc3_)
            {
               this.§2O§.addChild(_loc2_);
            }
            loop1:
            while(true)
            {
               _loc2_.index = _loc1_;
               while(true)
               {
                  _loc2_.data = this.§%v§[_loc1_];
                  continue loop1;
                  addr104:
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_++;
                     if(_loc4_ || _loc3_)
                     {
                        addr90:
                        if(false)
                        {
                           while(true)
                           {
                              this.§;E§.push(_loc2_);
                              §§goto(addr90);
                           }
                           addr92:
                        }
                        continue loop0;
                     }
                     while(_loc4_ || this)
                     {
                        §§goto(addr104);
                     }
                     continue loop1;
                     addr97:
                  }
               }
            }
         }
         if(_loc4_)
         {
            this.updatePositions();
         }
      }
      
      protected function §8s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§%R§ = Math.min((this.§@5§ - this.§'6§ * this.§&!b§) / this.§'6§,this.§,E§);
         }
      }
      
      protected function get §&!b§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[!'§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§<r§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() == -1)
               {
                  addr57:
                  _loc1_ = this.§7!C§();
                  if(!_loc3_)
                  {
                     this.§<r§ = _loc1_.width;
                     if(_loc3_ && _loc1_)
                     {
                     }
                     addr79:
                     return this.§<r§;
                     addr77:
                  }
                  this.§1K§(_loc1_);
               }
               §§goto(addr77);
            }
            §§goto(addr79);
         }
         §§goto(addr57);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§%v§.length == this.§'6§)
            {
               if(_loc3_ || param1)
               {
                  return;
               }
               while(true)
               {
                  loop3:
                  while(_loc3_ || this)
                  {
                     this.§ true§ = this.§5!4§;
                     do
                     {
                        this.updatePositions();
                     }
                     while(!(_loc3_ || param2));
                     
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           while(param2)
                           {
                              continue loop3;
                           }
                           addr77:
                        }
                        else
                        {
                           addr47:
                        }
                        return;
                     }
                  }
               }
               addr92:
            }
            while(true)
            {
               this.§+!"§(param1);
               §§goto(addr77);
               §§goto(addr92);
            }
         }
         §§goto(addr47);
      }
      
      protected function §+!"§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5!4§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr122:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr123:
                  while(true)
                  {
                     §§push(0);
                     addr124:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr125:
                     addr20:
                     this.§5!4§ = 0;
                     return;
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§5!4§ == this.§ true§)
            {
               if(_loc3_)
               {
                  §§goto(addr121);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr122:
               }
            }
            loop1:
            while(true)
            {
               §§push(this);
               §§push(this.§ true§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.§5!4§ - this.§ true§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / 4);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§ true§ = §§pop();
               loop2:
               while(Math.abs(this.§ true§ - this.§5!4§) < 0.01)
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     while(true)
                     {
                        break loop2;
                     }
                     return;
                  }
                  addr75:
                  addr34:
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
                  this.§ true§ = this.§5!4§;
                  §§goto(addr75);
               }
               while(true)
               {
                  this.updatePositions();
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr34);
               }
            }
         }
         addr121:
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[!'§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§[!'§ = null;
         var _loc1_:* = int(this.§;E§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc6_ || _loc2_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr328);
                     }
                     break;
                  }
                  §§goto(addr323);
               }
               else
               {
                  _loc2_ = this.§;E§[_loc1_];
                  if(!_loc5_)
                  {
                     _loc2_.x = this.§=5§(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§@5§);
                        if(!(_loc5_ && this))
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 addr112:
                                 while(!_loc5_)
                                 {
                                    §§push(_loc2_.x <= -this.§&!b§);
                                    if(!_loc5_)
                                    {
                                    }
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                              addr111:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§2O§.removeChild(_loc2_);
                                    while(_loc6_)
                                    {
                                       this.§;E§.splice(this.§;E§.indexOf(_loc2_),1);
                                       while(_loc6_)
                                       {
                                          while(true)
                                          {
                                             addr61:
                                             while(true)
                                             {
                                                this.§1K§(_loc2_);
                                                addr65:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                                 addr89:
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr89);
                                    }
                                    §§goto(addr61);
                                 }
                                 §§goto(addr75);
                              }
                              continue loop0;
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr77);
               }
            }
            break;
         }
         loop12:
         for(; §§pop() < this.§%v§.length; §§goto(addr323))
         {
            §§push(this.§=5§(_loc1_));
            loop13:
            while(true)
            {
               §§push(Number(§§pop()));
               loop14:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop15:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop17:
                        while(_loc6_)
                        {
                           §§push(this.§&!b§);
                           while(true)
                           {
                              §§push(-§§pop());
                              addr219:
                              while(true)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             continue loop12;
                                          }
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue loop15;
                                          }
                                          if(false)
                                          {
                                             continue loop16;
                                          }
                                          §§push(this.§,z§(_loc1_));
                                          if(_loc6_ || this)
                                          {
                                          }
                                          addr247:
                                          if(§§pop())
                                          {
                                             if(_loc5_ && _loc2_)
                                             {
                                                continue loop12;
                                             }
                                             addr255:
                                             _loc4_ = this.§7!C§();
                                             if(!(_loc5_ && this))
                                             {
                                                this.§2O§.addChild(_loc4_);
                                             }
                                             _loc4_.data = this.§%v§[_loc1_];
                                             _loc4_.index = _loc1_;
                                             addr302:
                                             addr319:
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr283:
                                                   _loc4_.x = _loc3_;
                                                   this.§;E§.push(_loc4_);
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr283);
                                                         }
                                                         addr320:
                                                         _loc1_++;
                                                         if(_loc5_)
                                                         {
                                                            break loop12;
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   addr287:
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr319);
                                             }
                                             addr314:
                                             §§goto(addr314);
                                          }
                                          §§goto(addr320);
                                       }
                                       addr246:
                                       §§push(!§§pop());
                                    }
                                    §§goto(addr247);
                                 }
                                 addr224:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       continue loop13;
                                    }
                                    continue loop17;
                                 }
                                 §§goto(addr255);
                              }
                           }
                        }
                        continue loop14;
                     }
                  }
               }
            }
         }
         addr328:
         if(!_loc5_)
         {
            addr323:
            §§push(_loc1_);
            break loop0;
         }
      }
      
      protected function §=5§(param1:Number) : Number
      {
         return Math.round(this.§%R§ / 2 + (param1 + this.§ true§) * (this.§&!b§ + this.§%R§));
      }
      
      protected function §,z§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§;E§.length)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(false);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
                  addr86:
                  return §§pop();
               }
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§;E§[_loc2_].index == param1)
            {
               break;
            }
            §§goto(addr64);
         }
         while(!(_loc3_ && _loc3_));
         
         §§goto(addr86);
         §§push(true);
      }
      
      public function §6!%§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[!'§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;E§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.data = this.§%v§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§%v§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%v§ = param1;
            while(true)
            {
               this.clear();
            }
            addr73:
         }
         for(; this.§%v§; if(_loc3_ && param1)
         {
            continue;
         },this.§%!F§(),§§goto(addr63))
         {
            if(_loc2_)
            {
               continue;
            }
            addr63:
            if(_loc2_)
            {
               break;
            }
            §§goto(addr73);
         }
      }
      
      public function get §#X§() : int
      {
         return this.§'6§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[!'§ = null;
         while(this.§;E§.length > 0)
         {
            _loc1_ = this.§;E§.pop();
            if(!_loc3_)
            {
               this.§2O§.removeChild(_loc1_);
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
            }
            this.§1K§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§5!4§;
      }
      
      protected function §7!C§() : §[!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§@!O§.length > 0)
            {
               if(!_loc2_)
               {
                  §§goto(addr36);
               }
            }
            var _loc1_:§[!'§ = new this.§5$§();
            if(!_loc2_)
            {
               _loc1_.§-!+§ = this;
            }
            return _loc1_;
         }
         addr36:
         return this.§@!O§.pop();
      }
      
      protected function §1K§(param1:§[!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.data = null;
            do
            {
               this.§@!O§.push(param1);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.clear();
         }
         do
         {
            this.§2O§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(_loc2_);
         
      }
   }
}
