package §;!R§
{
   import §<!<§.§7E§;
   import flash.system.Capabilities;
   
   public class §6!G§
   {
      
      public static const §9![§:String = "@@";
      
      public static const §3$§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §6!G§)
         {
            §9![§ = "@@";
            if(!_loc1_)
            {
               addr29:
               §3$§ = "@";
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §-6§:String;
      
      private var §[`§:int;
      
      private var § 2§:Number;
      
      private var §8!N§:Number;
      
      protected var §`!q§:Boolean;
      
      protected var §&!-§:Vector.<§5+§>;
      
      protected var §@<§:Vector.<PowerUp>;
      
      private var §-!l§:int;
      
      private var §`-§:int;
      
      public function §6!G§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!-§ = new Vector.<§5+§>();
            if(_loc3_)
            {
               this.§@<§ = new Vector.<PowerUp>();
               if(!_loc2_)
               {
                  super();
                  if(_loc2_ && _loc3_)
                  {
                  }
                  §§goto(addr69);
               }
               this.§-6§ = param1;
               if(!_loc3_)
               {
               }
               §§goto(addr69);
            }
         }
         addr69:
         this.§ 2§ = 1;
      }
      
      public static function initialize(param1:String) : §6!G§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§6!G§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§5+§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§9![§);
         if(_loc13_ || param1)
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new §6!G§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§3$§);
               _loc5_ = _loc3_[2].split(§3$§);
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
                        if(_loc8_ = §5+§.initialize(_loc6_))
                        {
                           if(_loc13_ || §6!G§)
                           {
                              _loc2_.§&!-§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!(_loc12_ && §6!G§))
                     {
                        if(_loc13_ || _loc2_)
                        {
                           if(!_loc12_)
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
                                    addr185:
                                    return _loc2_;
                                    addr181:
                                    addr184:
                                    addr183:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = PowerUp.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§@<§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 addr168:
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
                     §§goto(addr168);
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr54);
      }
      
      public function get §6e§() : Boolean
      {
         return this.§`!q§;
      }
      
      public function get §'!#§() : String
      {
         return this.§-6§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ 2§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§ 2§;
      }
      
      protected function get §`V§() : int
      {
         return this.§[`§;
      }
      
      public function §3!i§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(!this.§`!q§)
            {
               if(!_loc6_)
               {
                  addr39:
                  this.§&!-§.push(new §5+§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §=!`§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§`!q§)
            {
               if(_loc3_ || param1)
               {
                  if(this.§@<§.length > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        addr66:
                        if(this.§@<§[this.§@<§.length - 1].step == param1)
                        {
                           if(_loc3_ || param1)
                           {
                              return;
                           }
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr92);
                  }
               }
               this.§@<§.push(new PowerUp(param1));
            }
            addr92:
            return;
         }
         §§goto(addr66);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`!q§ = true;
         }
      }
      
      public function step(param1:§7E§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§5+§ = null;
         var _loc3_:PowerUp = null;
         if(_loc6_ || param1)
         {
            if(this.§&!-§.length > this.§-!l§)
            {
               if(!_loc7_)
               {
                  _loc2_ = this.§&!-§[this.§-!l§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§`V§)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           param1.slingshot.§2!I§(_loc2_.x,_loc2_.y,_loc2_.§,!c§,_loc2_.angle);
                           if(!_loc7_)
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§-!l§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 _loc4_.§-!l§ = _loc5_;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr109);
            }
            if(this.§@<§.length > this.§`-§)
            {
               if(_loc6_)
               {
                  addr109:
                  _loc3_ = this.§@<§[this.§`-§];
                  if(!_loc7_)
                  {
                     if(_loc3_.step == this.§`V§)
                     {
                        if(!(_loc7_ && this))
                        {
                           param1.activatePowerup();
                           if(_loc6_ || this)
                           {
                           }
                           §§goto(addr169);
                        }
                        §§push((_loc4_ = this).§`-§);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           _loc4_.§`-§ = _loc5_;
                        }
                     }
                  }
               }
               §§goto(addr169);
            }
            addr169:
            §§push((_loc4_ = this).§[`§);
            if(_loc6_ || this)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(_loc6_)
            {
               _loc4_.§[`§ = _loc5_;
            }
            return;
         }
         §§goto(addr109);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(§§pop() + (this.§-6§ + §9![§ + this.§,!m§() + §9![§ + this.§"&§()));
               if(!(_loc2_ && _loc3_))
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
      
      private function §,!m§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(§§pop() + this.§&!-§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!-§.length)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + §3$§);
               if(_loc3_ || _loc2_)
               {
                  _loc1_ = §§pop();
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + this.§&!-§[_loc2_].toString());
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr114);
               }
               _loc1_ = §§pop();
               if(!(_loc4_ && this))
               {
                  _loc2_++;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               continue;
            }
            §§goto(addr114);
         }
         addr114:
         _loc1_;
         return §§pop();
      }
      
      private function §"&§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§@<§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this.§@<§.length; _loc2_++,if(!_loc3_)
         {
            break;
         })
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + §3$§);
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§push(_loc1_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + this.§@<§[_loc2_].toString());
                     if(!(_loc3_ || _loc2_))
                     {
                        return §§pop();
                     }
                     §§goto(addr97);
                  }
               }
            }
            addr97:
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               break;
            }
            continue;
            §§goto(addr109);
         }
         addr109:
         _loc1_;
      }
   }
}
