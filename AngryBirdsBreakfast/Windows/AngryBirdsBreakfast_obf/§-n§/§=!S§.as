package §-n§
{
   import §@L§.§?!'§;
   import flash.system.Capabilities;
   
   public class §=!S§
   {
      
      public static const §4!@§:String = "@@";
      
      public static const §-!#§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!@§ = "@@";
         }
         do
         {
            §-!#§ = "@";
         }
         while(_loc2_);
         
      }
      
      private var §&M§:String;
      
      private var §%!`§:int;
      
      private var §>3§:Number;
      
      private var §?W§:Number;
      
      protected var §;'§:Boolean;
      
      protected var §?p§:Vector.<§!!Q§>;
      
      protected var §^d§:Vector.<§,0§>;
      
      private var §!!L§:int;
      
      private var §!K§:int;
      
      public function §=!S§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§?p§ = new Vector.<§!!Q§>();
         }
         loop0:
         do
         {
            this.§^d§ = new Vector.<§,0§>();
            while(true)
            {
               super();
               while(!_loc2_)
               {
                  this.§&M§ = param1;
                  while(_loc3_)
                  {
                     this.§>3§ = 1;
                     if(_loc3_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      public static function initialize(param1:String) : §=!S§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§=!S§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§!!Q§ = null;
         var _loc9_:§,0§ = null;
         var _loc3_:Array = param1.split(§4!@§);
         if(_loc13_ || param1)
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new §=!S§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§-!#§);
               _loc5_ = _loc3_[2].split(§-!#§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc13_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §!!Q§.initialize(_loc6_))
                        {
                           if(!_loc12_)
                           {
                              _loc2_.§?p§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!(_loc12_ && _loc2_))
                     {
                        if(!_loc12_)
                        {
                           if(!(_loc12_ && param1))
                           {
                              _loc10_ = 0;
                              if(!(_loc12_ && _loc3_))
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || §=!S§)
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
                                    if(_loc9_ = §,0§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§^d§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 addr163:
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
                     §§goto(addr163);
                  }
                  §§goto(addr190);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr54);
      }
      
      public function get §,!V§() : Boolean
      {
         return this.§;'§;
      }
      
      public function get § !q§() : String
      {
         return this.§&M§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>3§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§>3§;
      }
      
      protected function get §]!§() : int
      {
         return this.§%!`§;
      }
      
      public function §&H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(!this.§;'§)
            {
               if(_loc6_)
               {
                  this.§?p§.push(new §!!Q§(param1,param2,param3,param4,param5));
                  addr38:
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §@3§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§;'§)
            {
               while(true)
               {
                  if(this.§^d§.length > 0)
                  {
                     if(!(_loc4_ || this))
                     {
                        break;
                     }
                     if(this.§^d§[this.§^d§.length - 1].step == param1)
                     {
                        break;
                     }
                  }
                  do
                  {
                     this.§^d§.push(new §,0§(param1,param2,param3));
                  }
                  while(!(_loc4_ || param2));
                  
                  if(_loc5_)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr19);
               }
               return;
               addr57:
            }
            addr19:
            return;
         }
         §§goto(addr57);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;'§ = true;
         }
      }
      
      public function step(param1:§?!'§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§!!Q§ = null;
         var _loc3_:§,0§ = null;
         if(_loc7_ || param1)
         {
            if(this.§?p§.length > this.§!!L§)
            {
               if(_loc7_)
               {
                  addr38:
                  _loc2_ = this.§?p§[this.§!!L§];
                  if(_loc7_)
                  {
                     if(_loc2_.step == this.§]!§)
                     {
                        if(!_loc6_)
                        {
                           addr54:
                           param1.slingshot.§4C§(_loc2_.x,_loc2_.y,_loc2_.§^!#§,_loc2_.angle);
                           if(_loc7_ || _loc3_)
                           {
                           }
                           addr87:
                           if(this.§^d§.length > this.§!K§)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 _loc3_ = this.§^d§[this.§!K§];
                                 if(!_loc6_)
                                 {
                                    if(_loc3_.step == this.§]!§)
                                    {
                                       if(_loc7_)
                                       {
                                          addr126:
                                          param1.activateSpecialPower(_loc3_.§%H§,_loc3_.§,!2§);
                                          if(_loc6_ && param1)
                                          {
                                          }
                                          §§goto(addr159);
                                       }
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§!K§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_)
                                       {
                                          _loc4_.§!K§ = _loc5_;
                                       }
                                       §§goto(addr159);
                                    }
                                    addr159:
                                    §§push((_loc4_ = this).§%!`§);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc4_.§%!`§ = _loc5_;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr126);
                        }
                        §§push((_loc4_ = this).§!!L§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.§!!L§ = _loc5_;
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr54);
               }
               §§goto(addr126);
            }
            §§goto(addr54);
         }
         §§goto(addr38);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + (this.§&M§ + §4!@§ + this.§3!!§() + §4!@§ + this.§^L§()));
               if(_loc3_)
               {
                  addr65:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §3!!§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§?p§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§?p§.length)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              addr110:
                              §§push(§§pop() + §-!#§);
                           }
                           _loc1_ = §§pop();
                           §§push(_loc1_);
                           addr114:
                        }
                        §§push(§§pop() + this.§?p§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     loop1:
                     while(true)
                     {
                        _loc2_++;
                        addr78:
                        while(_loc3_ && _loc3_)
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr78);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr110);
         }
         return §§pop();
      }
      
      private function §^L§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + this.§^d§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§^d§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc1_))
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     addr114:
                     §§push(§§pop() + §-!#§);
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr118:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§§pop() + this.§^d§[_loc2_].toString());
                           }
                        }
                     }
                     addr117:
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_ = §§pop();
                        while(!_loc3_)
                        {
                        }
                        _loc2_++;
                        continue loop0;
                        addr98:
                     }
                     §§goto(addr117);
                     §§goto(addr118);
                  }
               }
               §§goto(addr98);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr114);
         }
         return §§pop();
      }
   }
}
