package §<z§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[Z§
   {
       
      
      protected var §8X§:Sprite;
      
      protected var §?=§:Number;
      
      protected var §`!S§:Number;
      
      protected var §6!C§:Class;
      
      protected var §9!!§:Number;
      
      protected var §+4§:Number;
      
      protected var §2!H§:Number;
      
      protected var §0'§:Number;
      
      protected var §!!E§:Number = -1;
      
      protected var §++§:Array;
      
      protected var §"H§:int = -1;
      
      protected var §^!o§:Number = 0;
      
      protected var §[!+§:int = 0;
      
      protected var §3T§:Vector.<§#h§>;
      
      protected var §3U§:Vector.<§#h§>;
      
      public function §[Z§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§3T§ = new Vector.<§#h§>(0);
            loop0:
            while(true)
            {
               this.§3U§ = new Vector.<§#h§>(0);
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§8X§ = new Sprite();
                     while(_loc7_)
                     {
                        this.§?=§ = param1;
                        while(_loc7_ || param1)
                        {
                           this.§`!S§ = param2;
                           loop5:
                           while(!_loc8_)
                           {
                              this.§++§ = param3;
                              while(true)
                              {
                                 §§push(this);
                                 if(!(_loc8_ && this))
                                 {
                                    §§pop().§6!C§ = param4 || §#h§;
                                    while(true)
                                    {
                                       this.§9!!§ = param5;
                                       §§goto(addr128);
                                    }
                                 }
                                 §§goto(addr143);
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 this.§^!w§();
                                 §§goto(addr84);
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr128:
         loop8:
         while(true)
         {
            this.§+4§ = param6;
            loop9:
            while(true)
            {
               this.§ !c§();
               continue loop7;
               addr57:
               if(!(_loc8_ && this))
               {
                  this.§7u§();
                  loop12:
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        addr73:
                        if(!(_loc7_ || this))
                        {
                           break;
                        }
                        continue;
                     }
                     addr84:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           continue loop8;
                        }
                        if(!this.§++§)
                        {
                           continue loop12;
                        }
                        if(_loc8_ && param3)
                        {
                           continue loop12;
                        }
                        §§goto(addr57);
                        continue loop12;
                     }
                     continue loop9;
                  }
                  continue loop7;
               }
            }
         }
      }
      
      protected function § !c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0'§ = Math.floor(this.§?=§ / (this.§ !e§ + this.§9!!§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§8X§;
      }
      
      protected function §^!w§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Sprite = new Sprite();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.graphics.beginFill(0,1);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§?=§,this.§`!S§);
               §§goto(addr98);
            }
         }
         addr98:
         while(true)
         {
            _loc1_.graphics.endFill();
            do
            {
               this.§8X§.addChild(_loc1_);
               do
               {
                  this.§8X§.mask = _loc1_;
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(_loc2_ && _loc2_);
            
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,!q§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§#h§ = null;
         if(_loc4_ || param1)
         {
            this.§?=§ = this.§8X§.mask.width = param1;
            if(_loc4_ || _loc2_)
            {
               this.§0'§ = Math.max(0,Math.floor(this.§?=§ / (this.§ !e§ + this.§9!!§)));
            }
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§"H§ = Math.min(this.§0'§,this.§++§.length);
                  do
                  {
                     this.§,V§();
                  }
                  while(_loc5_ && this);
                  
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  while(this.§3U§.length > this.§0'§)
                  {
                     _loc2_ = this.§3U§.pop();
                     if(_loc4_ || param1)
                     {
                        if(_loc2_ == null)
                        {
                           if(!(_loc5_ && this))
                           {
                              continue;
                           }
                        }
                        else
                        {
                           this.§8X§.removeChild(_loc2_);
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        this.§<!A§(_loc2_);
                     }
                  }
                  if(_loc4_)
                  {
                     this.§"D§(0);
                     if(!(_loc5_ && param1))
                     {
                        this.§^!o§ = this.§[!+§;
                        do
                        {
                           this.updatePositions();
                        }
                        while(!(_loc4_ || param1));
                        
                        addr178:
                     }
                     return;
                  }
                  §§goto(addr178);
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §7u§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§#h§ = null;
         if(_loc4_)
         {
            this.§[!+§ = this.§^!o§ = 0;
            if(!_loc5_)
            {
               addr32:
               this.§"H§ = Math.min(this.§0'§,this.§++§.length);
               if(_loc4_)
               {
                  this.§,V§();
               }
            }
            var _loc1_:int = 0;
            loop0:
            while(_loc1_ < this.§"H§)
            {
               _loc2_ = this.§[d§();
               if(_loc4_)
               {
                  this.§8X§.addChild(_loc2_);
               }
               while(true)
               {
                  _loc2_.index = _loc1_;
                  loop2:
                  while(!(_loc5_ && _loc3_))
                  {
                     _loc2_.data = this.§++§[_loc1_];
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§3U§.push(_loc2_);
                           while(!_loc5_)
                           {
                              _loc1_++;
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            if(!_loc5_)
            {
               this.updatePositions();
            }
            return;
         }
         §§goto(addr32);
      }
      
      protected function §,V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!H§ = Math.min((this.§?=§ - this.§"H§ * this.§ !e§) / this.§"H§,this.§+4§);
         }
      }
      
      protected function get § !e§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#h§ = null;
         if(_loc3_)
         {
            §§push(this.§!!E§);
            if(_loc3_)
            {
               if(§§pop() == -1)
               {
                  addr38:
                  _loc1_ = this.§[d§();
                  if(!_loc2_)
                  {
                     this.§!!E§ = _loc1_.width;
                     if(_loc3_)
                     {
                        this.§<!A§(_loc1_);
                     }
                  }
               }
               return this.§!!E§;
            }
         }
         §§goto(addr38);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§++§.length != this.§"H§)
            {
               while(true)
               {
                  this.§"D§(param1);
                  loop1:
                  while(!_loc3_)
                  {
                     while(param2)
                     {
                        loop3:
                        while(true)
                        {
                           this.§^!o§ = this.§[!+§;
                           while(_loc4_ || this)
                           {
                              this.updatePositions();
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      protected function §"D§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[!+§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr131:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr132:
                  while(true)
                  {
                     §§push(0);
                     addr133:
                     addr134:
                     addr19:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr137:
                     this.§[!+§ = 0;
                     return;
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
         if(!_loc2_)
         {
            if(this.§[!+§ != this.§^!o§)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!o§);
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§[!+§ - this.§^!o§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§^!o§ = §§pop();
                  loop1:
                  while(!(_loc2_ && this))
                  {
                     if(Math.abs(this.§^!o§ - this.§[!+§) < 0.01)
                     {
                        while(true)
                        {
                           this.§^!o§ = this.§[!+§;
                           addr63:
                           while(_loc3_)
                           {
                              while(true)
                              {
                              }
                           }
                           continue loop1;
                        }
                        addr59:
                     }
                     while(true)
                     {
                        this.updatePositions();
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr63);
                     }
                     if(_loc3_ || this)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#h§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§#h§ = null;
         var _loc1_:* = int(this.§3U§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc5_ || this)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr352);
                     }
                     break;
                  }
                  §§goto(addr179);
               }
               else
               {
                  _loc2_ = this.§3U§[_loc1_];
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.x = this.§[<§(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§?=§);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(!§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 §§pop();
                                 addr143:
                                 while(true)
                                 {
                                    §§push(_loc2_.x <= -this.§ !e§);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop10;
                                 }
                              }
                              addr142:
                           }
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc5_ || this)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || _loc1_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§<!A§(_loc2_);
                                                addr79:
                                                while(_loc6_ && _loc3_)
                                                {
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§8X§.removeChild(_loc2_);
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                             addr75:
                                          }
                                          while(true)
                                          {
                                             this.§3U§.splice(this.§3U§.indexOf(_loc2_),1);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr75);
                                       }
                                    }
                                    §§goto(addr79);
                                    addr93:
                                 }
                                 continue loop0;
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr142);
                     }
                  }
                  §§goto(addr122);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§++§.length)
            {
               §§push(this.§[<§(_loc1_));
               loop13:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop14:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr269:
                     while(true)
                     {
                        addr218:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr220:
                           while(!(_loc6_ && _loc3_))
                           {
                              continue loop13;
                           }
                           continue loop14;
                        }
                     }
                  }
               }
            }
            break;
            §§goto(addr347);
         }
         addr352:
         if(_loc5_)
         {
            addr347:
            §§push(_loc1_);
            break loop0;
            addr179:
         }
      }
      
      protected function §[<§(param1:Number) : Number
      {
         return Math.round(this.§2!H§ / 2 + (param1 + this.§^!o§) * (this.§ !e§ + this.§2!H§));
      }
      
      protected function §'?§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§3U§.length)
            {
               if(_loc3_ && param1)
               {
                  continue;
               }
               if(_loc4_ || _loc2_)
               {
                  if(_loc4_)
                  {
                     §§push(false);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     addr86:
                     return §§pop();
                  }
                  break;
               }
            }
            else if(this.§3U§[_loc2_].index == param1)
            {
               break;
            }
            _loc2_++;
         }
         §§goto(addr86);
         §§push(true);
      }
      
      public function §-"§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#h§ = null;
         for each(_loc1_ in this.§3U§)
         {
            if(!_loc5_)
            {
               _loc1_.data = this.§++§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§++§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§++§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               while(this.§++§)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§7u§();
                        continue loop0;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr25);
            }
         }
         addr25:
      }
      
      public function get §;!O§() : int
      {
         return this.§"H§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#h§ = null;
         while(this.§3U§.length > 0)
         {
            _loc1_ = this.§3U§.pop();
            if(!(_loc2_ && _loc1_))
            {
               this.§8X§.removeChild(_loc1_);
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
            }
            this.§<!A§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§[!+§;
      }
      
      protected function §[d§() : §#h§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§3T§.length > 0)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr40);
               }
            }
            var _loc1_:§#h§ = new this.§6!C§();
            if(_loc2_)
            {
               _loc1_.§<D§ = this;
            }
            return _loc1_;
         }
         addr40:
         return this.§3T§.pop();
      }
      
      protected function §<!A§(param1:§#h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.data = null;
         }
         do
         {
            this.§3T§.push(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.clear();
            do
            {
               this.§8X§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!(_loc1_ || this));
            
         }
      }
   }
}
