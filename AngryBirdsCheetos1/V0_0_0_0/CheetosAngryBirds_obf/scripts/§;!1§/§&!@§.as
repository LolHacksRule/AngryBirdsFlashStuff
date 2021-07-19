package §;!1§
{
   import §9N§.§9!%§;
   import §>!"§.§"P§;
   import §>!"§.§,!+§;
   import §>!"§.§`[§;
   import §?w§.§null§;
   
   public class §&!@§ extends §"P§
   {
       
      
      protected var §>!C§:Vector.<§<0§>;
      
      private var §]I§:int;
      
      public function §&!@§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>!C§ = new Vector.<§<0§>();
         }
         do
         {
            super(param1);
         }
         while(_loc2_ && this);
         
      }
      
      public static function §[I§(param1:String) : §"P§
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc2_:§&!@§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         var _loc11_:§`[§ = null;
         var _loc12_:* = null;
         var _loc13_:§,!+§ = null;
         var _loc14_:* = null;
         var _loc15_:§<0§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc16_ || _loc2_)
         {
            if(_loc3_.length == 4)
            {
               addr68:
               _loc2_ = new §&!@§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
               if(!_loc17_)
               {
                  _loc7_ = 1;
               }
               loop0:
               while(true)
               {
                  §§push(_loc7_);
                  if(_loc16_)
                  {
                     if(§§pop() >= _loc4_.length)
                     {
                        if(!(_loc17_ && _loc2_))
                        {
                           §§push(1);
                           if(_loc16_)
                           {
                              _loc8_ = §§pop();
                              addr187:
                              if(_loc16_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc16_)
                                    {
                                    }
                                    break loop0;
                                 }
                                 addr203:
                              }
                              while(true)
                              {
                                 if(_loc13_ = §,!+§.§[I§(_loc12_))
                                 {
                                    if(_loc16_)
                                    {
                                       _loc2_.§0!T§.push(_loc13_);
                                       if(!_loc17_)
                                       {
                                          addr202:
                                          _loc8_++;
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              addr187:
                           }
                           while(true)
                           {
                              if(§§pop() < _loc5_.length)
                              {
                                 §§push(_loc5_[_loc8_]);
                                 if(!(_loc17_ && _loc2_))
                                 {
                                    _loc12_ = §§pop();
                                    if(!_loc17_)
                                    {
                                       §§goto(addr187);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr257);
                           }
                           while(true)
                           {
                              _loc14_ = §§pop();
                              if(!_loc17_)
                              {
                                 while(true)
                                 {
                                    if(_loc15_ = §<0§.§[I§(_loc14_))
                                    {
                                       if(_loc16_)
                                       {
                                          _loc2_.§>!C§.push(_loc15_);
                                          if(!_loc17_)
                                          {
                                             addr256:
                                             _loc9_++;
                                          }
                                          addr257:
                                          if(!_loc17_)
                                          {
                                             addr211:
                                             §§push(1);
                                             if(_loc16_ || _loc3_)
                                             {
                                                break loop0;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() < _loc6_.length)
                                                {
                                                   §§push(_loc6_[_loc9_]);
                                                   break loop4;
                                                }
                                                §§goto(addr261);
                                             }
                                             addr258:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr258);
                                          }
                                          §§goto(addr261);
                                       }
                                    }
                                    §§goto(addr256);
                                 }
                                 addr231:
                              }
                              §§goto(addr261);
                           }
                           addr228:
                        }
                        §§goto(addr187);
                     }
                     else
                     {
                        §§push(_loc4_[_loc7_]);
                        if(!(_loc17_ && _loc3_))
                        {
                           _loc10_ = §§pop();
                           if(!_loc17_)
                           {
                              if(_loc11_ = §`[§.§[I§(_loc10_))
                              {
                                 if(!_loc16_)
                                 {
                                    continue;
                                 }
                                 _loc2_.§&!0§.push(_loc11_);
                                 if(!(_loc16_ || §&!@§))
                                 {
                                    continue;
                                 }
                              }
                              _loc7_++;
                              continue;
                           }
                           §§goto(addr211);
                        }
                     }
                     §§goto(addr228);
                  }
                  break;
               }
               _loc9_ = §§pop();
               if(!_loc17_)
               {
                  §§goto(addr257);
               }
               §§goto(addr231);
            }
            addr261:
            return _loc2_;
         }
         §§goto(addr68);
      }
      
      public function §20§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§8!O§)
            {
               if(_loc2_)
               {
                  this.§>!C§.push(new §<0§(param1));
               }
            }
         }
      }
      
      override public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(super.toString());
         if(_loc2_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + (§"P§.DELIM + this.§22§()));
               if(!(_loc3_ && this))
               {
                  _loc1_ = §§pop();
                  addr77:
                  return _loc1_;
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §22§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && this))
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§>!C§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§>!C§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     addr124:
                     §§push(§§pop() + §"P§.INTERNAL_DELIM);
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr129:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(§§pop() + this.§>!C§[_loc2_].toString());
                           }
                        }
                     }
                     addr128:
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           _loc2_++;
                           addr81:
                           while(true)
                           {
                              if(!(_loc3_ || _loc1_))
                              {
                                 continue loop2;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr129);
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr128);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr81);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr124);
         }
         return §§pop();
      }
      
      override public function step(param1:§9!%§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<0§ = null;
         if(_loc5_)
         {
            if(this.§>!C§.length > this.§]I§)
            {
               if(_loc5_ || this)
               {
                  _loc2_ = this.§>!C§[this.§]I§];
                  if(!_loc6_)
                  {
                     if(_loc2_.step == currentStep)
                     {
                        if(!_loc6_)
                        {
                           (param1.slingshot as §null§).§`K§();
                           if(_loc5_ || param1)
                           {
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr106);
                  }
                  var _loc3_:*;
                  §§push((_loc3_ = this).§]I§);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     _loc3_.§]I§ = _loc4_;
                  }
               }
            }
            §§goto(addr106);
         }
         addr106:
         super.step(param1);
      }
   }
}
