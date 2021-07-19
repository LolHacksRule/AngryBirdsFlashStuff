package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^!'§ extends EventDispatcher implements §9U§
   {
       
      
      private var §3!2§:Object;
      
      private var §-!D§:String;
      
      private var §!i§:Vector.<String>;
      
      private var §3!=§:Vector.<Number>;
      
      private var §^m§:Vector.<Number>;
      
      private var §`M§:Function;
      
      private var §]5§:Function;
      
      private var §@F§:Function;
      
      private var §8l§:Array;
      
      private var §'E§:Array;
      
      private var §8!0§:Array;
      
      private var §58§:Number;
      
      private var §?4§:Number;
      
      private var §<!C§:Number;
      
      private var §,p§:Boolean;
      
      public function §^!'§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         loop0:
         do
         {
            this.§3!2§ = param1;
            this.§?4§ = 0;
            this.§58§ = Math.max(0.0001,param2);
            this.§<!C§ = 0;
            while(true)
            {
               this.§-!D§ = param3;
               this.§,p§ = false;
               while(_loc4_)
               {
                  this.§!i§ = new Vector.<String>(0);
                  this.§3!=§ = new Vector.<Number>(0);
                  if(_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
         this.§^m§ = new Vector.<Number>(0);
      }
      
      public function §]A§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§3!2§ == null)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
               addr81:
               while(true)
               {
               }
               addr81:
            }
            while(true)
            {
               this.§!i§.push(param1);
               §§goto(addr81);
            }
         }
         loop2:
         do
         {
            this.§3!=§.push(Number.NaN);
            while(_loc4_)
            {
               this.§^m§.push(param2);
               if(!_loc3_)
               {
                  continue loop2;
               }
            }
            §§goto(addr81);
         }
         while(_loc3_);
         
      }
      
      public function §6L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]A§("scaleX",param1);
         }
         do
         {
            this.§]A§("scaleY",param1);
         }
         while(!_loc3_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§]A§("x",param1);
         }
         do
         {
            this.§]A§("y",param2);
         }
         while(_loc4_ && param1);
         
      }
      
      public function §8H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]A§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc12_)
         {
            §§push(param1);
            if(!(_loc11_ && param1))
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && this))
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§?4§);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr48);
            }
            var _loc2_:* = §§pop();
            §§push(this);
            §§push(this.§?4§);
            if(_loc12_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?4§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§?4§);
               if(!(_loc11_ && _loc2_))
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     §§push(§§pop() < §§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(§§pop() >= this.§58§);
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§!E§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(null);
                                             addr155:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(!(_loc11_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr170:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr124:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc11_ && _loc2_)
                                                                  {
                                                                     break;
                                                                     addr134:
                                                                  }
                                                                  §§push(0);
                                                                  while(_loc12_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr229:
                                                               break loop4;
                                                            }
                                                            addr170:
                                                         }
                                                         while(true)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§push(this.§?4§);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc12_ || this)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr108:
                                                                                          if(_loc12_ || this)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr213:
                                                                                       §§push(Math.min(this.§58§,this.§?4§) / this.§58§);
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr229);
                                                                                       }
                                                                                       break loop4;
                                                                                       addr82:
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr170);
                                                                                 §§goto(addr229);
                                                                              }
                                                                              break;
                                                                           }
                                                                           break loop4;
                                                                        }
                                                                        §§goto(addr186);
                                                                     }
                                                                     §§goto(addr134);
                                                                  }
                                                               }
                                                               §§goto(addr82);
                                                            }
                                                            continue loop8;
                                                            §§goto(addr136);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr170);
                                             }
                                          }
                                       }
                                       addr186:
                                       return;
                                    }
                                    addr184:
                                 }
                                 break;
                              }
                              var _loc3_:* = §§pop();
                              var _loc4_:int = this.§3!=§.length;
                              var _loc5_:int = 0;
                              addr391:
                              if(_loc5_ < _loc4_)
                              {
                                 if(isNaN(this.§3!=§[_loc5_]))
                                 {
                                    if(_loc12_)
                                    {
                                       this.§3!=§[_loc5_] = this.§3!2§[this.§!i§[_loc5_]] as Number;
                                       addr278:
                                       _loc6_ = this.§3!=§[_loc5_];
                                       if(!_loc11_)
                                       {
                                          §§push(Number(this.§^m§[_loc5_]));
                                          §§push(Number(this.§^m§[_loc5_]));
                                          if(_loc12_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc11_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc11_)
                                                {
                                                   addr264:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr267:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                   if(_loc12_ || this)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr278);
                                                      }
                                                      _loc9_ = §<!>§.§'S§(this.§-!D§);
                                                      if(_loc12_)
                                                      {
                                                         addr388:
                                                         addr389:
                                                         §§push(_loc6_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                         }
                                                         _loc10_ = Number(§§pop());
                                                         addr390:
                                                         if(this.§,p§)
                                                         {
                                                            addr368:
                                                            §§push(Number(Math.round(_loc10_)));
                                                            if(!_loc11_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr333:
                                                                  this.§3!2§[this.§!i§[_loc5_]] = _loc10_;
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           _loc5_++;
                                                                           if(_loc12_ || _loc2_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                           §§goto(addr333);
                                                                           addr363:
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  addr377:
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   addr519:
                                                   §§push(this.§?4§);
                                                   §§push(this.§58§);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      addr493:
                                                      §§push(§§pop() >= §§pop());
                                                      if(!(_loc11_ && this))
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr503:
                                                            if(§§pop())
                                                            {
                                                               addr505:
                                                               dispatchEvent(new Event(Event.§<!D§));
                                                               addr511:
                                                               §§push(this.onComplete);
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                                  addr446:
                                                                  §§push(null);
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           if(_loc11_ && _loc2_)
                                                                           {
                                                                              §§goto(addr519);
                                                                           }
                                                                           addr469:
                                                                           this.onComplete.apply(null,this.§8!0§);
                                                                           addr432:
                                                                           return;
                                                                           addr467:
                                                                           addr466:
                                                                           addr470:
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr432);
                                                                  }
                                                                  §§goto(addr467);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            §§goto(addr432);
                                                         }
                                                         addr516:
                                                         if(§§pop())
                                                         {
                                                            addr518:
                                                            §§pop();
                                                            §§goto(addr519);
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr516);
                                                   §§push(§§pop() < §§pop());
                                                }
                                                §§goto(addr493);
                                             }
                                             §§goto(addr267);
                                          }
                                          §§goto(addr264);
                                       }
                                       §§goto(addr519);
                                    }
                                    §§goto(addr470);
                                 }
                                 §§goto(addr278);
                              }
                              §§push(this.§,K§);
                              if(_loc12_ || param1)
                              {
                                 §§push(null);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§,K§);
                                       if(!_loc11_)
                                       {
                                          §§push(null);
                                          if(_loc12_ || param1)
                                          {
                                             §§push(this.§'E§);
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                §§pop().apply(§§pop(),§§pop());
                                                if(!_loc11_)
                                                {
                                                   addr512:
                                                   §§goto(addr264);
                                                   §§push(_loc2_);
                                                   §§push(this.§58§);
                                                }
                                                §§goto(addr505);
                                             }
                                          }
                                       }
                                       §§goto(addr469);
                                    }
                                    §§goto(addr512);
                                 }
                                 §§goto(addr469);
                              }
                              §§goto(addr446);
                           }
                        }
                        §§goto(addr184);
                     }
                  }
               }
               §§goto(addr229);
            }
         }
         §§goto(addr48);
      }
      
      public function get §7L§() : Boolean
      {
         return this.§?4§ >= this.§58§;
      }
      
      public function get target() : Object
      {
         return this.§3!2§;
      }
      
      public function get § P§() : String
      {
         return this.§-!D§;
      }
      
      public function get §6<§() : Number
      {
         return this.§58§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?4§;
      }
      
      public function get delay() : Number
      {
         return this.§<!C§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.§?4§);
            if(_loc3_)
            {
               §§push(this.§<!C§);
               if(_loc3_ || this)
               {
                  addr75:
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     §§push(param1);
                  }
                  §§pop().§?4§ = §§pop();
                  do
                  {
                     this.§<!C§ = param1;
                  }
                  while(!_loc3_);
                  
                  return;
                  addr76:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public function get §^N§() : Boolean
      {
         return this.§,p§;
      }
      
      public function set §^N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,p§ = param1;
         }
      }
      
      public function get §!E§() : Function
      {
         return this.§`M§;
      }
      
      public function set §!E§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`M§ = param1;
         }
      }
      
      public function get §,K§() : Function
      {
         return this.§]5§;
      }
      
      public function set §,K§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]5§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§@F§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§@F§ = param1;
         }
      }
      
      public function get § Z§() : Array
      {
         return this.§8l§;
      }
      
      public function set § Z§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8l§ = param1;
         }
      }
      
      public function get §7`§() : Array
      {
         return this.§'E§;
      }
      
      public function set §7`§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'E§ = param1;
         }
      }
      
      public function get §1h§() : Array
      {
         return this.§8!0§;
      }
      
      public function set §1h§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8!0§ = param1;
         }
      }
   }
}
