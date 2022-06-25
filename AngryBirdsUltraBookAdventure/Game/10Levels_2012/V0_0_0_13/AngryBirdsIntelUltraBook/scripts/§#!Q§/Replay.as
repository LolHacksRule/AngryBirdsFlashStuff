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
         if(_loc1_ || Replay)
         {
            §4V§ = "@@";
            do
            {
               §;'§ = "@";
            }
            while(_loc2_ && _loc1_);
            
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-8§ = new Vector.<Shot>();
            loop0:
            while(true)
            {
               this.mPowerUps = new Vector.<§,h§>();
               while(true)
               {
                  super();
                  while(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        this.§#!?§ = param1;
                        while(_loc2_ || param1)
                        {
                           this.§8%§ = 1;
                           if(!_loc3_)
                           {
                              return;
                              addr44:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§,h§ = null;
         var _loc3_:Array = param1.split(§4V§);
         if(_loc13_ || _loc2_)
         {
            if(_loc3_.length == 3)
            {
               addr55:
               _loc2_ = new Replay(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§;'§);
               _loc5_ = _loc3_[2].split(§;'§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        _loc8_ = Shot.initialize(_loc6_);
                        if(!_loc12_)
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           if(!_loc13_)
                           {
                              continue;
                           }
                        }
                        _loc2_.§-8§.push(_loc8_);
                        continue;
                     }
                     if(_loc13_)
                     {
                        if(_loc13_)
                        {
                           if(!(_loc12_ && Replay))
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 addr139:
                                 _loc11_ = _loc5_;
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr188:
                                    return _loc2_;
                                    addr184:
                                    addr187:
                                    addr186:
                                 }
                                 while(true)
                                 {
                                    _loc9_ = §,h§.initialize(_loc7_);
                                    if(_loc13_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             addr179:
                                             _loc2_.mPowerUps.push(_loc9_);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr179);
                                 }
                                 addr161:
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr186);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr161);
                  }
                  §§goto(addr188);
               }
            }
            §§goto(addr188);
         }
         §§goto(addr55);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(this.§;!Y§);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc6_ || param2)
               {
                  addr61:
                  this.§-8§.push(new Shot(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §6t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;!Y§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  if(this.mPowerUps.length > 0)
                  {
                     if(!_loc2_)
                     {
                        addr70:
                        if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                           addr89:
                           while(true)
                           {
                           }
                           addr89:
                        }
                     }
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     this.mPowerUps.push(new §,h§(param1));
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr20);
               }
               §§goto(addr89);
            }
            addr20:
            return;
         }
         §§goto(addr70);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!(_loc7_ && _loc2_))
         {
            if(this.§-8§.length > this.§?!Q§)
            {
               if(_loc6_)
               {
                  addr37:
                  _loc2_ = this.§-8§[this.§?!Q§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§">§)
                     {
                        if(_loc6_ || param1)
                        {
                           addr58:
                           param1.slingshot.§-O§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
                           if(_loc6_ || this)
                           {
                           }
                           addr107:
                           if(this.mPowerUps.length > this.§<!E§)
                           {
                              if(!_loc7_)
                              {
                                 addr115:
                                 _loc3_ = this.mPowerUps[this.§<!E§];
                                 if(_loc6_)
                                 {
                                    if(_loc3_.step == this.§">§)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          addr136:
                                          param1.activatePowerup();
                                          if(_loc6_ || _loc2_)
                                          {
                                          }
                                          §§goto(addr176);
                                       }
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§<!E§);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!_loc7_)
                                       {
                                          _loc4_.§<!E§ = _loc5_;
                                       }
                                       §§goto(addr176);
                                    }
                                    addr176:
                                    §§push((_loc4_ = this).§1#§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(_loc6_)
                                    {
                                       _loc4_.§1#§ = _loc5_;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr136);
                        }
                        §§push((_loc4_ = this).§?!Q§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           _loc4_.§?!Q§ = _loc5_;
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr58);
               }
               §§goto(addr115);
            }
            §§goto(addr58);
         }
         §§goto(addr37);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc2_ && this))
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§#!?§ + §4V§ + this.§6!U§() + §4V§ + this.§%!D§()));
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_ = §§pop();
                  addr79:
                  return _loc1_;
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §6!U§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§-8§.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(_loc4_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= this.§-8§.length)
                  {
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 break;
                              }
                              addr148:
                              §§push(§§pop() + §;'§);
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr153:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                 }
                              }
                              addr152:
                           }
                           while(true)
                           {
                              §§push(§§pop() + this.§-8§[_loc2_].toString());
                              §§goto(addr153);
                           }
                           addr129:
                        }
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() + 1);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr106:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop3;
                                       }
                                    }
                                    addr105:
                                 }
                                 §§goto(addr106);
                              }
                           }
                           else
                           {
                              §§goto(addr152);
                           }
                           §§goto(addr153);
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr148);
               }
               §§goto(addr105);
            }
            §§goto(addr106);
         }
         return §§pop();
      }
      
      private function §%!D§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + this.mPowerUps.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= this.mPowerUps.length)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + this.mPowerUps[_loc2_].toString());
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    continue loop1;
                                 }
                                 addr141:
                              }
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           addr100:
                           §§push(§§pop() + 1);
                           if(_loc3_ || _loc1_)
                           {
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr101:
                              while(_loc4_ && this)
                              {
                                 §§goto(addr142);
                              }
                              continue loop0;
                           }
                           addr100:
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr101);
               }
               else
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(§§pop() + §;'§);
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr100);
         }
         return §§pop();
      }
   }
}
