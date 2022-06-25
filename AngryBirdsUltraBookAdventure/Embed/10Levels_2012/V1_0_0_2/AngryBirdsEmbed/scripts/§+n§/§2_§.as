package §+n§
{
   import §?b§.§7!,§;
   import flash.system.Capabilities;
   
   public class §2_§
   {
      
      public static const §@!=§:String = "@@";
      
      public static const §6,§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!=§ = "@@";
            if(_loc2_ || §2_§)
            {
               §6,§ = "@";
            }
         }
      }
      
      private var §;!4§:String;
      
      private var §8r§:int;
      
      private var §6;§:Number;
      
      private var §3j§:Number;
      
      protected var §>M§:Boolean;
      
      protected var §`S§:Vector.<§+-§>;
      
      protected var §],§:Vector.<PowerUp>;
      
      private var §4!C§:int;
      
      private var §6g§:int;
      
      public function §2_§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§`S§ = new Vector.<§+-§>();
            if(!(_loc2_ && _loc3_))
            {
               this.§],§ = new Vector.<PowerUp>();
               if(_loc3_)
               {
                  addr65:
                  super();
                  if(!_loc2_)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr65);
         }
         addr69:
         this.§;!4§ = param1;
         if(!(_loc2_ && _loc2_))
         {
            addr79:
            this.§6;§ = 1;
         }
      }
      
      public static function initialize(param1:String) : §2_§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§2_§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§+-§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§@!=§);
         if(!(_loc13_ && _loc2_))
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §2_§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§6,§);
               _loc5_ = _loc3_[2].split(§6,§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §+-§.initialize(_loc6_))
                        {
                           if(_loc12_ || param1)
                           {
                              _loc2_.§`S§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc12_)
                     {
                        if(_loc12_)
                        {
                           if(!(_loc13_ && _loc2_))
                           {
                              _loc10_ = 0;
                              if(!_loc13_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_ || param1)
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
                                    if(_loc9_ = PowerUp.initialize(_loc7_))
                                    {
                                       if(!(_loc13_ && §2_§))
                                       {
                                          _loc2_.§],§.push(_loc9_);
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
      
      public function get §^[§() : Boolean
      {
         return this.§>M§;
      }
      
      public function get §]!B§() : String
      {
         return this.§;!4§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6;§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§6;§;
      }
      
      protected function get §'U§() : int
      {
         return this.§8r§;
      }
      
      public function §6U§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!this.§>M§)
            {
               if(!_loc7_)
               {
                  addr23:
                  this.§`S§.push(new §+-§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §]o§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§>M§)
            {
               if(_loc2_)
               {
                  if(this.§],§.length > 0)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr60:
                        if(this.§],§[this.§],§.length - 1].step == param1)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr86);
                     }
                  }
               }
               this.§],§.push(new PowerUp(param1));
            }
            addr86:
            return;
         }
         §§goto(addr60);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>M§ = true;
         }
      }
      
      public function step(param1:§7!,§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§+-§ = null;
         var _loc3_:PowerUp = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§`S§.length > this.§4!C§)
            {
               if(_loc6_ || _loc2_)
               {
                  addr42:
                  _loc2_ = this.§`S§[this.§4!C§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§'U§)
                     {
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr101);
                  }
                  param1.slingshot.§'P§(_loc2_.x,_loc2_.y,_loc2_.§'!F§,_loc2_.angle);
                  if(_loc6_ || param1)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = this).§4!C§);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc7_)
                     {
                        _loc4_.§4!C§ = _loc5_;
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr114);
            }
            addr101:
            if(this.§],§.length > this.§6g§)
            {
               if(!(_loc7_ && param1))
               {
                  addr114:
                  _loc3_ = this.§],§[this.§6g§];
                  if(!_loc7_)
                  {
                     if(_loc3_.step == this.§'U§)
                     {
                        if(!_loc7_)
                        {
                           param1.activatePowerup();
                           if(_loc7_ && param1)
                           {
                           }
                        }
                     }
                     §§goto(addr174);
                  }
                  §§push((_loc4_ = this).§6g§);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(!(_loc7_ && this))
                  {
                     _loc4_.§6g§ = _loc5_;
                  }
               }
               §§goto(addr174);
            }
            addr174:
            §§push((_loc4_ = this).§8r§);
            if(_loc6_ || this)
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(_loc6_)
            {
               _loc4_.§8r§ = _loc5_;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + (this.§;!4§ + §@!=§ + this.§2!?§() + §@!=§ + this.§29§()));
               if(_loc3_ || this)
               {
                  addr75:
                  _loc1_ = §§pop();
                  §§push(_loc1_);
               }
               return §§pop();
            }
         }
         §§goto(addr75);
      }
      
      private function §2!?§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + this.§`S§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`S§.length)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + §6,§);
               if(_loc3_ || _loc2_)
               {
                  _loc1_ = §§pop();
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + this.§`S§[_loc2_].toString());
                        if(!(_loc4_ && _loc3_))
                        {
                           addr107:
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
                     }
                     §§goto(addr107);
                  }
                  break;
               }
               §§goto(addr124);
            }
            §§goto(addr107);
         }
         addr124:
         _loc1_;
         return §§pop();
      }
      
      private function §29§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§],§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this.§],§.length; _loc2_++,if(!(_loc3_ || this))
         {
            break;
         })
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop() + §6,§);
               if(_loc4_ && this)
               {
                  addr124:
                  return §§pop();
               }
               _loc1_ = §§pop();
               if(_loc4_)
               {
                  break;
               }
               §§push(_loc1_);
               if(_loc3_)
               {
                  addr78:
                  §§push(§§pop() + this.§],§[_loc2_].toString());
                  if(_loc4_ && _loc1_)
                  {
                  }
                  §§goto(addr124);
               }
               _loc1_ = §§pop();
               if(_loc4_ && _loc2_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr78);
         }
         §§goto(addr78);
         §§push(_loc1_);
      }
   }
}
