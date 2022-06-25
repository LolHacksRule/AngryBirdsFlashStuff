package §&!'§
{
   import §,!5§.§^g§;
   import flash.system.Capabilities;
   
   public class §>C§
   {
      
      public static const §9@§:String = "@@";
      
      public static const §%S§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9@§ = "@@";
            do
            {
               §%S§ = "@";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §;!§:String;
      
      private var §"!p§:int;
      
      private var §5y§:Number;
      
      private var §=U§:Number;
      
      protected var §02§:Boolean;
      
      protected var §-l§:Vector.<§4!?§>;
      
      protected var §1&§:Vector.<§#!7§>;
      
      private var §5!g§:int;
      
      private var §]!j§:int;
      
      public function §>C§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-l§ = new Vector.<§4!?§>();
            while(true)
            {
               this.§1&§ = new Vector.<§#!7§>();
            }
            addr85:
         }
         loop1:
         while(true)
         {
            super();
            while(_loc3_)
            {
               this.§;!§ = param1;
               while(!_loc2_)
               {
                  this.§5y§ = 1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break loop1;
                  }
                  §§goto(addr85);
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §>C§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§>C§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§4!?§ = null;
         var _loc9_:§#!7§ = null;
         var _loc3_:Array = param1.split(§9@§);
         if(!(_loc13_ && _loc2_))
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §>C§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§%S§);
               _loc5_ = _loc3_[2].split(§%S§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §4!?§.initialize(_loc6_))
                        {
                           if(!(_loc13_ && _loc2_))
                           {
                              _loc2_.§-l§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc13_)
                     {
                        if(_loc12_ || param1)
                        {
                           if(_loc12_)
                           {
                              _loc10_ = 0;
                              if(!(_loc13_ && _loc2_))
                              {
                                 addr140:
                                 _loc11_ = _loc5_;
                                 if(!(_loc13_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr189:
                                    return _loc2_;
                                    addr185:
                                    addr188:
                                    addr187:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §#!7§.initialize(_loc7_))
                                    {
                                       if(!(_loc13_ && §>C§))
                                       {
                                          _loc2_.§1&§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 addr167:
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr187);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr167);
                  }
                  §§goto(addr189);
               }
            }
            §§goto(addr189);
         }
         §§goto(addr53);
      }
      
      public function get §;J§() : Boolean
      {
         return this.§02§;
      }
      
      public function get §>Z§() : String
      {
         return this.§;!§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5y§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§5y§;
      }
      
      protected function get §?!Z§() : int
      {
         return this.§"!p§;
      }
      
      public function §%!1§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            if(!this.§02§)
            {
               if(!_loc6_)
               {
                  addr39:
                  this.§-l§.push(new §4!?§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function § do§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§02§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(this.§1&§.length > 0)
                  {
                     if(_loc3_)
                     {
                        addr71:
                        if(this.§1&§[this.§1&§.length - 1].step == param1)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§goto(addr24);
                              }
                              addr84:
                           }
                        }
                        §§goto(addr24);
                     }
                     return;
                  }
                  addr24:
                  §§goto(addr20);
               }
               §§goto(addr84);
            }
            addr20:
            while(true)
            {
               this.§1&§.push(new §#!7§(param1));
               if(_loc3_)
               {
                  break;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§02§ = true;
         }
      }
      
      public function step(param1:§^g§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§4!?§ = null;
         var _loc3_:§#!7§ = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§-l§.length > this.§5!g§)
            {
               if(_loc7_)
               {
                  _loc2_ = this.§-l§[this.§5!g§];
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc2_.step == this.§?!Z§)
                     {
                        if(_loc7_)
                        {
                           addr59:
                           param1.slingshot.§!!p§(_loc2_.x,_loc2_.y,_loc2_.§1$§,_loc2_.angle);
                           if(_loc6_ && this)
                           {
                           }
                           §§goto(addr107);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§5!g§);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc6_)
                        {
                           _loc4_.§5!g§ = _loc5_;
                        }
                        §§goto(addr107);
                     }
                     addr107:
                     if(this.§1&§.length > this.§]!j§)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc3_ = this.§1&§[this.§]!j§];
                           if(!_loc6_)
                           {
                              if(_loc3_.step == this.§?!Z§)
                              {
                                 if(_loc7_)
                                 {
                                    param1.activatePowerup();
                                    if(_loc6_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§push((_loc4_ = this).§]!j§);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc7_ || _loc2_)
                           {
                              _loc4_.§]!j§ = _loc5_;
                           }
                        }
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr59);
               }
               §§goto(addr180);
            }
            §§goto(addr59);
         }
         addr180:
         §§push((_loc4_ = this).§"!p§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + 1);
         }
         _loc5_ = §§pop();
         if(_loc7_ || this)
         {
            _loc4_.§"!p§ = _loc5_;
         }
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§;!§ + §9@§ + this.§;!'§() + §9@§ + this.§`W§()));
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  addr56:
                  return _loc1_;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §;!'§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(§§pop() + this.§-l§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§-l§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc1_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() + this.§-l§[_loc2_].toString());
                           addr123:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           _loc1_ = §§pop();
                           while(true)
                           {
                              _loc2_++;
                              addr78:
                              while(_loc4_)
                              {
                              }
                              continue loop0;
                           }
                           addr108:
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_ = §§pop();
                           }
                           addr122:
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr78);
            }
            else
            {
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + §%S§);
               }
            }
            §§goto(addr122);
         }
         return §§pop();
      }
      
      private function §`W§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§1&§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§1&§.length)
            {
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        _loc1_ = §§pop();
                        while(_loc3_ && this)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(_loc4_)
                              {
                                 §§push(§§pop() + this.§1&§[_loc2_].toString());
                                 continue loop1;
                              }
                              addr110:
                              while(true)
                              {
                                 §§push(§§pop() + §%S§);
                                 continue loop4;
                              }
                           }
                        }
                        _loc2_++;
                        continue loop0;
                        addr99:
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr114);
                     }
                  }
               }
               §§goto(addr99);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr110);
         }
         return §§pop();
      }
   }
}
