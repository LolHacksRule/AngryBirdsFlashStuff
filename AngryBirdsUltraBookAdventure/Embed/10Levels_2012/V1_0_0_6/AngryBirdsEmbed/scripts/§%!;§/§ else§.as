package §%!;§
{
   import §3G§.§!E§;
   import flash.system.Capabilities;
   
   public class § else§
   {
      
      public static const §!&§:String = "@@";
      
      public static const §"!>§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!&§ = "@@";
            if(_loc1_ || _loc1_)
            {
               §"!>§ = "@";
            }
         }
      }
      
      private var §^!4§:String;
      
      private var §?!7§:int;
      
      private var §#A§:Number;
      
      private var §9!8§:Number;
      
      protected var §"K§:Boolean;
      
      protected var §>N§:Vector.<§@v§>;
      
      protected var §3T§:Vector.<PowerUp>;
      
      private var §!,§:int;
      
      private var §6h§:int;
      
      public function § else§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>N§ = new Vector.<§@v§>();
            if(!(_loc3_ && _loc2_))
            {
               this.§3T§ = new Vector.<PowerUp>();
               if(_loc2_ || this)
               {
                  super();
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§^!4§ = param1;
                     if(!_loc3_)
                     {
                        this.§#A§ = 1;
                     }
                  }
               }
            }
         }
      }
      
      public static function initialize(param1:String) : § else§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§ else§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§@v§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§!&§);
         if(_loc12_ || param1)
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new § else§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§"!>§);
               _loc5_ = _loc3_[2].split(§"!>§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc12_ || § else§)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §@v§.initialize(_loc6_))
                        {
                           if(!_loc13_)
                           {
                              _loc2_.§>N§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!(_loc13_ && _loc3_))
                     {
                        if(_loc12_)
                        {
                           if(_loc12_)
                           {
                              _loc10_ = 0;
                              if(_loc12_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr179:
                                    return _loc2_;
                                    addr175:
                                    addr178:
                                    addr177:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = PowerUp.initialize(_loc7_))
                                    {
                                       if(!_loc13_)
                                       {
                                          _loc2_.§3T§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 addr162:
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr177);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr162);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr179);
         }
         §§goto(addr53);
      }
      
      public function get §'I§() : Boolean
      {
         return this.§"K§;
      }
      
      public function get §!h§() : String
      {
         return this.§^!4§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#A§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§#A§;
      }
      
      protected function get §>! §() : int
      {
         return this.§?!7§;
      }
      
      public function §0F§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!this.§"K§)
            {
               if(_loc6_ || this)
               {
                  this.§>N§.push(new §@v§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §4!3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§"K§)
            {
               if(_loc3_)
               {
                  if(this.§3T§.length > 0)
                  {
                     if(_loc3_)
                     {
                        if(this.§3T§[this.§3T§.length - 1].step == param1)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr68);
                           }
                        }
                     }
                  }
                  this.§3T§.push(new PowerUp(param1));
               }
            }
            return;
         }
         addr68:
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"K§ = true;
         }
      }
      
      public function step(param1:§!E§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§@v§ = null;
         var _loc3_:PowerUp = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§>N§.length > this.§!,§)
            {
               if(!_loc7_)
               {
                  addr37:
                  _loc2_ = this.§>N§[this.§!,§];
                  if(_loc6_ || param1)
                  {
                     if(_loc2_.step == this.§>! §)
                     {
                        if(_loc6_)
                        {
                           param1.slingshot.§7>§(_loc2_.x,_loc2_.y,_loc2_.§@!§,_loc2_.angle);
                           if(!(_loc7_ && _loc2_))
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§!,§);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_ || param1)
                              {
                                 _loc4_.§!,§ = _loc5_;
                              }
                           }
                        }
                     }
                     §§goto(addr111);
                  }
                  addr111:
                  if(this.§3T§.length > this.§6h§)
                  {
                     if(_loc6_)
                     {
                        _loc3_ = this.§3T§[this.§6h§];
                        if(_loc6_)
                        {
                           if(_loc3_.step == this.§>! §)
                           {
                              if(_loc7_)
                              {
                              }
                           }
                           §§goto(addr169);
                        }
                        param1.activatePowerup();
                        if(_loc6_)
                        {
                           §§push((_loc4_ = this).§6h§);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§6h§ = _loc5_;
                           }
                        }
                     }
                  }
                  §§goto(addr169);
               }
               addr169:
               §§push((_loc4_ = this).§?!7§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               _loc5_ = §§pop();
               if(_loc6_ || param1)
               {
                  _loc4_.§?!7§ = _loc5_;
               }
               return;
            }
            §§goto(addr111);
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
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + (this.§^!4§ + §!&§ + this.§1!0§() + §!&§ + this.§-x§()));
               if(_loc3_ || this)
               {
                  addr80:
                  _loc1_ = §§pop();
                  §§push(_loc1_);
               }
               return §§pop();
            }
         }
         §§goto(addr80);
      }
      
      private function §1!0§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§>N§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>N§.length)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop() + §"!>§);
               if(!(_loc4_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + this.§>N§[_loc2_].toString());
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        addr92:
                        _loc1_ = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_++;
                           if(_loc4_ && this)
                           {
                              break;
                           }
                        }
                        continue;
                        addr114:
                     }
                  }
                  break;
               }
            }
            §§goto(addr92);
         }
         §§goto(addr114);
         §§push(_loc1_);
      }
      
      private function §-x§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + this.§3T§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this.§3T§.length; _loc2_++,if(!(_loc3_ || _loc1_))
         {
            break;
         })
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + §"!>§);
               if(!(_loc4_ && this))
               {
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + this.§3T§[_loc2_].toString());
                        if(!(_loc3_ || _loc2_))
                        {
                           return §§pop();
                        }
                        addr97:
                        _loc1_ = §§pop();
                        if(_loc4_ && _loc1_)
                        {
                           break;
                        }
                        continue;
                        addr119:
                     }
                  }
                  break;
               }
            }
            §§goto(addr97);
         }
         §§goto(addr119);
         §§push(_loc1_);
      }
   }
}
