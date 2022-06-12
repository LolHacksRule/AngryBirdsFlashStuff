package §+!h§
{
   import §9"!§.§9"3§;
   import flash.system.Capabilities;
   
   public class §[!Q§
   {
      
      public static const §[!D§:String = "@@";
      
      public static const §'!h§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!D§ = "@@";
            do
            {
               §'!h§ = "@";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §5o§:String;
      
      private var §9!P§:int;
      
      private var § 1§:Number;
      
      private var §?!x§:Number;
      
      protected var §9!s§:Boolean;
      
      protected var §4!#§:Vector.<§8" §>;
      
      protected var §+!-§:Vector.<§-!g§>;
      
      private var §%W§:int;
      
      private var §-R§:int;
      
      public function §[!Q§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4!#§ = new Vector.<§8" §>();
         }
         loop0:
         while(true)
         {
            this.§+!-§ = new Vector.<§-!g§>();
            loop1:
            do
            {
               super();
               while(true)
               {
                  this.§5o§ = param1;
                  while(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        this.§ 1§ = 1;
                        if(_loc3_ || this)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(!(_loc3_ || param1));
            
            return;
         }
      }
      
      public static function initialize(param1:String) : §[!Q§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§[!Q§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§8" § = null;
         var _loc9_:§-!g§ = null;
         var _loc3_:Array = param1.split(§[!D§);
         if(_loc12_ || _loc3_)
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §[!Q§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§'!h§);
               _loc5_ = _loc3_[2].split(§'!h§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §8" §.initialize(_loc6_))
                        {
                           if(_loc12_)
                           {
                              _loc2_.§4!#§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc12_)
                     {
                        if(_loc12_ || _loc2_)
                        {
                           if(_loc12_ || §[!Q§)
                           {
                              _loc10_ = 0;
                              if(_loc12_ || _loc3_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_)
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
                                    if(_loc9_ = §-!g§.initialize(_loc7_))
                                    {
                                       if(_loc12_ || param1)
                                       {
                                          _loc2_.§+!-§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 addr162:
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
                     §§goto(addr162);
                  }
                  §§goto(addr184);
               }
            }
            §§goto(addr184);
         }
         §§goto(addr53);
      }
      
      public function get §5%§() : Boolean
      {
         return this.§9!s§;
      }
      
      public function get § !K§() : String
      {
         return this.§5o§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ 1§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§ 1§;
      }
      
      protected function get §;s§() : int
      {
         return this.§9!P§;
      }
      
      public function §^K§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            if(!this.§9!s§)
            {
               if(!(_loc7_ && param2))
               {
                  addr43:
                  this.§4!#§.push(new §8" §(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §3d§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§9!s§)
            {
               if(!_loc3_)
               {
                  if(this.§+!-§.length > 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(this.§+!-§[this.§+!-§.length - 1].step == param1)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr82);
                           }
                           else
                           {
                              addr83:
                              while(true)
                              {
                              }
                              addr83:
                           }
                        }
                     }
                     §§goto(addr82);
                  }
                  while(true)
                  {
                     this.§+!-§.push(new §-!g§(param1));
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr19);
               }
               §§goto(addr83);
            }
            addr19:
            return;
         }
         addr82:
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!s§ = true;
         }
      }
      
      public function step(param1:§9"3§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8" § = null;
         var _loc3_:§-!g§ = null;
         if(!_loc6_)
         {
            if(this.§4!#§.length > this.§%W§)
            {
               if(_loc7_)
               {
                  addr33:
                  _loc2_ = this.§4!#§[this.§%W§];
                  if(_loc7_)
                  {
                     if(_loc2_.step == this.§;s§)
                     {
                        if(!(_loc6_ && param1))
                        {
                           param1.slingshot.§9E§(_loc2_.x,_loc2_.y,_loc2_.§@!T§,_loc2_.angle);
                           if(!_loc7_)
                           {
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  var _loc4_:*;
                  §§push((_loc4_ = this).§%W§);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_ || _loc3_)
                  {
                     _loc4_.§%W§ = _loc5_;
                  }
                  addr102:
                  if(this.§+!-§.length > this.§-R§)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_ = this.§+!-§[this.§-R§];
                        if(_loc7_ || _loc2_)
                        {
                           if(_loc3_.step == this.§;s§)
                           {
                              if(_loc7_)
                              {
                                 param1.activatePowerup();
                                 if(_loc7_)
                                 {
                                    §§push((_loc4_ = this).§-R§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       _loc4_.§-R§ = _loc5_;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr190);
                  }
                  §§push((_loc4_ = this).§9!P§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(_loc7_)
                  {
                     _loc4_.§9!P§ = _loc5_;
                  }
                  §§goto(addr190);
               }
               addr190:
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr33);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc3_ && this))
         {
            §§push(_loc1_);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + (this.§5o§ + §[!D§ + this.§;!`§() + §[!D§ + this.§-s§()));
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_ = §§pop();
                  addr80:
                  return _loc1_;
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §;!`§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§4!#§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§4!#§.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr133:
                              addr129:
                              while(true)
                              {
                                 §§push(_loc1_);
                              }
                              addr129:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        while(!(_loc3_ || _loc3_))
                        {
                           §§goto(addr129);
                        }
                        §§push(§§pop() + this.§4!#§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        _loc2_++;
                        addr105:
                        while(!_loc3_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr105);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr129);
         }
         return §§pop();
      }
      
      private function §-s§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§+!-§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+!-§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr99:
                           §§push(§§pop() + §'!h§);
                        }
                        _loc1_ = §§pop();
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§push(§§pop() + this.§+!-§[_loc2_].toString());
                        }
                        addr103:
                     }
                     _loc1_ = §§pop();
                     _loc2_++;
                     continue;
                     addr95:
                  }
                  §§goto(addr103);
               }
               §§goto(addr95);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr99);
         }
         return §§pop();
      }
   }
}
