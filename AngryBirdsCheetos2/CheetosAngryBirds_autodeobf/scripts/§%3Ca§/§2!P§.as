package §<a§
{
   import §,§.§ p§;
   import flash.system.Capabilities;
   
   public class §2!P§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            DELIM = "@@";
         }
         do
         {
            INTERNAL_DELIM = "@";
         }
         while(_loc1_);
         
      }
      
      private var §>c§:String;
      
      private var §"M§:int;
      
      private var §@c§:Number;
      
      private var §#!c§:Number;
      
      protected var §8!7§:Boolean;
      
      protected var §#§:Vector.<§"G§>;
      
      protected var §,F§:Vector.<§#C§>;
      
      private var §3R§:int;
      
      private var §"i§:int;
      
      public function §2!P§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#§ = new Vector.<§"G§>();
            while(true)
            {
               this.§,F§ = new Vector.<§#C§>();
               loop1:
               for(; !_loc2_; while(!(_loc2_ && param1))
               {
                  this.§>c§ = param1;
                  do
                  {
                     this.§@c§ = 1;
                  }
                  while(_loc2_ && this);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     super();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function §,a§(param1:String) : §2!P§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§2!P§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§"G§ = null;
         var _loc9_:§#C§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc13_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §2!P§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!(_loc12_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §"G§.§,a§(_loc6_))
                        {
                           if(_loc13_ || _loc3_)
                           {
                              _loc2_.§#§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(!_loc12_)
                        {
                           if(_loc13_ || _loc3_)
                           {
                              _loc10_ = 0;
                              if(_loc13_)
                              {
                                 addr136:
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || _loc2_)
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
                                    if(_loc9_ = §#C§.§,a§(_loc7_))
                                    {
                                       if(_loc13_)
                                       {
                                          _loc2_.§,F§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 addr153:
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr136);
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
                     §§goto(addr153);
                  }
                  §§goto(addr180);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr49);
      }
      
      public function get §`!N§() : Boolean
      {
         return this.§8!7§;
      }
      
      public function get levelName() : String
      {
         return this.§>c§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@c§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§@c§;
      }
      
      protected function get currentStep() : int
      {
         return this.§"M§;
      }
      
      public function §1!f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§8!7§)
            {
               if(_loc7_)
               {
                  this.§#§.push(new §"G§(param1,param2,param3,param4,param5));
                  addr34:
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §;!2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§8!7§)
            {
               loop0:
               while(true)
               {
                  if(this.§,F§.length > 0)
                  {
                     if(_loc3_ || this)
                     {
                        while(true)
                        {
                           if(this.§,F§[this.§,F§.length - 1].step == param1)
                           {
                              break loop0;
                              addr24:
                           }
                           do
                           {
                              this.§,F§.push(new §#C§(param1));
                           }
                           while(!_loc3_);
                           
                           if(!(_loc3_ || param1))
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        addr73:
                     }
                     break;
                  }
                  §§goto(addr24);
               }
               return;
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!7§ = true;
         }
      }
      
      public function step(param1:§ p§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§"G§ = null;
         var _loc3_:§#C§ = null;
         if(!_loc7_)
         {
            if(this.§#§.length > this.§3R§)
            {
               if(_loc6_)
               {
                  _loc2_ = this.§#§[this.§3R§];
                  if(_loc6_)
                  {
                     if(_loc2_.step == this.currentStep)
                     {
                        if(!_loc7_)
                        {
                           param1.slingshot.§7+§(_loc2_.x,_loc2_.y,_loc2_.§0f§,_loc2_.angle);
                           if(!(_loc7_ && param1))
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§3R§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_)
                              {
                                 _loc4_.§3R§ = _loc5_;
                              }
                              addr81:
                              if(this.§,F§.length > this.§"i§)
                              {
                                 if(!_loc7_)
                                 {
                                    addr99:
                                    _loc3_ = this.§,F§[this.§"i§];
                                    if(_loc6_)
                                    {
                                       if(_loc3_.step == this.currentStep)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             addr120:
                                             param1.activatePowerup();
                                             if(_loc7_ && param1)
                                             {
                                             }
                                             §§goto(addr154);
                                          }
                                          §§push((_loc4_ = this).§"i§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc5_ = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             _loc4_.§"i§ = _loc5_;
                                          }
                                          §§goto(addr154);
                                       }
                                       addr154:
                                       §§push((_loc4_ = this).§"M§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc6_ || param1)
                                       {
                                          _loc4_.§"M§ = _loc5_;
                                       }
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr120);
            }
            §§goto(addr81);
         }
         §§goto(addr99);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(§§pop() + (this.§>c§ + DELIM + this.§!$§() + DELIM + this.§8p§()));
               if(!_loc3_)
               {
                  addr69:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §!$§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§#§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§#§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              §§push(§§pop() + this.§#§[_loc2_].toString());
                              while(_loc3_ && _loc2_)
                              {
                              }
                              _loc1_ = §§pop();
                              _loc2_++;
                              continue loop0;
                              addr83:
                              addr101:
                           }
                           else
                           {
                              addr105:
                           }
                           while(true)
                           {
                              §§push(§§pop() + INTERNAL_DELIM);
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr109);
               }
               §§goto(addr101);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr105);
         }
         return §§pop();
      }
      
      private function §8p§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop() + this.§,F§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,F§.length)
            {
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        addr127:
                        _loc1_ = §§pop();
                        addr128:
                        while(true)
                        {
                           §§push(_loc1_);
                        }
                        addr128:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§,F§[_loc2_].toString());
                        §§goto(addr128);
                     }
                     addr95:
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr103:
                     while(true)
                     {
                        _loc2_++;
                     }
                     §§goto(addr95);
                  }
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr103);
               }
               continue;
            }
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + INTERNAL_DELIM);
            }
            §§goto(addr127);
         }
         return §§pop();
      }
   }
}
