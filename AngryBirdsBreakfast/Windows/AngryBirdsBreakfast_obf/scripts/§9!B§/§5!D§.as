package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5!D§ extends EventDispatcher implements § _§
   {
       
      
      private var §9U§:Object;
      
      private var §#1§:String;
      
      private var §>!0§:Vector.<String>;
      
      private var §@&§:Vector.<Number>;
      
      private var §^!d§:Vector.<Number>;
      
      private var §0!3§:Function;
      
      private var §1q§:Function;
      
      private var §try§:Function;
      
      private var §4!'§:Array;
      
      private var §&!]§:Array;
      
      private var §@T§:Array;
      
      private var §"!D§:Number;
      
      private var §]!b§:Number;
      
      private var §]!6§:Number;
      
      private var §7?§:Boolean;
      
      public function §5!D§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§9U§ = param1;
               while(_loc5_)
               {
                  this.§]!b§ = 0;
                  while(true)
                  {
                     this.§"!D§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§]!6§ = 0;
                        addr109:
                        while(true)
                        {
                           this.§#1§ = param3;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^!d§ = new Vector.<Number>(0);
            if(!(_loc4_ && param1))
            {
               if(_loc5_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr122);
               }
               §§goto(addr83);
            }
            §§goto(addr59);
         }
      }
      
      public function §;!d§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§9U§ != null)
            {
               while(true)
               {
                  this.§>!0§.push(param1);
                  loop1:
                  while(_loc4_ || param1)
                  {
                     while(true)
                     {
                        this.§@&§.push(Number.NaN);
                        do
                        {
                           this.§^!d§.push(param2);
                        }
                        while(_loc3_ && this);
                        
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §3!>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!d§("scaleX",param1);
         }
         do
         {
            this.§;!d§("scaleY",param1);
         }
         while(_loc2_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;!d§("x",param1);
         }
         do
         {
            this.§;!d§("y",param2);
         }
         while(!_loc4_);
         
      }
      
      public function §3y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;!d§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc12_)
         {
            §§push(param1);
            if(_loc12_ || this)
            {
               if(§§pop() == 0)
               {
                  if(_loc12_)
                  {
                     return;
                  }
                  addr43:
                  §§push(this.§]!b§);
                  if(_loc12_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr43);
            }
            var _loc2_:* = §§pop();
            if(!_loc11_)
            {
               §§push(this);
               §§push(this.§]!b§);
               if(!_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§]!b§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§]!b§);
                  if(!(_loc11_ && _loc2_))
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr232:
                                 while(true)
                                 {
                                    §§pop();
                                    addr233:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(§§pop() >= this.§"!D§);
                                       }
                                       else
                                       {
                                          addr260:
                                          var _loc3_:Number = §§pop();
                                          var _loc4_:int = this.§@&§.length;
                                          var _loc5_:int = 0;
                                          addr474:
                                          if(_loc5_ < _loc4_)
                                          {
                                             if(isNaN(this.§@&§[_loc5_]))
                                             {
                                                addr367:
                                                this.§@&§[_loc5_] = this.§9U§[this.§>!0§[_loc5_]] as Number;
                                             }
                                             addr334:
                                             §§push(Number(this.§@&§[_loc5_]));
                                             if(!_loc11_)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc12_ || this)
                                                {
                                                   if(_loc12_ || this)
                                                   {
                                                      §§push(Number(this.§^!d§[_loc5_]));
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc11_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr334);
                                                                              }
                                                                              _loc9_ = §[g§.§!!A§(this.§#1§);
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 addr472:
                                                                                 §§push(_loc6_);
                                                                                 if(_loc12_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 _loc10_ = §§pop();
                                                                                 addr473:
                                                                                 if(this.§7?§)
                                                                                 {
                                                                                    addr436:
                                                                                    §§push(Number(Math.round(_loc10_)));
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       addr415:
                                                                                       this.§9U§[this.§>!0§[_loc5_]] = _loc10_;
                                                                                       addr448:
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          _loc5_++;
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr415);
                                                                                                   }
                                                                                                   §§goto(addr474);
                                                                                                }
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             §§goto(addr448);
                                                                                          }
                                                                                          §§goto(addr415);
                                                                                       }
                                                                                       §§goto(addr436);
                                                                                    }
                                                                                    §§goto(addr472);
                                                                                 }
                                                                              }
                                                                              §§goto(addr415);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        addr617:
                                                                        §§push(this.§]!b§);
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           addr570:
                                                                           §§push(this.§"!D§);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(_loc12_ || _loc2_)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr584:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr586:
                                                                                       dispatchEvent(new Event(Event.§;8§));
                                                                                       addr592:
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          §§push(this.onComplete);
                                                                                          if(_loc12_ || this)
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         addr556:
                                                                                                         this.onComplete.apply(null,this.§@T§);
                                                                                                         addr557:
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§goto(addr592);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr554:
                                                                                                         addr553:
                                                                                                         addr559:
                                                                                                         addr551:
                                                                                                      }
                                                                                                      §§goto(addr586);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr557);
                                                                                             }
                                                                                             §§goto(addr554);
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       §§goto(addr617);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 addr614:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr616:
                                                                                    §§pop();
                                                                                    §§goto(addr617);
                                                                                 }
                                                                                 §§goto(addr584);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                           §§goto(addr614);
                                                                           §§push(§§pop() < §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr570);
                                                            }
                                                            addr611:
                                                            §§push(this.§"!D§);
                                                         }
                                                      }
                                                      §§goto(addr570);
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr559);
                                             }
                                             §§goto(addr570);
                                          }
                                          if(_loc12_ || _loc2_)
                                          {
                                             §§push(this.§^O§);
                                             if(_loc12_ || this)
                                             {
                                                §§push(null);
                                                if(_loc12_ || this)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         §§push(this.§^O§);
                                                         if(_loc12_)
                                                         {
                                                            §§push(null);
                                                            if(_loc12_)
                                                            {
                                                               addr516:
                                                               §§push(this.§&!]§);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§pop().apply(§§pop(),§§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr610:
                                                                     §§goto(addr611);
                                                                     §§push(_loc2_);
                                                                  }
                                                                  §§goto(addr551);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr556);
                                                   }
                                                   §§goto(addr610);
                                                }
                                                §§goto(addr516);
                                             }
                                          }
                                          §§goto(addr556);
                                          addr259:
                                       }
                                       §§goto(addr260);
                                    }
                                 }
                                 addr232:
                              }
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§@!]§);
                                          while(true)
                                          {
                                             §§push(null);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                while(!_loc11_)
                                                {
                                                   §§push(!§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr197:
                                                               while(_loc12_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr196:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                                  addr78:
                                                                  if(!(_loc12_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr156:
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr214);
                                 }
                              }
                           }
                        }
                        §§goto(addr232);
                     }
                  }
                  §§goto(addr260);
               }
            }
            §§goto(addr119);
         }
         §§goto(addr43);
      }
      
      public function get §1]§() : Boolean
      {
         return this.§]!b§ >= this.§"!D§;
      }
      
      public function get target() : Object
      {
         return this.§9U§;
      }
      
      public function get §6!u§() : String
      {
         return this.§#1§;
      }
      
      public function get §,!Q§() : Number
      {
         return this.§"!D§;
      }
      
      public function get §+L§() : Number
      {
         return this.§]!b§;
      }
      
      public function get delay() : Number
      {
         return this.§]!6§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§]!b§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.§]!6§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     addr84:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§]!b§ = §§pop();
                  do
                  {
                     this.§]!6§ = param1;
                  }
                  while(!_loc3_);
                  
                  return;
                  addr86:
               }
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      public function get §@F§() : Boolean
      {
         return this.§7?§;
      }
      
      public function set §@F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7?§ = param1;
         }
      }
      
      public function get §@!]§() : Function
      {
         return this.§0!3§;
      }
      
      public function set §@!]§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§0!3§ = param1;
         }
      }
      
      public function get §^O§() : Function
      {
         return this.§1q§;
      }
      
      public function set §^O§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1q§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§try§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§try§ = param1;
         }
      }
      
      public function get §?0§() : Array
      {
         return this.§4!'§;
      }
      
      public function set §?0§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4!'§ = param1;
         }
      }
      
      public function get §!k§() : Array
      {
         return this.§&!]§;
      }
      
      public function set §!k§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§&!]§ = param1;
         }
      }
      
      public function get §]=§() : Array
      {
         return this.§@T§;
      }
      
      public function set §]=§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@T§ = param1;
         }
      }
   }
}
