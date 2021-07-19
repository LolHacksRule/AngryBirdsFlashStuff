package §;T§
{
   import §%!0§.§,4§;
   import flash.system.Capabilities;
   
   public class §0!3§
   {
      
      public static const §9P§:String = "@@";
      
      public static const §`!H§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9P§ = "@@";
         }
         do
         {
            §`!H§ = "@";
         }
         while(!_loc1_);
         
      }
      
      private var §?]§:String;
      
      private var §5!J§:int;
      
      private var §?!B§:Number;
      
      private var §9R§:Number;
      
      protected var §-"§:Boolean;
      
      protected var §5"-§:Vector.<§%!-§>;
      
      protected var §%!w§:Vector.<§,i§>;
      
      private var §8!2§:int;
      
      private var §@?§:int;
      
      public function §0!3§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5"-§ = new Vector.<§%!-§>();
            loop0:
            while(true)
            {
               this.§%!w§ = new Vector.<§,i§>();
               while(true)
               {
                  super();
                  addr49:
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_)
                     {
                        return;
                        addr58:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§?]§ = param1;
            while(!_loc3_)
            {
               this.§?!B§ = 1;
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr58);
      }
      
      public static function initialize(param1:String) : §0!3§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§0!3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§%!-§ = null;
         var _loc9_:§,i§ = null;
         var _loc3_:Array = param1.split(§9P§);
         if(_loc13_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §0!3§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§`!H§);
               _loc5_ = _loc3_[2].split(§`!H§);
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
                        if(_loc8_ = §%!-§.initialize(_loc6_))
                        {
                           if(_loc13_ || _loc2_)
                           {
                              _loc2_.§5"-§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || §0!3§)
                     {
                        if(!_loc12_)
                        {
                           if(!_loc12_)
                           {
                              _loc10_ = 0;
                              if(_loc13_ || §0!3§)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || §0!3§)
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
                                    if(_loc9_ = §,i§.initialize(_loc7_))
                                    {
                                       if(_loc13_ || §0!3§)
                                       {
                                          _loc2_.§%!w§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 addr153:
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr184);
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
                     §§goto(addr153);
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr49);
      }
      
      public function get §4C§() : Boolean
      {
         return this.§-"§;
      }
      
      public function get §%!d§() : String
      {
         return this.§?]§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!B§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§?!B§;
      }
      
      protected function get §4"'§() : int
      {
         return this.§5!J§;
      }
      
      public function §59§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§-"§)
            {
               if(!(_loc7_ && this))
               {
                  this.§5"-§.push(new §%!-§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function § Z§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§-"§)
            {
               do
               {
                  if(this.§%!w§.length > 0)
                  {
                     while(true)
                     {
                        if(this.§%!w§[this.§%!w§.length - 1].step == param1)
                        {
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           addr88:
                           while(true)
                           {
                           }
                        }
                     }
                     return;
                     addr60:
                  }
                  while(true)
                  {
                     this.§%!w§.push(new §,i§(param1));
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr88);
                  }
               }
               while(_loc3_ && _loc3_);
               
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-"§ = true;
         }
      }
      
      public function step(param1:§,4§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§%!-§ = null;
         var _loc3_:§,i§ = null;
         if(_loc7_)
         {
            if(this.§5"-§.length > this.§8!2§)
            {
               if(_loc7_)
               {
                  _loc2_ = this.§5"-§[this.§8!2§];
                  if(!(_loc6_ && this))
                  {
                     if(_loc2_.step == this.§4"'§)
                     {
                        if(!_loc6_)
                        {
                           addr54:
                           param1.slingshot.§'q§(_loc2_.x,_loc2_.y,_loc2_.§0!d§,_loc2_.angle);
                           if(_loc7_ || _loc3_)
                           {
                           }
                           addr97:
                           if(this.§%!w§.length > this.§@?§)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 addr110:
                                 _loc3_ = this.§%!w§[this.§@?§];
                                 if(_loc7_)
                                 {
                                    if(_loc3_.step == this.§4"'§)
                                    {
                                       if(_loc7_)
                                       {
                                          param1.activatePowerup();
                                          if(_loc6_ && _loc2_)
                                          {
                                          }
                                          addr150:
                                          var _loc4_:*;
                                          §§push((_loc4_ = this).§5!J§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc5_:* = §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             _loc4_.§5!J§ = _loc5_;
                                          }
                                          §§goto(addr185);
                                       }
                                       §§push((_loc4_ = this).§@?§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc7_)
                                       {
                                          _loc4_.§@?§ = _loc5_;
                                       }
                                    }
                                 }
                              }
                              addr185:
                              return;
                           }
                           §§goto(addr150);
                        }
                        §§push((_loc4_ = this).§8!2§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.§8!2§ = _loc5_;
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr54);
               }
               §§goto(addr110);
            }
            §§goto(addr54);
         }
         §§goto(addr150);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc2_ && _loc3_))
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + (this.§?]§ + §9P§ + this.§8S§() + §9P§ + this.§2b§()));
               if(!_loc2_)
               {
                  addr75:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §8S§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§5"-§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5"-§.length)
            {
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §§push(§§pop() + this.§5"-§[_loc2_].toString());
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 _loc1_ = §§pop();
                                 while(_loc4_ && _loc1_)
                                 {
                                    continue loop1;
                                 }
                                 _loc2_++;
                                 continue loop0;
                                 addr98:
                              }
                           }
                           addr95:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§§pop() + §`!H§);
                           }
                           addr119:
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr95);
               }
               §§goto(addr98);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr119);
         }
         return §§pop();
      }
      
      private function §2b§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§%!w§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§%!w§.length)
            {
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           break;
                        }
                        addr104:
                        §§push(§§pop() + §`!H§);
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr108:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                        }
                        addr107:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§%!w§[_loc2_].toString());
                        §§goto(addr108);
                     }
                     addr80:
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           _loc2_++;
                           addr68:
                           while(true)
                           {
                              if(!(_loc3_ || this))
                              {
                                 continue loop3;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr108);
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr108);
                     §§goto(addr80);
                  }
               }
               §§goto(addr68);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr104);
         }
         return §§pop();
      }
   }
}
