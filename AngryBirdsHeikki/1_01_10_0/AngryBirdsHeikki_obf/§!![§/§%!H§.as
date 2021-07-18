package §!![§
{
   import §"!I§.§^!2§;
   import §&!T§.§%%§;
   import §6!B§.§0[§;
   import §6!B§.§8u§;
   import §6!B§.§?O§;
   
   public class §%!H§ extends §8u§
   {
       
      
      protected var §<!R§:Vector.<§^7§>;
      
      private var §;d§:int;
      
      public function §%!H§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!R§ = new Vector.<§^7§>();
         }
         do
         {
            super(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function initialize(param1:String) : §%!H§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:§%!H§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:§?O§ = null;
         var _loc11_:§0[§ = null;
         var _loc12_:String = null;
         var _loc13_:§^7§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(!(_loc16_ && _loc2_))
         {
            if(_loc3_.length == 4)
            {
               addr65:
               _loc2_ = new §%!H§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
               var _loc14_:* = 0;
               var _loc15_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc15_,_loc14_));
                  if(_loc17_ || §%!H§)
                  {
                     if(§§pop())
                     {
                        _loc7_ = §§nextvalue(_loc14_,_loc15_);
                        if(_loc10_ = §?O§.initialize(_loc7_))
                        {
                           if(_loc17_ || param1)
                           {
                              _loc2_.§"!T§.push(_loc10_);
                           }
                        }
                        continue;
                     }
                     if(_loc17_)
                     {
                        if(!_loc16_)
                        {
                           if(!(_loc16_ && §%!H§))
                           {
                              §§push(0);
                              if(_loc17_ || _loc2_)
                              {
                                 _loc14_ = §§pop();
                                 if(!_loc16_)
                                 {
                                    addr166:
                                    _loc15_ = _loc5_;
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc15_,_loc14_));
                                          break loop0;
                                       }
                                       addr199:
                                       if(!_loc16_)
                                       {
                                          §§push(1);
                                          if(_loc17_ || §%!H§)
                                          {
                                             addr210:
                                             _loc9_ = §§pop();
                                             if(_loc17_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc9_);
                                                   §§goto(addr249);
                                                }
                                                addr248:
                                             }
                                             while(true)
                                             {
                                                if(_loc13_ = §^7§.initialize(_loc12_))
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      _loc2_.§<!R§.push(_loc13_);
                                                      if(_loc17_)
                                                      {
                                                         addr247:
                                                         _loc9_++;
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                §§goto(addr247);
                                             }
                                          }
                                          addr249:
                                          §§goto(addr252);
                                       }
                                       addr252:
                                       while(§§pop() < _loc6_.length)
                                       {
                                          _loc12_ = _loc6_[_loc9_];
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                       }
                                       return _loc2_;
                                       addr196:
                                       addr198:
                                    }
                                    while(true)
                                    {
                                       if(_loc11_ = §0[§.initialize(_loc8_))
                                       {
                                          if(!(_loc16_ && §%!H§))
                                          {
                                             _loc2_.§'t§.push(_loc11_);
                                          }
                                       }
                                       §§goto(addr196);
                                    }
                                    addr178:
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr198);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc8_ = §§nextvalue(_loc14_,_loc15_);
                     §§goto(addr178);
                  }
                  §§goto(addr199);
               }
            }
            §§goto(addr252);
         }
         §§goto(addr65);
      }
      
      public function §6!Z§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!§true§)
            {
               if(_loc3_)
               {
                  addr48:
                  this.§<!R§.push(new §^7§(param1));
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(super.toString());
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (§8u§.DELIM + this.§`H§()));
               if(!_loc2_)
               {
                  addr62:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §`H§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§<!R§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§<!R§.length)
            {
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr114:
                        addr109:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + this.§<!R§[_loc2_].toString());
                           }
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        _loc1_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc2_++;
                           addr71:
                           while(true)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop4;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr114);
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr71);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr109);
         }
         return §§pop();
      }
      
      override public function step(param1:§^!2§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^7§ = null;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§<!R§.length > this.§;d§)
            {
               if(!_loc6_)
               {
                  _loc2_ = this.§<!R§[this.§;d§];
                  addr34:
                  if(_loc5_)
                  {
                     if(_loc2_.step == currentStep)
                     {
                        if(!_loc6_)
                        {
                           addr59:
                           (param1.slingshot as §%%§).§,!+§();
                           if(_loc6_)
                           {
                           }
                           §§goto(addr96);
                        }
                        var _loc3_:*;
                        §§push((_loc3_ = this).§;d§);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc3_.§;d§ = _loc4_;
                        }
                        §§goto(addr96);
                     }
                     addr96:
                     super.step(param1);
                     return;
                  }
               }
            }
            §§goto(addr59);
         }
         §§goto(addr34);
      }
   }
}
