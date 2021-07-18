package §_-sK§
{
   import §_-OJ§.§_-tL§;
   import flash.system.Capabilities;
   
   public class §_-Bs§
   {
      
      private static const §_-am§:String = "@@";
      
      private static const §_-fB§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-am§ = "@@";
            if(_loc2_ || _loc1_)
            {
               addr33:
               §_-fB§ = "@";
            }
            return;
         }
         §§goto(addr33);
      }
      
      private var §_-1v§:String;
      
      private var §_-Zk§:int;
      
      private var §_-80§:Number;
      
      private var §_-c0§:Number;
      
      private var §_-k3§:Boolean;
      
      private var §_-vm§:Vector.<§_-fz§>;
      
      private var §_-Of§:Vector.<§_-Nr§>;
      
      private var §_-YK§:int;
      
      private var §_-yR§:int;
      
      public function §_-Bs§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-vm§ = new Vector.<§_-fz§>();
            if(!_loc3_)
            {
               this.§_-Of§ = new Vector.<§_-Nr§>();
               if(_loc2_ || this)
               {
                  addr48:
                  super();
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr67);
               }
               this.§_-1v§ = param1;
               if(!_loc3_)
               {
                  this.§_-80§ = 1;
                  §§goto(addr67);
               }
               addr67:
               return;
            }
         }
         §§goto(addr48);
      }
      
      public static function §_-oA§(param1:String) : §_-Bs§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§_-Bs§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-fz§ = null;
         var _loc9_:§_-Nr§ = null;
         var _loc3_:Array = param1.split(§_-am§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr46:
               _loc2_ = new §_-Bs§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§_-fB§);
               _loc5_ = _loc3_[2].split(§_-fB§);
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
                        if(_loc8_ = §_-fz§.§_-oA§(_loc6_))
                        {
                           if(_loc13_ || _loc2_)
                           {
                              _loc2_.§_-vm§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || _loc3_)
                     {
                        if(_loc13_ || §_-Bs§)
                        {
                           if(_loc13_ || param1)
                           {
                              _loc10_ = 0;
                              if(_loc13_ || _loc3_)
                              {
                                 _loc11_ = _loc5_;
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr186:
                                    return _loc2_;
                                    addr182:
                                    addr185:
                                    addr184:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §_-Nr§.§_-oA§(_loc7_))
                                    {
                                       if(!(_loc12_ && param1))
                                       {
                                          _loc2_.§_-Of§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr182);
                                 }
                                 addr157:
                              }
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr184);
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
                  §§goto(addr186);
               }
            }
            §§goto(addr186);
         }
         §§goto(addr46);
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-k3§;
      }
      
      public function get §_-za§() : String
      {
         return this.§_-1v§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-80§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§_-80§;
      }
      
      private function get §_-mv§() : int
      {
         return this.§_-Zk§;
      }
      
      public function §_-cQ§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§_-k3§)
            {
               if(!(_loc6_ && param2))
               {
                  this.§_-vm§.push(new §_-fz§(param1,param2,param3,param4,param5));
                  addr33:
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §_-HX§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§_-k3§)
            {
               if(_loc2_ || param1)
               {
                  if(this.§_-Of§.length > 0)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr49);
                     }
                     return;
                  }
                  §§goto(addr71);
               }
               addr49:
               if(this.§_-Of§[this.§_-Of§.length - 1].step == param1)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr77);
                  }
               }
               else
               {
                  addr71:
                  this.§_-Of§.push(new §_-Nr§(param1));
                  §§goto(addr77);
               }
               §§goto(addr77);
            }
            addr77:
            return;
         }
         §§goto(addr49);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-k3§ = true;
         }
      }
      
      public function step(param1:§_-tL§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-fz§ = null;
         var _loc3_:§_-Nr§ = null;
         if(!_loc6_)
         {
            if(this.§_-vm§.length > this.§_-YK§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  _loc2_ = this.§_-vm§[this.§_-YK§];
                  if(_loc7_ || param1)
                  {
                     if(_loc2_.step == this.§_-mv§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           param1.slingshot.§_-0-§(_loc2_.x,_loc2_.y,_loc2_.§_-OS§,_loc2_.angle);
                           if(_loc6_ && this)
                           {
                           }
                           §§goto(addr106);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§_-YK§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_ || _loc2_)
                        {
                           _loc4_.§_-YK§ = _loc5_;
                        }
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr119);
            }
            addr106:
            if(this.§_-Of§.length > this.§_-yR§)
            {
               if(_loc7_ || this)
               {
                  addr119:
                  _loc3_ = this.§_-Of§[this.§_-yR§];
                  if(_loc7_ || param1)
                  {
                     if(_loc3_.step == this.§_-mv§)
                     {
                        if(_loc7_)
                        {
                           param1.activatePowerup();
                           if(!_loc6_)
                           {
                              §§push((_loc4_ = this).§_-yR§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc5_ = §§pop();
                              if(!(_loc6_ && _loc2_))
                              {
                                 _loc4_.§_-yR§ = _loc5_;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr196);
            }
            §§push((_loc4_ = this).§_-Zk§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(_loc7_ || _loc2_)
            {
               _loc4_.§_-Zk§ = _loc5_;
            }
            §§goto(addr196);
         }
         addr196:
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
               §§push(§§pop() + (this.§_-1v§ + §_-am§ + this.§_-bF§() + §_-am§ + this.§_-oJ§()));
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  addr57:
                  §§push(_loc1_);
               }
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      private function §_-bF§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() + this.§_-vm§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this.§_-vm§.length; _loc2_++,if(!_loc3_)
         {
            break;
         })
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + §_-fB§);
               if(!(_loc4_ && this))
               {
                  _loc1_ = §§pop();
                  if(_loc3_ || this)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        addr77:
                        §§push(§§pop() + this.§_-vm§[_loc2_].toString());
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr86);
                     }
                     addr86:
                     _loc1_ = §§pop();
                  }
                  continue;
                  if(_loc4_)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr77);
         }
         §§goto(addr77);
         §§push(_loc1_);
      }
      
      private function §_-oJ§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§_-Of§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Of§.length)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + §_-fB§);
               if(_loc3_)
               {
                  addr56:
                  _loc1_ = §§pop();
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() + this.§_-Of§[_loc2_].toString());
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr76);
                  }
               }
               addr76:
               _loc1_ = §§pop();
               if(_loc4_ && _loc2_)
               {
                  break;
               }
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
               continue;
               §§goto(addr100);
            }
            §§goto(addr56);
         }
         addr100:
         _loc1_;
      }
   }
}
