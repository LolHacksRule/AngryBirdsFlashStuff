package §`!D§
{
   import §9T§.§1r§;
   import flash.system.Capabilities;
   
   public class §,q§
   {
      
      public static const §-0§:String = "@@";
      
      public static const §5!D§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-0§ = "@@";
         }
         do
         {
            §5!D§ = "@";
         }
         while(_loc2_);
         
      }
      
      private var §#1§:String;
      
      private var §`!B§:int;
      
      private var §`!;§:Number;
      
      private var §-!9§:Number;
      
      protected var §-!A§:Boolean;
      
      protected var §,[§:Vector.<§71§>;
      
      protected var §"#§:Vector.<PowerUp>;
      
      private var §#!B§:int;
      
      private var §1!C§:int;
      
      public function §,q§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,[§ = new Vector.<§71§>();
            loop0:
            while(true)
            {
               this.§"#§ = new Vector.<PowerUp>();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     this.§#1§ = param1;
                     while(_loc2_)
                     {
                        this.§`!;§ = 1;
                        if(!_loc3_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              return;
                              addr46:
                           }
                           continue loop2;
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function initialize(param1:String) : §,q§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§,q§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§71§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§-0§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §,q§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§5!D§);
               _loc5_ = _loc3_[2].split(§5!D§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!(_loc12_ && param1))
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §71§.initialize(_loc6_))
                        {
                           if(!(_loc12_ && §,q§))
                           {
                              _loc2_.§,[§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(_loc13_)
                        {
                           if(!(_loc12_ && param1))
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 _loc11_ = _loc5_;
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr180:
                                    return _loc2_;
                                    addr176:
                                    addr179:
                                    addr178:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = PowerUp.initialize(_loc7_))
                                    {
                                       if(_loc13_ || param1)
                                       {
                                          _loc2_.§"#§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 addr158:
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr178);
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
                  §§goto(addr180);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr49);
      }
      
      public function get §+c§() : Boolean
      {
         return this.§-!A§;
      }
      
      public function get §7!7§() : String
      {
         return this.§#1§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!;§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§`!;§;
      }
      
      protected function get §=u§() : int
      {
         return this.§`!B§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§-!A§)
            {
               if(_loc6_)
               {
                  this.§,[§.push(new §71§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §;6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§-!A§)
            {
               if(_loc2_ || param1)
               {
                  if(this.§"#§.length > 0)
                  {
                     while(true)
                     {
                        if(this.§"#§[this.§"#§.length - 1].step == param1)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           addr93:
                           while(true)
                           {
                           }
                        }
                        addr47:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        addr24:
                        return;
                        addr54:
                     }
                     §§goto(addr92);
                  }
                  while(true)
                  {
                     this.§"#§.push(new PowerUp(param1));
                     if(!_loc3_)
                     {
                        §§goto(addr47);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr54);
               }
               addr92:
               return;
            }
            §§goto(addr24);
         }
         §§goto(addr93);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-!A§ = true;
         }
      }
      
      public function step(param1:§1r§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§71§ = null;
         var _loc3_:PowerUp = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§,[§.length > this.§#!B§)
            {
               if(_loc6_ || _loc2_)
               {
                  addr42:
                  _loc2_ = this.§,[§[this.§#!B§];
                  if(_loc6_)
                  {
                     if(_loc2_.step == this.§=u§)
                     {
                        if(_loc6_)
                        {
                           param1.slingshot.§!z§(_loc2_.x,_loc2_.y,_loc2_.§28§,_loc2_.angle);
                           if(_loc6_)
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§#!B§);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 _loc4_.§#!B§ = _loc5_;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr119);
            }
            addr106:
            if(this.§"#§.length > this.§1!C§)
            {
               if(!(_loc7_ && _loc2_))
               {
                  addr119:
                  _loc3_ = this.§"#§[this.§1!C§];
                  if(!_loc7_)
                  {
                     if(_loc3_.step == this.§=u§)
                     {
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr164);
                  }
                  param1.activatePowerup();
                  if(_loc6_)
                  {
                     §§push((_loc4_ = this).§1!C§);
                     if(_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(_loc6_)
                     {
                        _loc4_.§1!C§ = _loc5_;
                     }
                  }
               }
               §§goto(addr164);
            }
            addr164:
            §§push((_loc4_ = this).§`!B§);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(!_loc7_)
            {
               _loc4_.§`!B§ = _loc5_;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + (this.§#1§ + §-0§ + this.§#>§() + §-0§ + this.§;y§()));
               if(!_loc3_)
               {
                  _loc1_ = §§pop();
                  addr75:
                  return _loc1_;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §#>§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§,[§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,[§.length)
            {
               if(_loc4_ || _loc3_)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(_loc1_);
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr134:
                           addr130:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc4_ || this)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + this.§,[§[_loc2_].toString());
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
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                  }
               }
               while(_loc3_ && this)
               {
                  §§goto(addr134);
               }
               continue;
            }
            §§push(_loc1_);
            §§goto(addr130);
         }
         return §§pop();
      }
      
      private function §;y§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§"#§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§"#§.length)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           _loc2_++;
                           addr65:
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + this.§"#§[_loc2_].toString());
                                       continue loop1;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr110:
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr65);
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
