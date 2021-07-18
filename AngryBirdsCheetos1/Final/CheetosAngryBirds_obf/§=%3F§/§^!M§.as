package §=?§
{
   import §!X§.§86§;
   import flash.system.Capabilities;
   
   public class §^!M§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            DELIM = "@@";
            do
            {
               INTERNAL_DELIM = "@";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §"j§:String;
      
      private var §#_§:int;
      
      private var §0t§:Number;
      
      private var §3-§:Number;
      
      protected var §[K§:Boolean;
      
      protected var §+>§:Vector.<§<Q§>;
      
      protected var §8=§:Vector.<§>!O§>;
      
      private var §'!S§:int;
      
      private var §?!F§:int;
      
      public function §^!M§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+>§ = new Vector.<§<Q§>();
            while(true)
            {
               this.§8=§ = new Vector.<§>!O§>();
               addr88:
               while(true)
               {
                  super();
               }
            }
            addr95:
         }
         loop2:
         while(true)
         {
            this.§"j§ = param1;
            while(true)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr95);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr88);
         }
      }
      
      public static function §&O§(param1:String) : §^!M§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:§^!M§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<Q§ = null;
         var _loc9_:§>!O§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(!(_loc13_ && param1))
         {
            if(_loc3_.length == 3)
            {
               addr53:
               _loc2_ = new §^!M§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!(_loc13_ && §^!M§))
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §<Q§.§&O§(_loc6_))
                        {
                           if(_loc12_)
                           {
                              _loc2_.§+>§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!(_loc13_ && param1))
                     {
                        if(_loc12_ || _loc2_)
                        {
                           if(_loc12_)
                           {
                              _loc10_ = 0;
                              if(!(_loc13_ && param1))
                              {
                                 _loc11_ = _loc5_;
                                 if(!(_loc13_ && §^!M§))
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
                                    if(_loc9_ = §>!O§.§&O§(_loc7_))
                                    {
                                       if(!_loc13_)
                                       {
                                          _loc2_.§8=§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 addr162:
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr188);
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
                     §§goto(addr162);
                  }
                  §§goto(addr189);
               }
            }
            §§goto(addr189);
         }
         §§goto(addr53);
      }
      
      public function get §#I§() : Boolean
      {
         return this.§[K§;
      }
      
      public function get §`4§() : String
      {
         return this.§"j§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0t§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§0t§;
      }
      
      protected function get currentStep() : int
      {
         return this.§#_§;
      }
      
      public function §7_§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§[K§)
            {
               if(_loc6_)
               {
                  this.§+>§.push(new §<Q§(param1,param2,param3,param4,param5));
                  addr33:
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §99§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§[K§)
            {
               if(!(_loc2_ && this))
               {
                  if(this.§8=§.length > 0)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(this.§8=§[this.§8=§.length - 1].step != param1)
                        {
                           loop1:
                           while(true)
                           {
                              this.§8=§.push(new §>!O§(param1));
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              addr99:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr25);
                           }
                           else
                           {
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr29);
               }
               §§goto(addr98);
            }
            addr25:
            return;
         }
         addr98:
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§[K§ = true;
         }
      }
      
      public function step(param1:§86§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<Q§ = null;
         var _loc3_:§>!O§ = null;
         if(!_loc7_)
         {
            if(this.§+>§.length > this.§'!S§)
            {
               if(!(_loc7_ && this))
               {
                  addr37:
                  _loc2_ = this.§+>§[this.§'!S§];
                  if(_loc6_)
                  {
                     if(_loc2_.step == this.currentStep)
                     {
                        if(!(_loc7_ && param1))
                        {
                           addr58:
                           param1.slingshot.§9!B§(_loc2_.x,_loc2_.y,_loc2_.§@!F§,_loc2_.angle);
                           if(_loc7_ && param1)
                           {
                           }
                           §§goto(addr111);
                        }
                        var _loc4_:*;
                        §§push((_loc4_ = this).§'!S§);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_ || param1)
                        {
                           _loc4_.§'!S§ = _loc5_;
                        }
                        §§goto(addr111);
                     }
                     addr111:
                     if(this.§8=§.length > this.§?!F§)
                     {
                        if(!(_loc7_ && param1))
                        {
                           addr124:
                           _loc3_ = this.§8=§[this.§?!F§];
                           if(!_loc7_)
                           {
                              if(_loc3_.step == this.currentStep)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    param1.activatePowerup();
                                    if(_loc6_ || _loc3_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§push((_loc4_ = this).§?!F§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§?!F§ = _loc5_;
                           }
                        }
                        §§goto(addr169);
                     }
                     addr169:
                     §§push((_loc4_ = this).§#_§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        _loc4_.§#_§ = _loc5_;
                     }
                     return;
                  }
                  §§goto(addr58);
               }
               §§goto(addr124);
            }
            §§goto(addr58);
         }
         §§goto(addr37);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc2_ && _loc3_))
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§"j§ + DELIM + this.§6;§() + DELIM + this.§'r§()));
               if(_loc3_ || this)
               {
                  addr75:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §6;§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + this.§+>§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+>§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && this))
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() + this.§+>§[_loc2_].toString());
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                           addr137:
                        }
                     }
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr106:
                     while(!(_loc4_ && this))
                     {
                        _loc2_++;
                     }
                     §§goto(addr138);
                  }
               }
               while(!_loc3_)
               {
                  §§goto(addr106);
               }
               continue;
            }
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + INTERNAL_DELIM);
            }
            §§goto(addr137);
         }
         return §§pop();
      }
      
      private function §'r§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + this.§8=§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§8=§.length)
            {
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc1_))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() + this.§8=§[_loc2_].toString());
                           addr118:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr78:
                     }
                     while(_loc4_ && _loc1_)
                     {
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                        §§goto(addr78);
                     }
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        _loc2_++;
                        addr73:
                        while(_loc4_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr73);
            }
            else
            {
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + INTERNAL_DELIM);
               }
            }
            §§goto(addr117);
         }
         return §§pop();
      }
   }
}
