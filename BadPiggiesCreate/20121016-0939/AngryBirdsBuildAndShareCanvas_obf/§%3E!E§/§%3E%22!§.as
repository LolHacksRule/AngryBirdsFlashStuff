package §>!E§
{
   import §5!V§.§!w§;
   import flash.system.Capabilities;
   
   public class §>"!§
   {
      
      public static const §8N§:String = "@@";
      
      public static const §"r§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8N§ = "@@";
            do
            {
               §"r§ = "@";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §#!§:String;
      
      private var §+7§:int;
      
      private var §5!?§:Number;
      
      private var §7A§:Number;
      
      protected var §^!D§:Boolean;
      
      protected var §'F§:Vector.<§+G§>;
      
      protected var §1§:Vector.<§-!@§>;
      
      private var §1!_§:int;
      
      private var §4!&§:int;
      
      public function §>"!§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'F§ = new Vector.<§+G§>();
            while(true)
            {
               this.§1§ = new Vector.<§-!@§>();
               loop1:
               for(; !(_loc2_ && param1); if(!(_loc2_ && param1))
               {
                  addr54:
                  return;
               })
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§#!§ = param1;
                     addr59:
                     while(true)
                     {
                        this.§5!?§ = 1;
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr54);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function initialize(param1:String) : §>"!§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§>"!§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§+G§ = null;
         var _loc9_:§-!@§ = null;
         var _loc3_:Array = param1.split(§8N§);
         if(!(_loc12_ && §>"!§))
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new §>"!§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§"r§);
               _loc5_ = _loc3_[2].split(§"r§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc13_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §+G§.initialize(_loc6_))
                        {
                           if(_loc13_)
                           {
                              _loc2_.§'F§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || §>"!§)
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           if(!_loc12_)
                           {
                              _loc10_ = 0;
                              if(_loc13_ || §>"!§)
                              {
                                 addr146:
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr190:
                                    return _loc2_;
                                    addr186:
                                    addr189:
                                    addr188:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §-!@§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§1§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 addr163:
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr188);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr163);
                  }
                  §§goto(addr190);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr54);
      }
      
      public function get §if §() : Boolean
      {
         return this.§^!D§;
      }
      
      public function get §;!^§() : String
      {
         return this.§#!§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!?§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§5!?§;
      }
      
      protected function get §?!Z§() : int
      {
         return this.§+7§;
      }
      
      public function §3"%§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§^!D§)
            {
               if(!_loc6_)
               {
                  this.§'F§.push(new §+G§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §7!j§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!this.§^!D§)
            {
               if(_loc2_)
               {
                  if(this.§1§.length > 0)
                  {
                     if(!_loc3_)
                     {
                        if(this.§1§[this.§1§.length - 1].step == param1)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr87);
                           }
                           else
                           {
                              addr88:
                              while(true)
                              {
                              }
                              addr88:
                           }
                        }
                     }
                     §§goto(addr88);
                  }
                  while(true)
                  {
                     this.§1§.push(new §-!@§(param1));
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr24);
               }
               addr87:
               return;
            }
            addr24:
            return;
         }
         §§goto(addr88);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!D§ = true;
         }
      }
      
      public function step(param1:§!w§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§+G§ = null;
         var _loc3_:§-!@§ = null;
         if(_loc6_)
         {
            if(this.§'F§.length > this.§1!_§)
            {
               if(!_loc7_)
               {
                  _loc2_ = this.§'F§[this.§1!_§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§?!Z§)
                     {
                        if(_loc6_)
                        {
                           param1.slingshot.§`"$§(_loc2_.x,_loc2_.y,_loc2_.§ i§,_loc2_.angle);
                           if(!_loc6_)
                           {
                           }
                           addr91:
                           if(this.§1§.length > this.§4!&§)
                           {
                              if(!_loc7_)
                              {
                                 addr99:
                                 _loc3_ = this.§1§[this.§4!&§];
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(_loc3_.step == this.§?!Z§)
                                    {
                                       if(_loc6_)
                                       {
                                          addr120:
                                          param1.activatePowerup();
                                          if(!_loc6_)
                                          {
                                          }
                                          §§goto(addr144);
                                       }
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§4!&§);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_)
                                       {
                                          _loc4_.§4!&§ = _loc5_;
                                       }
                                       §§goto(addr144);
                                    }
                                    addr144:
                                    §§push((_loc4_ = this).§+7§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc4_.§+7§ = _loc5_;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§push((_loc4_ = this).§1!_§);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§1!_§ = _loc5_;
                  }
                  §§goto(addr91);
               }
               §§goto(addr99);
            }
            §§goto(addr91);
         }
         §§goto(addr120);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§#!§ + §8N§ + this.§0!i§() + §8N§ + this.§?!@§()));
               if(!_loc2_)
               {
                  _loc1_ = §§pop();
                  addr71:
                  return _loc1_;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §0!i§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + this.§'F§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§'F§.length)
            {
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc4_ || this)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(_loc4_ || _loc1_)
                        {
                           _loc2_++;
                           while(_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                        addr128:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop() + this.§'F§[_loc2_].toString());
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr70);
            }
            else
            {
               §§push(_loc1_);
               if(_loc4_ || _loc1_)
               {
                  §§push(§§pop() + §"r§);
               }
            }
            §§goto(addr128);
         }
         return §§pop();
      }
      
      private function §?!@§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§1§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§1§.length)
            {
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() + this.§1§[_loc2_].toString());
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                           addr113:
                        }
                     }
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr89:
                     while(true)
                     {
                        _loc2_++;
                     }
                  }
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr89);
               }
               continue;
            }
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + §"r§);
            }
            §§goto(addr113);
         }
         return §§pop();
      }
   }
}
