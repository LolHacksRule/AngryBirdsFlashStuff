package §>!"§
{
   import §9N§.§9!%§;
   import flash.system.Capabilities;
   
   public class §"P§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            DELIM = "@@";
         }
         do
         {
            INTERNAL_DELIM = "@";
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §0Y§:String;
      
      private var §[R§:int;
      
      private var §4!Y§:Number;
      
      private var §"!#§:Number;
      
      protected var §8!O§:Boolean;
      
      protected var §&!0§:Vector.<§`[§>;
      
      protected var §0!T§:Vector.<§,!+§>;
      
      private var §9!;§:int;
      
      private var §?!5§:int;
      
      public function §"P§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§&!0§ = new Vector.<§`[§>();
            loop0:
            while(true)
            {
               this.§0!T§ = new Vector.<§,!+§>();
               while(true)
               {
                  super();
                  loop2:
                  while(!(_loc2_ && param1))
                  {
                     while(true)
                     {
                        this.§0Y§ = param1;
                        do
                        {
                           this.§4!Y§ = 1;
                        }
                        while(_loc2_ && this);
                        
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public static function §[I§(param1:String) : §"P§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§"P§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§`[§ = null;
         var _loc9_:§,!+§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §"P§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
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
                        if(_loc8_ = §`[§.§[I§(_loc6_))
                        {
                           if(_loc13_)
                           {
                              _loc2_.§&!0§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_)
                     {
                        if(!(_loc12_ && param1))
                        {
                           if(!(_loc12_ && §"P§))
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_)
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
                                    if(_loc9_ = §,!+§.§[I§(_loc7_))
                                    {
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          _loc2_.§0!T§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 addr148:
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr179);
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
                     §§goto(addr148);
                  }
                  §§goto(addr180);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr49);
      }
      
      public function get §9y§() : Boolean
      {
         return this.§8!O§;
      }
      
      public function get §>!O§() : String
      {
         return this.§0Y§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4!Y§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§4!Y§;
      }
      
      protected function get currentStep() : int
      {
         return this.§[R§;
      }
      
      public function §8!"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            if(!this.§8!O§)
            {
               if(_loc6_)
               {
                  this.§&!0§.push(new §`[§(param1,param2,param3,param4,param5));
                  addr38:
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §?!3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§8!O§)
            {
               do
               {
                  if(this.§0!T§.length > 0)
                  {
                     if(_loc3_ || this)
                     {
                        if(this.§0!T§[this.§0!T§.length - 1].step == param1)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                        do
                        {
                           this.§0!T§.push(new §,!+§(param1));
                        }
                        while(!_loc3_);
                        
                        continue;
                        addr24:
                     }
                     while(true)
                     {
                     }
                  }
                  §§goto(addr24);
               }
               while(!_loc3_);
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!O§ = true;
         }
      }
      
      public function step(param1:§9!%§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§`[§ = null;
         var _loc3_:§,!+§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§&!0§.length > this.§9!;§)
            {
               if(!_loc6_)
               {
                  _loc2_ = this.§&!0§[this.§9!;§];
                  if(!(_loc6_ && this))
                  {
                     if(_loc2_.step == this.currentStep)
                     {
                        if(_loc7_ || this)
                        {
                           param1.slingshot.§<!N§(_loc2_.x,_loc2_.y,_loc2_.§0!S§,_loc2_.angle);
                           if(_loc6_ && _loc3_)
                           {
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr112);
                  }
                  var _loc4_:*;
                  §§push((_loc4_ = this).§9!;§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && this))
                  {
                     _loc4_.§9!;§ = _loc5_;
                  }
                  addr112:
                  if(this.§0!T§.length > this.§?!5§)
                  {
                     if(_loc7_ || param1)
                     {
                        addr125:
                        _loc3_ = this.§0!T§[this.§?!5§];
                        if(_loc7_)
                        {
                           if(_loc3_.step == this.currentStep)
                           {
                              if(!_loc6_)
                              {
                                 param1.activatePowerup();
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr165);
                              }
                           }
                           §§goto(addr165);
                        }
                        §§push((_loc4_ = this).§?!5§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           _loc4_.§?!5§ = _loc5_;
                        }
                     }
                  }
                  §§goto(addr165);
               }
               addr165:
               §§push((_loc4_ = this).§[R§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() + 1);
               }
               _loc5_ = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  _loc4_.§[R§ = _loc5_;
               }
               return;
            }
            §§goto(addr112);
         }
         §§goto(addr125);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(§§pop() + (this.§0Y§ + DELIM + this.§+,§() + DELIM + this.§<!E§()));
               if(_loc2_)
               {
                  _loc1_ = §§pop();
                  addr70:
                  return _loc1_;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §+,§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§&!0§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§&!0§.length)
            {
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           addr110:
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
                     loop2:
                     while(true)
                     {
                        _loc2_++;
                        addr62:
                        while(!_loc4_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                     addr81:
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + this.§&!0§[_loc2_].toString());
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr62);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr110);
         }
         return §§pop();
      }
      
      private function §<!E§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() + this.§0!T§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§0!T§.length)
            {
               if(!(_loc4_ && this))
               {
                  if(_loc3_ || _loc1_)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(§§pop() + this.§0!T§[_loc2_].toString());
                              break;
                           }
                           addr137:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                     _loc1_ = §§pop();
                  }
                  _loc2_++;
               }
               continue;
            }
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + INTERNAL_DELIM);
            }
            §§goto(addr137);
         }
         return §§pop();
      }
   }
}
