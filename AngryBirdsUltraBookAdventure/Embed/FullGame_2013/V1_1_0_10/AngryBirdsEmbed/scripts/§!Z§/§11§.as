package §!Z§
{
   import §6A§.§ !§;
   import flash.system.Capabilities;
   
   public class §11§
   {
      
      public static const §9Z§:String = "@@";
      
      public static const §,L§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9Z§ = "@@";
            if(!_loc2_)
            {
               addr28:
               §,L§ = "@";
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §'!E§:String;
      
      private var §"!N§:int;
      
      private var §5!G§:Number;
      
      private var §^f§:Number;
      
      protected var §>!?§:Boolean;
      
      protected var §%!M§:Vector.<§^!H§>;
      
      protected var §4C§:Vector.<PowerUp>;
      
      private var §6p§:int;
      
      private var §8!'§:int;
      
      public function §11§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!M§ = new Vector.<§^!H§>();
            if(!(_loc3_ && param1))
            {
               this.§4C§ = new Vector.<PowerUp>();
               if(_loc2_)
               {
                  super();
                  if(_loc2_)
                  {
                     this.§'!E§ = param1;
                     if(_loc2_ || _loc2_)
                     {
                        addr73:
                        this.§5!G§ = 1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function initialize(param1:String) : §11§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§11§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^!H§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§9Z§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §11§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§,L§);
               _loc5_ = _loc3_[2].split(§,L§);
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
                        if(_loc8_ = §^!H§.initialize(_loc6_))
                        {
                           if(!(_loc12_ && param1))
                           {
                              _loc2_.§%!M§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || _loc3_)
                     {
                        if(_loc13_)
                        {
                           if(_loc13_)
                           {
                              _loc10_ = 0;
                              if(_loc13_)
                              {
                                 addr131:
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || _loc3_)
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
                                       if(_loc13_ || _loc2_)
                                       {
                                          _loc2_.§4C§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 addr158:
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr131);
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
      
      public function get §]n§() : Boolean
      {
         return this.§>!?§;
      }
      
      public function get §4B§() : String
      {
         return this.§'!E§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5!G§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§5!G§;
      }
      
      protected function get §9p§() : int
      {
         return this.§"!N§;
      }
      
      public function §>!A§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!this.§>!?§)
            {
               if(_loc6_)
               {
                  addr23:
                  this.§%!M§.push(new §^!H§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §<e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§>!?§)
            {
               if(_loc3_)
               {
                  if(this.§4C§.length > 0)
                  {
                     if(_loc3_)
                     {
                        if(this.§4C§[this.§4C§.length - 1].step == param1)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr63);
                           }
                           else
                           {
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr77);
                     }
                  }
                  this.§4C§.push(new PowerUp(param1));
               }
               §§goto(addr63);
            }
            addr77:
            return;
         }
         addr63:
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!?§ = true;
         }
      }
      
      public function step(param1:§ !§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§^!H§ = null;
         var _loc3_:PowerUp = null;
         if(!_loc7_)
         {
            if(this.§%!M§.length > this.§6p§)
            {
               if(_loc6_)
               {
                  _loc2_ = this.§%!M§[this.§6p§];
                  if(_loc6_)
                  {
                     if(_loc2_.step == this.§9p§)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           param1.slingshot.§-R§(_loc2_.x,_loc2_.y,_loc2_.§;,§,_loc2_.angle);
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr91);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§6p§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc7_)
                        {
                           _loc4_.§6p§ = _loc5_;
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr104);
            }
            addr91:
            if(this.§4C§.length > this.§8!'§)
            {
               if(_loc6_ || _loc3_)
               {
                  addr104:
                  _loc3_ = this.§4C§[this.§8!'§];
                  if(_loc6_)
                  {
                     if(_loc3_.step == this.§9p§)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           param1.activatePowerup();
                           if(_loc6_ || param1)
                           {
                              §§push((_loc4_ = this).§8!'§);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc5_ = §§pop();
                              if(!(_loc7_ && this))
                              {
                                 _loc4_.§8!'§ = _loc5_;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr189);
            }
            §§push((_loc4_ = this).§"!N§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               _loc4_.§"!N§ = _loc5_;
            }
            §§goto(addr189);
         }
         addr189:
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
               §§push(§§pop() + (this.§'!E§ + §9Z§ + this.§%G§() + §9Z§ + this.§0$§()));
               if(!_loc2_)
               {
                  addr70:
                  _loc1_ = §§pop();
                  §§push(_loc1_);
               }
               return §§pop();
            }
         }
         §§goto(addr70);
      }
      
      private function §%G§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§%!M§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!M§.length)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + §,L§);
               if(!_loc3_)
               {
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        addr64:
                        §§push(§§pop() + this.§%!M§[_loc2_].toString());
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_++;
                              if(_loc3_ && _loc1_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr105);
                  }
                  continue;
               }
            }
            §§goto(addr64);
         }
         addr105:
         _loc1_;
         return §§pop();
      }
      
      private function §0$§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + this.§4C§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4C§.length)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + §,L§);
               if(_loc4_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc4_ || this)
                     {
                        addr89:
                        §§push(§§pop() + this.§4C§[_loc2_].toString());
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              _loc2_++;
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr115);
                  }
                  break;
               }
            }
            §§goto(addr89);
         }
         addr115:
         _loc1_;
         return §§pop();
      }
   }
}
