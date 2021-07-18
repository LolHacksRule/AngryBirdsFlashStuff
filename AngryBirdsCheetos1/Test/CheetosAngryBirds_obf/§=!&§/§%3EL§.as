package §=!&§
{
   import §,§.§ p§;
   import §09§.§4!7§;
   import §<a§.§"G§;
   import §<a§.§#C§;
   import §<a§.§2!P§;
   
   public class §>L§ extends §2!P§
   {
       
      
      protected var §5C§:Vector.<§#L§>;
      
      private var § 0§:int;
      
      public function §>L§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5C§ = new Vector.<§#L§>();
         }
         do
         {
            super(param1);
         }
         while(!(_loc2_ || this));
         
      }
      
      public static function §,a§(param1:String) : §2!P§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:§>L§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         var _loc11_:§"G§ = null;
         var _loc12_:* = null;
         var _loc13_:§#C§ = null;
         var _loc14_:* = null;
         var _loc15_:§#L§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(!_loc16_)
         {
            if(_loc3_.length == 4)
            {
               addr64:
               _loc2_ = new §>L§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
               if(_loc17_)
               {
                  _loc7_ = 1;
               }
               while(true)
               {
                  §§push(_loc7_);
                  if(!(_loc16_ && _loc3_))
                  {
                     if(§§pop() >= _loc4_.length)
                     {
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(1);
                           if(_loc17_)
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              if(§§pop() < _loc5_.length)
                              {
                                 addr178:
                                 §§push(_loc5_[_loc8_]);
                                 if(!(_loc16_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       _loc12_ = §§pop();
                                       if(_loc17_ || §>L§)
                                       {
                                          if(_loc13_ = §#C§.§,a§(_loc12_))
                                          {
                                             if(_loc17_)
                                             {
                                                _loc2_.§,F§.push(_loc13_);
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   addr218:
                                                   _loc8_++;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr240);
                                                addr219:
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       break;
                                       §§goto(addr178);
                                    }
                                    §§goto(addr292);
                                    addr190:
                                 }
                                 break;
                              }
                              if(!(_loc16_ && param1))
                              {
                                 §§push(1);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    addr240:
                                    _loc9_ = §§pop();
                                    if(_loc17_ || _loc3_)
                                    {
                                       addr248:
                                       while(true)
                                       {
                                          §§push(_loc9_);
                                          addr289:
                                          while(true)
                                          {
                                             if(§§pop() < _loc6_.length)
                                             {
                                                addr249:
                                                §§push(_loc6_[_loc9_]);
                                                break loop6;
                                             }
                                             §§goto(addr292);
                                          }
                                       }
                                       addr288:
                                    }
                                    while(true)
                                    {
                                       if(_loc15_ = §#L§.§,a§(_loc14_))
                                       {
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             _loc2_.§5C§.push(_loc15_);
                                             if(_loc17_)
                                             {
                                                addr287:
                                                _loc9_++;
                                             }
                                             §§goto(addr288);
                                          }
                                       }
                                       §§goto(addr287);
                                    }
                                    addr257:
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr248);
                              §§goto(addr292);
                           }
                           while(true)
                           {
                              _loc14_ = §§pop();
                              if(!_loc16_)
                              {
                                 §§goto(addr257);
                              }
                              addr292:
                              return _loc2_;
                              §§goto(addr249);
                           }
                        }
                        addr177:
                        §§goto(addr219);
                     }
                     else
                     {
                        §§push(_loc4_[_loc7_]);
                        if(!_loc16_)
                        {
                           _loc10_ = §§pop();
                           if(!(_loc16_ && param1))
                           {
                              if(_loc11_ = §"G§.§,a§(_loc10_))
                              {
                                 if(!(_loc17_ || param1))
                                 {
                                    continue;
                                 }
                                 _loc2_.§#§.push(_loc11_);
                                 if(_loc16_ && _loc3_)
                                 {
                                    continue;
                                 }
                              }
                              _loc7_++;
                              continue;
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr292);
                     }
                  }
                  break;
               }
               _loc8_ = §§pop();
               if(_loc17_ || _loc2_)
               {
                  §§goto(addr177);
               }
            }
            §§goto(addr292);
         }
         §§goto(addr64);
      }
      
      public function §7$§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!§8!7§)
            {
               if(_loc2_)
               {
                  addr47:
                  this.§5C§.push(new §#L§(param1));
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(super.toString());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + (§2!P§.DELIM + this.§#!U§()));
               if(_loc3_ || _loc2_)
               {
                  _loc1_ = §§pop();
                  addr68:
                  return _loc1_;
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §#!U§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§5C§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5C§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           addr129:
                           §§push(§§pop() + §2!P§.INTERNAL_DELIM);
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr134:
                              while(true)
                              {
                                 §§push(_loc1_);
                              }
                           }
                           addr133:
                        }
                        while(_loc4_)
                        {
                           §§goto(addr133);
                           §§goto(addr134);
                        }
                        §§push(§§pop() + this.§5C§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     loop2:
                     while(true)
                     {
                        _loc2_++;
                        addr95:
                        while(!(_loc3_ || _loc2_))
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr95);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr129);
         }
         return §§pop();
      }
      
      override public function step(param1:§ p§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§#L§ = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§5C§.length > this.§ 0§)
            {
               if(!_loc5_)
               {
                  addr35:
                  _loc2_ = this.§5C§[this.§ 0§];
                  if(_loc6_)
                  {
                     if(_loc2_.step == currentStep)
                     {
                        if(_loc6_)
                        {
                           (param1.slingshot as §4!7§).§0!7§();
                           if(!_loc6_)
                           {
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  var _loc3_:*;
                  §§push((_loc3_ = this).§ 0§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_.§ 0§ = _loc4_;
                  }
               }
               §§goto(addr102);
            }
            addr102:
            super.step(param1);
            return;
         }
         §§goto(addr35);
      }
   }
}
