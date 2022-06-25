package § N§
{
   import §+&§.§-!7§;
   import flash.system.Capabilities;
   
   public class §!n§
   {
      
      public static const §0@§:String = "@@";
      
      public static const §3'§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0@§ = "@@";
            do
            {
               §3'§ = "@";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §5'§:String;
      
      private var §+!w§:int;
      
      private var §9j§:Number;
      
      private var §?Q§:Number;
      
      protected var §6'§:Boolean;
      
      protected var §07§:Vector.<§=8§>;
      
      protected var §'!X§:Vector.<§9'§>;
      
      private var §@!u§:int;
      
      private var §<!>§:int;
      
      public function §!n§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§07§ = new Vector.<§=8§>();
            while(true)
            {
               this.§'!X§ = new Vector.<§9'§>();
            }
            addr85:
         }
         loop1:
         while(true)
         {
            super();
            while(_loc3_)
            {
               this.§5'§ = param1;
               while(!_loc2_)
               {
                  this.§9j§ = 1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break loop1;
                  }
                  §§goto(addr85);
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §!n§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§!n§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§=8§ = null;
         var _loc9_:§9'§ = null;
         var _loc3_:Array = param1.split(§0@§);
         if(!(_loc13_ && _loc2_))
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §!n§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§3'§);
               _loc5_ = _loc3_[2].split(§3'§);
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
                        if(_loc8_ = §=8§.initialize(_loc6_))
                        {
                           if(!(_loc13_ && _loc2_))
                           {
                              _loc2_.§07§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc13_)
                     {
                        if(_loc12_ || param1)
                        {
                           if(_loc12_)
                           {
                              _loc10_ = 0;
                              if(!(_loc13_ && _loc2_))
                              {
                                 addr140:
                                 _loc11_ = _loc5_;
                                 if(!(_loc13_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr189:
                                    return _loc2_;
                                    addr185:
                                    addr188:
                                    addr187:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §9'§.initialize(_loc7_))
                                    {
                                       if(!(_loc13_ && §!n§))
                                       {
                                          _loc2_.§'!X§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 addr167:
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr187);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr167);
                  }
                  §§goto(addr189);
               }
            }
            §§goto(addr189);
         }
         §§goto(addr53);
      }
      
      public function get §<!P§() : Boolean
      {
         return this.§6'§;
      }
      
      public function get §<&§() : String
      {
         return this.§5'§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9j§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§9j§;
      }
      
      protected function get §]!@§() : int
      {
         return this.§+!w§;
      }
      
      public function §9!,§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            if(!this.§6'§)
            {
               if(!_loc6_)
               {
                  addr39:
                  this.§07§.push(new §=8§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §>!v§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§6'§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(this.§'!X§.length > 0)
                  {
                     if(_loc3_)
                     {
                        addr71:
                        if(this.§'!X§[this.§'!X§.length - 1].step == param1)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§goto(addr24);
                              }
                              addr84:
                           }
                        }
                        §§goto(addr24);
                     }
                     return;
                  }
                  addr24:
                  §§goto(addr20);
               }
               §§goto(addr84);
            }
            addr20:
            while(true)
            {
               this.§'!X§.push(new §9'§(param1));
               if(_loc3_)
               {
                  break;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6'§ = true;
         }
      }
      
      public function step(param1:§-!7§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§=8§ = null;
         var _loc3_:§9'§ = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§07§.length > this.§@!u§)
            {
               if(_loc7_)
               {
                  _loc2_ = this.§07§[this.§@!u§];
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc2_.step == this.§]!@§)
                     {
                        if(_loc7_)
                        {
                           addr59:
                           param1.slingshot.§;!P§(_loc2_.x,_loc2_.y,_loc2_.§ !I§,_loc2_.angle);
                           if(_loc6_ && this)
                           {
                           }
                           §§goto(addr107);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§@!u§);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc6_)
                        {
                           _loc4_.§@!u§ = _loc5_;
                        }
                        §§goto(addr107);
                     }
                     addr107:
                     if(this.§'!X§.length > this.§<!>§)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc3_ = this.§'!X§[this.§<!>§];
                           if(!_loc6_)
                           {
                              if(_loc3_.step == this.§]!@§)
                              {
                                 if(_loc7_)
                                 {
                                    param1.activatePowerup();
                                    if(_loc6_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§push((_loc4_ = this).§<!>§);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc7_ || _loc2_)
                           {
                              _loc4_.§<!>§ = _loc5_;
                           }
                        }
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr59);
               }
               §§goto(addr180);
            }
            §§goto(addr59);
         }
         addr180:
         §§push((_loc4_ = this).§+!w§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + 1);
         }
         _loc5_ = §§pop();
         if(_loc7_ || this)
         {
            _loc4_.§+!w§ = _loc5_;
         }
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§5'§ + §0@§ + this.§1q§() + §0@§ + this.§3!a§()));
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  addr56:
                  return _loc1_;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §1q§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(§§pop() + this.§07§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§07§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc1_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() + this.§07§[_loc2_].toString());
                           addr123:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           _loc1_ = §§pop();
                           while(true)
                           {
                              _loc2_++;
                              addr78:
                              while(_loc4_)
                              {
                              }
                              continue loop0;
                           }
                           addr108:
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_ = §§pop();
                           }
                           addr122:
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr78);
            }
            else
            {
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + §3'§);
               }
            }
            §§goto(addr122);
         }
         return §§pop();
      }
      
      private function §3!a§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§'!X§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§'!X§.length)
            {
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        _loc1_ = §§pop();
                        while(_loc3_ && this)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(_loc4_)
                              {
                                 §§push(§§pop() + this.§'!X§[_loc2_].toString());
                                 continue loop1;
                              }
                              addr110:
                              while(true)
                              {
                                 §§push(§§pop() + §3'§);
                                 continue loop4;
                              }
                           }
                        }
                        _loc2_++;
                        continue loop0;
                        addr99:
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr114);
                     }
                  }
               }
               §§goto(addr99);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr110);
         }
         return §§pop();
      }
   }
}
