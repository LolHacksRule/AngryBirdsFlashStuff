package §"o§
{
   import §[x§.§2^§;
   import flash.system.Capabilities;
   
   public class §9!#§
   {
      
      public static const §0!A§:String = "@@";
      
      public static const §6C§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!A§ = "@@";
            do
            {
               §6C§ = "@";
            }
            while(_loc2_);
            
         }
      }
      
      private var §8h§:String;
      
      private var §@"§:int;
      
      private var §?!A§:Number;
      
      private var § !A§:Number;
      
      protected var §^o§:Boolean;
      
      protected var §1i§:Vector.<§>V§>;
      
      protected var §%m§:Vector.<PowerUp>;
      
      private var § !0§:int;
      
      private var §+!7§:int;
      
      public function §9!#§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1i§ = new Vector.<§>V§>();
            loop0:
            while(true)
            {
               this.§%m§ = new Vector.<PowerUp>();
               loop1:
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     this.§8h§ = param1;
                     while(!_loc3_)
                     {
                        continue loop1;
                        this.§?!A§ = 1;
                        if(_loc2_)
                        {
                           return;
                           addr39:
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr39);
      }
      
      public static function initialize(param1:String) : §9!#§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§9!#§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§>V§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§0!A§);
         if(_loc13_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §9!#§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§6C§);
               _loc5_ = _loc3_[2].split(§6C§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!(_loc12_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §>V§.initialize(_loc6_))
                        {
                           if(!(_loc12_ && _loc2_))
                           {
                              _loc2_.§1i§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || _loc3_)
                     {
                        if(!_loc12_)
                        {
                           if(_loc13_)
                           {
                              _loc10_ = 0;
                              if(_loc13_ || _loc3_)
                              {
                                 _loc11_ = _loc5_;
                                 if(!(_loc12_ && §9!#§))
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
                                    if(_loc9_ = PowerUp.initialize(_loc7_))
                                    {
                                       if(_loc13_ || _loc3_)
                                       {
                                          _loc2_.§%m§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 addr168:
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr189);
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
                     §§goto(addr168);
                  }
                  §§goto(addr190);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr49);
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§^o§;
      }
      
      public function get §"8§() : String
      {
         return this.§8h§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!A§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§?!A§;
      }
      
      protected function get §-p§() : int
      {
         return this.§@"§;
      }
      
      public function §,0§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§^o§)
            {
               if(!_loc6_)
               {
                  this.§1i§.push(new §>V§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §7'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.§^o§)
            {
               if(!_loc3_)
               {
                  addr70:
                  if(this.§%m§.length > 0)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(this.§%m§[this.§%m§.length - 1].step != param1)
                        {
                           while(true)
                           {
                              this.§%m§.push(new PowerUp(param1));
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 §§goto(addr24);
                              }
                           }
                           addr28:
                        }
                     }
                     return;
                  }
                  §§goto(addr28);
               }
               §§goto(addr93);
            }
            addr24:
            return;
         }
         §§goto(addr70);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^o§ = true;
         }
      }
      
      public function step(param1:§2^§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§>V§ = null;
         var _loc3_:PowerUp = null;
         if(!(_loc7_ && this))
         {
            if(this.§1i§.length > this.§ !0§)
            {
               if(_loc6_ || param1)
               {
                  _loc2_ = this.§1i§[this.§ !0§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§-p§)
                     {
                        if(_loc6_)
                        {
                           addr58:
                           param1.slingshot.§5%§(_loc2_.x,_loc2_.y,_loc2_.§^,§,_loc2_.angle);
                           if(_loc7_)
                           {
                           }
                           §§goto(addr101);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§ !0§);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc4_.§ !0§ = _loc5_;
                        }
                        §§goto(addr101);
                     }
                     addr101:
                     if(this.§%m§.length > this.§+!7§)
                     {
                        if(_loc6_)
                        {
                           addr109:
                           _loc3_ = this.§%m§[this.§+!7§];
                           if(_loc6_)
                           {
                              if(_loc3_.step == this.§-p§)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    param1.activatePowerup();
                                    if(_loc6_ || param1)
                                    {
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              §§goto(addr174);
                           }
                           §§push((_loc4_ = this).§+!7§);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc6_ || _loc2_)
                           {
                              _loc4_.§+!7§ = _loc5_;
                           }
                        }
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr58);
               }
               addr174:
               §§push((_loc4_ = this).§@"§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               _loc5_ = §§pop();
               if(_loc6_)
               {
                  _loc4_.§@"§ = _loc5_;
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr109);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§8h§ + §0!A§ + this.§[a§() + §0!A§ + this.§`Q§()));
               if(_loc3_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  addr76:
                  return _loc1_;
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §[a§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§1i§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§1i§.length)
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           loop2:
                           while(!_loc4_)
                           {
                              _loc2_++;
                              while(_loc4_ && _loc3_)
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
                              §§push(§§pop() + §6C§);
                              addr122:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                              }
                           }
                           addr119:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(§§pop() + this.§1i§[_loc2_].toString());
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr74);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr119);
         }
         return §§pop();
      }
      
      private function §`Q§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() + this.§%m§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§%m§.length)
            {
               if(_loc3_ || _loc1_)
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr129:
                        §§push(§§pop() + §6C§);
                        loop4:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr133:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop() + this.§%m§[_loc2_].toString());
                                 break;
                              }
                              continue loop4;
                           }
                        }
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                     }
                     addr117:
                  }
                  while(!(_loc3_ || _loc3_))
                  {
                     §§goto(addr133);
                     §§goto(addr117);
                  }
                  _loc2_++;
               }
               continue;
            }
            §§push(_loc1_);
            §§goto(addr129);
         }
         return §§pop();
      }
   }
}
