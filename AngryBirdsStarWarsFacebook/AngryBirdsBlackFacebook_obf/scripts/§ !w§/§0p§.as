package § !w§
{
   import §^#>§.§#_§;
   import flash.system.Capabilities;
   
   public class §0p§
   {
      
      public static const §%!B§:String = "@@";
      
      public static const §5#;§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%!B§ = "@@";
         }
         do
         {
            §5#;§ = "@";
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private var § n§:String;
      
      private var §-!Q§:int;
      
      private var §<C§:Number;
      
      private var §#T§:Number;
      
      protected var §,!%§:Boolean;
      
      protected var §=A§:Vector.<§&-§>;
      
      protected var §;#`§:Vector.<§3!1§>;
      
      private var §1"u§:int;
      
      private var §"!3§:int;
      
      public function §0p§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§=A§ = new Vector.<§&-§>();
         }
         while(true)
         {
            this.§;#`§ = new Vector.<§3!1§>();
            loop1:
            while(_loc2_)
            {
               super();
               do
               {
                  this.§ n§ = param1;
                  while(!(_loc3_ && param1))
                  {
                     this.§<C§ = 1;
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr39);
                  }
                  continue loop1;
               }
               while(!(_loc2_ || this));
               
               return;
            }
         }
      }
      
      public static function initialize(param1:String) : §0p§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§0p§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&-§ = null;
         var _loc9_:§3!1§ = null;
         var _loc3_:Array = param1.split(§%!B§);
         if(!(_loc12_ && _loc3_))
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new §0p§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§5#;§);
               _loc5_ = _loc3_[2].split(§5#;§);
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
                        if(_loc8_ = §&-§.initialize(_loc6_))
                        {
                           if(!_loc12_)
                           {
                              _loc2_.§=A§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || param1)
                     {
                        if(_loc13_ || _loc3_)
                        {
                           if(!(_loc12_ && param1))
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 addr141:
                                 _loc11_ = _loc5_;
                                 if(!(_loc12_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr185:
                                    return _loc2_;
                                    addr181:
                                    addr184:
                                    addr183:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §3!1§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§;#`§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 addr158:
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr183);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr158);
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr54);
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§,!%§;
      }
      
      public function get §]"+§() : String
      {
         return this.§ n§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<C§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      protected function get §9o§() : int
      {
         return this.§-!Q§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            if(!this.§,!%§)
            {
               if(_loc6_ || param2)
               {
                  this.§=A§.push(new §&-§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function § "t§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!this.§,!%§)
            {
               do
               {
                  if(this.§;#`§.length > 0)
                  {
                     if(!(_loc4_ && param3))
                     {
                        if(this.§;#`§[this.§;#`§.length - 1].step == param1)
                        {
                           if(!(_loc4_ && param1))
                           {
                              return;
                           }
                        }
                        do
                        {
                           this.§;#`§.push(new §3!1§(param1,param2,param3));
                        }
                        while(_loc4_);
                        
                        continue;
                        addr24:
                     }
                     while(true)
                     {
                     }
                  }
                  §§goto(addr24);
               }
               while(!(_loc5_ || this));
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,!%§ = true;
         }
      }
      
      public function step(param1:§#_§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&-§ = null;
         var _loc3_:§3!1§ = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§=A§.length > this.§1"u§)
            {
               if(_loc6_)
               {
                  _loc2_ = this.§=A§[this.§1"u§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§9o§)
                     {
                        if(_loc6_ || param1)
                        {
                           param1.slingshot.§;"A§(_loc2_.x,_loc2_.y,_loc2_.§3"'§,_loc2_.angle);
                           if(_loc7_)
                           {
                           }
                           §§goto(addr96);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§1"u§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc7_)
                        {
                           _loc4_.§1"u§ = _loc5_;
                        }
                     }
                  }
               }
               §§goto(addr104);
            }
            addr96:
            if(this.§;#`§.length > this.§"!3§)
            {
               if(!_loc7_)
               {
                  addr104:
                  _loc3_ = this.§;#`§[this.§"!3§];
                  if(_loc6_ || param1)
                  {
                     if(_loc3_.step == this.§9o§)
                     {
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr148);
                  }
                  param1.activateSpecialPower(_loc3_.§6#I§,_loc3_.§,!u§);
                  if(!_loc7_)
                  {
                     §§push((_loc4_ = this).§"!3§);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        _loc4_.§"!3§ = _loc5_;
                     }
                  }
               }
               §§goto(addr148);
            }
            addr148:
            §§push((_loc4_ = this).§-!Q§);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(_loc6_)
            {
               _loc4_.§-!Q§ = _loc5_;
            }
            return;
         }
         §§goto(addr104);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + (this.§ n§ + §%!B§ + this.§@#1§() + §%!B§ + this.§6D§()));
               if(!_loc2_)
               {
                  _loc1_ = §§pop();
                  addr66:
                  return _loc1_;
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §@#1§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§=A§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§=A§.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() + this.§=A§[_loc2_].toString());
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                           addr117:
                        }
                     }
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr93:
                     while(true)
                     {
                        _loc2_++;
                     }
                  }
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr93);
               }
               continue;
            }
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + §5#;§);
            }
            §§goto(addr117);
         }
         return §§pop();
      }
      
      private function §6D§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() + this.§;#`§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§;#`§.length)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr97:
                     while(_loc4_ || _loc3_)
                     {
                        _loc2_++;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop() + this.§;#`§[_loc2_].toString());
                           break;
                        }
                        addr128:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop3;
                        }
                     }
                  }
               }
               while(!(_loc4_ || _loc1_))
               {
                  §§goto(addr97);
               }
               continue;
            }
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + §5#;§);
            }
            §§goto(addr128);
         }
         return §§pop();
      }
   }
}
