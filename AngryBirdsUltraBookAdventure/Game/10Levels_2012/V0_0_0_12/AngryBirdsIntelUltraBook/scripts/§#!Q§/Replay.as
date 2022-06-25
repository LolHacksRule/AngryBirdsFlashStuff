package §#!Q§
{
   import §2!H§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §4V§:String = "@@";
      
      public static const §;'§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §4V§ = "@@";
            do
            {
               §;'§ = "@";
            }
            while(_loc2_);
            
         }
      }
      
      private var §#!?§:String;
      
      private var §1#§:int;
      
      private var §8%§:Number;
      
      private var §2+§:Number;
      
      protected var §;!Y§:Boolean;
      
      protected var §-8§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§,h§>;
      
      private var §?!Q§:int;
      
      private var §<!E§:int;
      
      public function Replay(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-8§ = new Vector.<Shot>();
            loop0:
            while(true)
            {
               this.mPowerUps = new Vector.<§,h§>();
               while(true)
               {
                  super();
                  loop3:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§8%§ = 1;
                     if(!_loc2_)
                     {
                        addr35:
                        if(!(_loc3_ || param1))
                        {
                           while(true)
                           {
                              this.§#!?§ = param1;
                              continue loop3;
                              §§goto(addr35);
                           }
                           return;
                        }
                        addr59:
                        addr85:
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§,h§ = null;
         var _loc3_:Array = param1.split(§4V§);
         if(!_loc13_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new Replay(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§;'§);
               _loc5_ = _loc3_[2].split(§;'§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        _loc8_ = Shot.initialize(_loc6_);
                        if(_loc12_)
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           if(_loc13_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        _loc2_.§-8§.push(_loc8_);
                        continue;
                     }
                     if(!_loc13_)
                     {
                        if(!_loc13_)
                        {
                           if(_loc12_ || Replay)
                           {
                              _loc10_ = 0;
                              if(_loc12_ || param1)
                              {
                                 addr143:
                                 _loc11_ = _loc5_;
                                 if(!_loc13_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr192:
                                    return _loc2_;
                                    addr188:
                                    addr191:
                                    addr190:
                                 }
                                 while(true)
                                 {
                                    _loc9_ = §,h§.initialize(_loc7_);
                                    if(_loc12_ || _loc3_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc12_)
                                          {
                                             addr183:
                                             _loc2_.mPowerUps.push(_loc9_);
                                          }
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr183);
                                 }
                                 addr165:
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr190);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr165);
                  }
                  §§goto(addr192);
               }
            }
            §§goto(addr192);
         }
         §§goto(addr49);
      }
      
      public function get § O§() : Boolean
      {
         return this.§;!Y§;
      }
      
      public function get levelName() : String
      {
         return this.§#!?§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8%§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§8%§;
      }
      
      protected function get §">§() : int
      {
         return this.§1#§;
      }
      
      public function § a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            §§push(this.§;!Y§);
            if(!_loc6_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc6_ && param2))
               {
                  this.§-8§.push(new Shot(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §6t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§;!Y§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  if(this.mPowerUps.length > 0)
                  {
                     while(this.mPowerUps[this.mPowerUps.length - 1].step != param1)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr20:
                        return;
                        addr53:
                     }
                     §§goto(addr93);
                  }
                  loop1:
                  while(true)
                  {
                     this.mPowerUps.push(new §,h§(param1));
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr49);
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                        addr94:
                     }
                  }
                  §§goto(addr53);
               }
               addr93:
               return;
            }
            §§goto(addr20);
         }
         §§goto(addr94);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§;!Y§ = true;
         }
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Shot = null;
         var _loc3_:§,h§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§-8§.length > this.§?!Q§)
            {
               if(_loc6_)
               {
                  addr37:
                  _loc2_ = this.§-8§[this.§?!Q§];
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc2_.step == this.§">§)
                     {
                        if(_loc6_)
                        {
                           param1.slingshot.§-O§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
                           if(!_loc7_)
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§?!Q§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 _loc4_.§?!Q§ = _loc5_;
                              }
                              addr102:
                              if(this.mPowerUps.length > this.§<!E§)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    _loc3_ = this.mPowerUps[this.§<!E§];
                                    if(_loc6_)
                                    {
                                       if(_loc3_.step == this.§">§)
                                       {
                                          if(_loc6_)
                                          {
                                             addr131:
                                             param1.activatePowerup();
                                             if(_loc7_)
                                             {
                                             }
                                             §§goto(addr161);
                                          }
                                          §§push((_loc4_ = this).§<!E§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc5_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             _loc4_.§<!E§ = _loc5_;
                                          }
                                          §§goto(addr161);
                                       }
                                       addr161:
                                       §§push((_loc4_ = this).§1#§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          _loc4_.§1#§ = _loc5_;
                                       }
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr131);
                           }
                        }
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr131);
            }
            §§goto(addr102);
         }
         §§goto(addr37);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + (this.§#!?§ + §4V§ + this.§6!U§() + §4V§ + this.§%!D§()));
               if(_loc2_ || this)
               {
                  addr77:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §6!U§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§-8§.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= this.§-8§.length)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr162:
                              addr157:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + this.§-8§[_loc2_].toString());
                                 }
                              }
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr146:
                           while(!(_loc4_ && this))
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr118:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 addr117:
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr162);
                        }
                     }
                     while(!_loc3_)
                     {
                        §§goto(addr146);
                     }
                     continue;
                  }
                  §§push(_loc1_);
                  §§goto(addr157);
               }
               §§goto(addr117);
            }
            §§goto(addr118);
         }
         return §§pop();
      }
      
      private function §%!D§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + this.mPowerUps.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(_loc4_ || _loc1_)
               {
                  if(§§pop() >= this.mPowerUps.length)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(_loc4_ || _loc1_)
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr143:
                                 §§push(§§pop() + §;'§);
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr148:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                    }
                                 }
                                 addr147:
                              }
                              while(!(_loc4_ || _loc2_))
                              {
                                 §§goto(addr147);
                                 §§goto(addr148);
                              }
                              §§push(§§pop() + this.mPowerUps[_loc2_].toString());
                           }
                           _loc1_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr108:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr119:
                                       while(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr107:
                              }
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr119);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr143);
               }
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         return §§pop();
      }
   }
}
