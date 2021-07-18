package §%U§
{
   import §@V§.§#=§;
   import flash.system.Capabilities;
   
   public class §;"!§
   {
      
      public static const §`!e§:String = "@@";
      
      public static const §%!P§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`!e§ = "@@";
         }
         do
         {
            §%!P§ = "@";
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §?!!§:String;
      
      private var §4" §:int;
      
      private var §6J§:Number;
      
      private var §'0§:Number;
      
      protected var §^!U§:Boolean;
      
      protected var §]j§:Vector.<§ C§>;
      
      protected var §-`§:Vector.<§]!a§>;
      
      private var §%!b§:int;
      
      private var §4b§:int;
      
      public function §;"!§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]j§ = new Vector.<§ C§>();
            while(true)
            {
               this.§-`§ = new Vector.<§]!a§>();
               addr68:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§6J§ = 1;
               addr75:
               if(!(_loc3_ && _loc2_))
               {
                  addr39:
                  if(!(_loc2_ || this))
                  {
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§?!!§ = param1;
                           addr61:
                           while(_loc2_ || _loc2_)
                           {
                              §§goto(addr68);
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr39);
                     }
                     addr97:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr97);
      }
      
      public static function initialize(param1:String) : §;"!§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§;"!§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ C§ = null;
         var _loc9_:§]!a§ = null;
         var _loc3_:Array = param1.split(§`!e§);
         if(_loc12_ || §;"!§)
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §;"!§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§%!P§);
               _loc5_ = _loc3_[2].split(§%!P§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc12_ || §;"!§)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = § C§.initialize(_loc6_))
                        {
                           if(_loc12_)
                           {
                              _loc2_.§]j§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc13_)
                     {
                        if(!(_loc13_ && _loc3_))
                        {
                           if(!_loc13_)
                           {
                              _loc10_ = 0;
                              if(_loc12_ || _loc3_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr184:
                                    return _loc2_;
                                    addr180:
                                    addr183:
                                    addr182:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §]!a§.initialize(_loc7_))
                                    {
                                       if(_loc12_)
                                       {
                                          _loc2_.§-`§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 addr157:
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr182);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr157);
                  }
                  §§goto(addr184);
               }
            }
            §§goto(addr184);
         }
         §§goto(addr53);
      }
      
      public function get §2x§() : Boolean
      {
         return this.§^!U§;
      }
      
      public function get levelName() : String
      {
         return this.§?!!§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6J§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§6J§;
      }
      
      protected function get §-!G§() : int
      {
         return this.§4" §;
      }
      
      public function §?!k§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(!this.§^!U§)
            {
               if(!(_loc7_ && param2))
               {
                  this.§]j§.push(new § C§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §6%§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§^!U§)
            {
               while(true)
               {
                  if(this.§-`§.length > 0)
                  {
                     if(_loc4_)
                     {
                        if(this.§-`§[this.§-`§.length - 1].step == param1)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           this.§-`§.push(new §]!a§(param1,param2,param3));
                           if(!(_loc5_ && this))
                           {
                              break;
                           }
                           addr85:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        continue;
                        addr23:
                     }
                     break;
                  }
                  §§goto(addr23);
               }
               return;
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!U§ = true;
         }
      }
      
      public function step(param1:§#=§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§ C§ = null;
         var _loc3_:§]!a§ = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§]j§.length > this.§%!b§)
            {
               if(!_loc6_)
               {
                  addr38:
                  _loc2_ = this.§]j§[this.§%!b§];
                  if(_loc7_ || param1)
                  {
                     if(_loc2_.step == this.§-!G§)
                     {
                        if(!(_loc6_ && this))
                        {
                           param1.slingshot.§8S§(_loc2_.x,_loc2_.y,_loc2_.§""§,_loc2_.angle);
                           if(_loc6_)
                           {
                           }
                           §§goto(addr107);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§%!b§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc4_.§%!b§ = _loc5_;
                        }
                     }
                     §§goto(addr107);
                  }
                  addr107:
                  if(this.§-`§.length > this.§4b§)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc3_ = this.§-`§[this.§4b§];
                        if(_loc7_)
                        {
                           if(_loc3_.step == this.§-!G§)
                           {
                              if(!_loc7_)
                              {
                              }
                           }
                           §§goto(addr174);
                        }
                        param1.activateSpecialPower(_loc3_.§="§,_loc3_.§]!8§);
                        if(_loc7_ || _loc3_)
                        {
                           §§push((_loc4_ = this).§4b§);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc4_.§4b§ = _loc5_;
                           }
                        }
                     }
                  }
                  §§goto(addr174);
               }
               addr174:
               §§push((_loc4_ = this).§4" §);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               _loc5_ = §§pop();
               if(_loc7_)
               {
                  _loc4_.§4" § = _loc5_;
               }
               return;
            }
            §§goto(addr107);
         }
         §§goto(addr38);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + (this.§?!!§ + §`!e§ + this.§;!S§() + §`!e§ + this.§&!#§()));
               if(!(_loc3_ && _loc3_))
               {
                  addr74:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §;!S§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§]j§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§]j§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        addr109:
                        §§push(§§pop() + §%!P§);
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr113:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                        }
                        addr112:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§]j§[_loc2_].toString());
                        §§goto(addr113);
                     }
                     addr80:
                  }
                  while(true)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           _loc2_++;
                           addr73:
                           do
                           {
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           while(_loc4_);
                           
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr112);
                     }
                     §§goto(addr113);
                     §§goto(addr80);
                  }
               }
               §§goto(addr73);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr109);
         }
         return §§pop();
      }
      
      private function §&!#§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && this))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§-`§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§-`§.length)
            {
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr117:
                        _loc1_ = §§pop();
                        addr118:
                        while(true)
                        {
                           §§push(_loc1_);
                        }
                        addr118:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§-`§[_loc2_].toString());
                        §§goto(addr118);
                     }
                     addr83:
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop3:
                     while(_loc3_ || this)
                     {
                        _loc2_++;
                        while(_loc4_ && _loc1_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                     §§goto(addr118);
                     §§goto(addr83);
                  }
               }
               §§goto(addr73);
            }
            else
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§§pop() + §%!P§);
               }
            }
            §§goto(addr117);
         }
         return §§pop();
      }
   }
}
