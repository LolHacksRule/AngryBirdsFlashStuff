package §6!B§
{
   import §"!I§.§^!2§;
   import flash.system.Capabilities;
   
   public class §8u§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §8u§)
         {
            DELIM = "@@";
            do
            {
               INTERNAL_DELIM = "@";
            }
            while(_loc2_);
            
         }
      }
      
      private var §6!e§:String;
      
      private var §1!%§:int;
      
      private var §4r§:Number;
      
      private var §+K§:Number;
      
      protected var §true§:Boolean;
      
      protected var §"!T§:Vector.<§?O§>;
      
      protected var §'t§:Vector.<§0[§>;
      
      private var §?!K§:int;
      
      private var §2D§:int;
      
      public function §8u§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§"!T§ = new Vector.<§?O§>();
            while(true)
            {
               this.§'t§ = new Vector.<§0[§>();
               addr39:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            super();
            while(!(_loc3_ && _loc3_))
            {
               this.§6!e§ = param1;
               while(_loc2_ || param1)
               {
                  this.§4r§ = 1;
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function initialize(param1:String) : §8u§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§8u§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§?O§ = null;
         var _loc9_:§0[§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(!(_loc13_ && _loc3_))
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §8u§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!(_loc13_ && §8u§))
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §?O§.initialize(_loc6_))
                        {
                           if(_loc12_)
                           {
                              _loc2_.§"!T§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc12_)
                     {
                        if(_loc12_)
                        {
                           if(!(_loc13_ && param1))
                           {
                              _loc10_ = 0;
                              if(_loc12_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr179:
                                    return _loc2_;
                                    addr175:
                                    addr178:
                                    addr177:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §0[§.initialize(_loc7_))
                                    {
                                       if(_loc12_ || _loc2_)
                                       {
                                          _loc2_.§'t§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 addr147:
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr177);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr147);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr179);
         }
         §§goto(addr53);
      }
      
      public function get §&A§() : Boolean
      {
         return this.§true§;
      }
      
      public function get levelName() : String
      {
         return this.§6!e§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4r§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§4r§;
      }
      
      protected function get currentStep() : int
      {
         return this.§1!%§;
      }
      
      public function §+!b§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            if(!this.§true§)
            {
               if(!(_loc6_ && this))
               {
                  this.§"!T§.push(new §?O§(param1,param2,param3,param4,param5));
                  addr44:
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function § !_§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§true§)
            {
               loop0:
               while(true)
               {
                  if(this.§'t§.length > 0)
                  {
                     if(_loc2_)
                     {
                        if(this.§'t§[this.§'t§.length - 1].step == param1)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              addr23:
                              while(true)
                              {
                                 this.§'t§.push(new §0[§(param1));
                                 if(!(_loc3_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              if(!_loc3_)
                              {
                                 §§goto(addr19);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr23);
                     }
                     break;
                  }
                  §§goto(addr23);
               }
               return;
               addr53:
            }
            addr19:
            return;
         }
         §§goto(addr53);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§true§ = true;
         }
      }
      
      public function step(param1:§^!2§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§?O§ = null;
         var _loc3_:§0[§ = null;
         if(!_loc6_)
         {
            if(this.§"!T§.length > this.§?!K§)
            {
               if(_loc7_)
               {
                  _loc2_ = this.§"!T§[this.§?!K§];
                  if(!_loc6_)
                  {
                     if(_loc2_.step == this.currentStep)
                     {
                        if(!(_loc6_ && param1))
                        {
                           param1.slingshot.§8q§(_loc2_.x,_loc2_.y,_loc2_.§9!I§,_loc2_.angle);
                           if(!_loc7_)
                           {
                           }
                        }
                        §§goto(addr97);
                     }
                     addr97:
                     if(this.§'t§.length > this.§2D§)
                     {
                        if(_loc7_)
                        {
                           _loc3_ = this.§'t§[this.§2D§];
                           if(!(_loc6_ && _loc2_))
                           {
                              if(_loc3_.step == this.currentStep)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    param1.activatePowerup();
                                    if(_loc7_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§2D§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_ || _loc2_)
                                       {
                                          _loc4_.§2D§ = _loc5_;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr185);
                     }
                     §§push((_loc4_ = this).§1!%§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc4_.§1!%§ = _loc5_;
                     }
                     §§goto(addr185);
                  }
                  §§push((_loc4_ = this).§?!K§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(_loc7_ || _loc2_)
                  {
                     _loc4_.§?!K§ = _loc5_;
                  }
               }
               §§goto(addr185);
            }
            §§goto(addr97);
         }
         addr185:
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + (this.§6!e§ + DELIM + this.§'r§() + DELIM + this.§!!P§()));
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
      
      private function §'r§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§"!T§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§"!T§.length)
            {
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           if(_loc3_)
                           {
                              §§push(§§pop() + this.§"!T§[_loc2_].toString());
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 loop3:
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    _loc2_++;
                                    while(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              addr87:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop() + INTERNAL_DELIM);
                              }
                              addr109:
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr66);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr109);
         }
         return §§pop();
      }
      
      private function §!!P§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + this.§'t§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§'t§.length)
            {
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(!(_loc3_ && this))
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              break;
                           }
                           addr125:
                           while(true)
                           {
                              §§push(§§pop() + INTERNAL_DELIM);
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     _loc1_ = §§pop();
                     _loc2_++;
                     continue;
                     addr101:
                     addr121:
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc4_)
                     {
                        §§push(§§pop() + this.§'t§[_loc2_].toString());
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr121);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr125);
         }
         return §§pop();
      }
   }
}
