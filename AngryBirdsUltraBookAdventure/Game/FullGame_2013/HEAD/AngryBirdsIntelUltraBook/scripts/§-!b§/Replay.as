package §-!b§
{
   import §]!@§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §'L§:String = "@@";
      
      public static const §37§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'L§ = "@@";
            do
            {
               §37§ = "@";
            }
            while(!(_loc2_ || Replay));
            
         }
      }
      
      private var §7a§:String;
      
      private var §5!C§:int;
      
      private var §-]§:Number;
      
      private var §28§:Number;
      
      protected var §?v§:Boolean;
      
      protected var §]h§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§->§>;
      
      private var §;c§:int;
      
      private var §,!D§:int;
      
      public function Replay(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]h§ = new Vector.<Shot>();
            while(true)
            {
               this.mPowerUps = new Vector.<§->§>();
            }
            addr98:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            do
            {
               if(!(_loc2_ || param1))
               {
                  continue loop1;
               }
               this.§7a§ = param1;
               while(!_loc3_)
               {
                  this.§-]§ = 1;
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr98);
            }
            while(!(_loc2_ || this));
            
            return;
         }
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
         var _loc9_:§->§ = null;
         var _loc3_:Array = param1.split(§'L§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr50:
               _loc2_ = new Replay(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§37§);
               _loc5_ = _loc3_[2].split(§37§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        _loc8_ = Shot.initialize(_loc6_);
                        if(!(_loc12_ && Replay))
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
                        _loc2_.§]h§.push(_loc8_);
                        continue;
                     }
                     if(_loc13_ || _loc2_)
                     {
                        if(!_loc12_)
                        {
                           if(_loc13_ || param1)
                           {
                              _loc10_ = 0;
                              if(_loc13_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr198:
                                    return _loc2_;
                                    addr194:
                                    addr197:
                                    addr196:
                                 }
                                 while(true)
                                 {
                                    _loc9_ = §->§.initialize(_loc7_);
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc13_ || Replay)
                                          {
                                             _loc2_.mPowerUps.push(_loc9_);
                                          }
                                       }
                                    }
                                    §§goto(addr194);
                                 }
                                 addr156:
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr196);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr156);
                  }
                  §§goto(addr198);
               }
            }
            §§goto(addr198);
         }
         §§goto(addr50);
      }
      
      public function get §?§() : Boolean
      {
         return this.§?v§;
      }
      
      public function get levelName() : String
      {
         return this.§7a§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-]§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§-]§;
      }
      
      protected function get §8!?§() : int
      {
         return this.§5!C§;
      }
      
      public function §!!E§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            §§push(this.§?v§);
            if(!(_loc6_ && param2))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc7_)
               {
                  this.§]h§.push(new Shot(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §+!-§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§?v§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_ || param1)
               {
                  if(this.mPowerUps.length > 0)
                  {
                     if(!_loc2_)
                     {
                        addr87:
                        if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
                        {
                        }
                     }
                     §§goto(addr98);
                  }
                  do
                  {
                     this.mPowerUps.push(new §->§(param1));
                  }
                  while(!_loc3_);
                  
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr25);
                  }
               }
               addr98:
               return;
            }
            addr25:
            return;
         }
         §§goto(addr87);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?v§ = true;
         }
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Shot = null;
         var _loc3_:§->§ = null;
         if(_loc7_ || param1)
         {
            if(this.§]h§.length > this.§;c§)
            {
               if(!_loc6_)
               {
                  _loc2_ = this.§]h§[this.§;c§];
                  if(_loc7_ || this)
                  {
                     if(_loc2_.step == this.§8!?§)
                     {
                        if(_loc6_ && param1)
                        {
                        }
                        §§goto(addr108);
                     }
                     addr108:
                     if(this.mPowerUps.length > this.§,!D§)
                     {
                        if(!_loc6_)
                        {
                           _loc3_ = this.mPowerUps[this.§,!D§];
                           if(_loc7_ || param1)
                           {
                              if(_loc3_.step == this.§8!?§)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    param1.activatePowerup();
                                    if(_loc7_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§,!D§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_)
                                       {
                                          _loc4_.§,!D§ = _loc5_;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr192);
                     }
                     §§push((_loc4_ = this).§5!C§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(_loc7_)
                     {
                        _loc4_.§5!C§ = _loc5_;
                     }
                     §§goto(addr192);
                  }
                  param1.slingshot.§+!Q§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
                  if(!(_loc6_ && this))
                  {
                     §§push((_loc4_ = this).§;c§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(_loc7_)
                     {
                        _loc4_.§;c§ = _loc5_;
                     }
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr108);
         }
         addr192:
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + (this.§7a§ + §'L§ + this.§2O§() + §'L§ + this.§4!>§()));
               if(!_loc2_)
               {
                  _loc1_ = §§pop();
                  addr74:
                  return _loc1_;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §2O§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() + this.§]h§.length.toString());
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
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§]h§.length)
               {
                  if(_loc3_ || this)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              §§push(§§pop() + this.§]h§[_loc2_].toString());
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 continue loop1;
                              }
                              addr151:
                           }
                        }
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr134:
                        while(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr108:
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr108:
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr152);
                     }
                  }
                  while(_loc4_)
                  {
                     §§goto(addr134);
                  }
                  continue;
               }
               §§push(_loc1_);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + §37§);
               }
               §§goto(addr151);
            }
            §§goto(addr108);
         }
         return §§pop();
      }
      
      private function §4!>§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + this.mPowerUps.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.mPowerUps.length)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr138:
                              §§push(§§pop() + §37§);
                              loop4:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr143:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc4_ || this))
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() + this.mPowerUps[_loc2_].toString());
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           _loc1_ = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr96:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr97:
                                       while(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr95:
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr97);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr138);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
         return §§pop();
      }
   }
}
