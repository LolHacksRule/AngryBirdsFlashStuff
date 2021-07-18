package §+!a§
{
   public class §6p§ extends §@!_§
   {
       
      
      protected var §!4§:String;
      
      protected var §36§:String;
      
      protected var §7"0§:String;
      
      protected var §'[§:String;
      
      protected var §>!%§:Number = 1.0;
      
      protected var §=T§:Number = 1.0;
      
      protected var §%r§:Array;
      
      protected var §@!b§:Boolean;
      
      public function §6p§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super(param1,param2,param3,param4,param5,param10);
         }
         while(true)
         {
            this.§!4§ = param6;
            loop1:
            while(true)
            {
               this.§36§ = param7;
               addr116:
               while(true)
               {
                  this.§7"0§ = param8;
                  continue loop1;
               }
            }
         }
      }
      
      public function get §?"5§() : String
      {
         return this.§!4§;
      }
      
      public function get §4L§() : String
      {
         return this.§36§;
      }
      
      public function get §,n§() : String
      {
         return this.§7"0§;
      }
      
      public function get §%!R§() : String
      {
         return this.§'[§;
      }
      
      public function get textureScale() : Number
      {
         return this.§>!%§;
      }
      
      public function get §6!Q§() : Array
      {
         return this.§%r§.concat();
      }
      
      override public function get colorGround() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§@!b§)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(super.colorGround);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return 0;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      private function §+"F§(param1:Object, param2:Boolean = false) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc16_:* = 0;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Boolean = false;
         var _loc25_:Array = null;
         var _loc3_:String = param1.sprite;
         var _loc4_:String = null;
         if(_loc26_)
         {
            §§push((!!param1.scale ? param1.scale : 1) * this.§=T§);
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc27_ && _loc3_))
            {
               if(param1.zDistance)
               {
                  addr72:
                  §§push(Number(param1.zDistance));
                  if(!(_loc27_ && _loc3_))
                  {
                     addr94:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr86:
                     §§push(Number(§§pop()));
                     if(_loc26_ || param1)
                     {
                        §§goto(addr94);
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc26_ || this)
                  {
                     if(param1.offsetX)
                     {
                        addr129:
                        §§push(Number(param1.offsetX));
                        if(!(_loc27_ && this))
                        {
                           addr128:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(!_loc27_)
                        {
                           if(param1.offsetY)
                           {
                              addr135:
                              §§push(Number(param1.offsetY));
                              if(_loc26_ || param1)
                              {
                                 addr157:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 addr154:
                                 §§push(Number(§§pop()));
                                 if(_loc26_)
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              var _loc8_:* = §§pop();
                              if(!_loc27_)
                              {
                                 if(param1.angleMult !== undefined)
                                 {
                                    addr165:
                                    §§push(Number(param1.angleMult));
                                    if(_loc26_ || param2)
                                    {
                                    }
                                    addr192:
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc26_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc26_ || this)
                                       {
                                          §§goto(addr192);
                                       }
                                    }
                                 }
                                 var _loc9_:* = §§pop();
                                 if(_loc26_ || param1)
                                 {
                                    if(param1.scaleSpeed !== undefined)
                                    {
                                       addr205:
                                       §§push(Number(param1.scaleSpeed));
                                       if(_loc27_)
                                       {
                                       }
                                       addr215:
                                       §§push(Number(§§pop()));
                                    }
                                    else
                                    {
                                       §§push(Number(1));
                                       if(!_loc27_)
                                       {
                                          §§goto(addr215);
                                       }
                                    }
                                    var _loc10_:* = §§pop();
                                    if(!_loc27_)
                                    {
                                       if(param1.xMult !== undefined)
                                       {
                                          addr223:
                                          §§push(Number(param1.xMult));
                                          if(_loc26_)
                                          {
                                             addr238:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       else
                                       {
                                          §§push(Number(1));
                                          if(!(_loc27_ && _loc3_))
                                          {
                                             §§goto(addr238);
                                          }
                                       }
                                       var _loc11_:* = §§pop();
                                       if(_loc26_ || param1)
                                       {
                                          if(param1.yMult !== undefined)
                                          {
                                             addr251:
                                             §§push(Number(param1.yMult));
                                             if(_loc26_ || _loc3_)
                                             {
                                                addr271:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                             if(!(_loc27_ && _loc3_))
                                             {
                                                §§goto(addr271);
                                             }
                                          }
                                          var _loc12_:* = §§pop();
                                          if(!_loc27_)
                                          {
                                             if(param1.bLoop !== undefined)
                                             {
                                                addr279:
                                                §§push(Boolean(param1.bLoop));
                                                if(_loc27_ && _loc3_)
                                                {
                                                }
                                                addr293:
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(true);
                                                if(!_loc27_)
                                                {
                                                   §§goto(addr293);
                                                }
                                             }
                                             var _loc13_:* = §§pop();
                                             var _loc14_:§>8§ = null;
                                             _loc14_ = new §>8§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc11_,_loc12_,_loc9_,_loc10_,param2,_loc13_,false,false);
                                             var _loc15_:Object;
                                             if(_loc15_ = param1.elements)
                                             {
                                                if(!(_loc27_ && param2))
                                                {
                                                   §§push(int(_loc15_.amount));
                                                   if(_loc26_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc26_ || param2)
                                                      {
                                                         _loc16_ = §§pop();
                                                         if(_loc26_ || this)
                                                         {
                                                            addr366:
                                                            if(§§pop() > 0)
                                                            {
                                                               if(_loc26_)
                                                               {
                                                                  if(_loc15_.x)
                                                                  {
                                                                     if(!(_loc27_ && this))
                                                                     {
                                                                        §§push(Number(_loc15_.x));
                                                                        if(!_loc27_)
                                                                        {
                                                                           addr401:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc26_ || this)
                                                                           {
                                                                              addr409:
                                                                              _loc17_ = §§pop();
                                                                              if(!_loc27_)
                                                                              {
                                                                                 if(!_loc15_.y)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc18_ = §§pop();
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc15_.w)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr627:
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc19_ = §§pop();
                                                                                                            loop24:
                                                                                                            while(_loc15_.h)
                                                                                                            {
                                                                                                               loop25:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(_loc15_.h));
                                                                                                                  addr594:
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop2:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc20_ = §§pop();
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              if(_loc26_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc15_.velX)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    loop5:
                                                                                                                                    for(; _loc26_; while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc27_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc26_ || param1))
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             §§goto(addr567);
                                                                                                                                          }
                                                                                                                                          §§goto(addr584);
                                                                                                                                       }
                                                                                                                                       §§goto(addr568);
                                                                                                                                    },continue loop19)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop7:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                             loop8:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_.velY)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(_loc15_.velY));
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         continue loop5;
                                                                                                                                                      }
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr534:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr568:
                                                                                                                                                               loop11:
                                                                                                                                                               while(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_.variation)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc26_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(_loc15_.variation));
                                                                                                                                                                                 if(_loc27_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr484:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr487:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc27_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                       loop14:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc26_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc24_ = _loc15_.randomRotation;
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr633:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(_loc15_.y));
                                                                                                                                                                                                break loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr633:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc27_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc26_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr484);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr487);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop23;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop7;
                                                                                                                                                               §§goto(addr534);
                                                                                                                                                            }
                                                                                                                                                            addr567:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr636);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr579);
                                                                                                                                                   }
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                §§push(0);
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       addr622:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr599:
                                                                                                                                 }
                                                                                                                                 §§goto(addr576);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr619:
                                                                                                                              }
                                                                                                                              §§goto(addr622);
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(1);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr619);
                                                                                             }
                                                                                          }
                                                                                          continue loop33;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr633);
                                                                                 addr412:
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                        }
                                                                        §§goto(addr627);
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc26_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc27_ && this))
                                                                        {
                                                                           §§goto(addr401);
                                                                        }
                                                                        §§goto(addr594);
                                                                     }
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            §§goto(addr675);
                                                         }
                                                         §§goto(addr598);
                                                      }
                                                   }
                                                   §§goto(addr366);
                                                }
                                                §§goto(addr633);
                                             }
                                             §§goto(addr675);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr165);
                           }
                           else
                           {
                              §§push(0);
                              if(_loc26_ || param1)
                              {
                                 §§goto(addr154);
                              }
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr135);
                     }
                     else
                     {
                        §§push(0);
                        if(!(_loc27_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc27_)
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr129);
               }
               else
               {
                  §§push(0);
                  if(_loc26_)
                  {
                     §§goto(addr86);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr72);
         }
         §§goto(addr49);
      }
      
      public function §,?§(param1:Array, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc8_,_loc7_));
            if(_loc10_ || param2)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc7_,_loc8_);
                  if(_loc10_ || this)
                  {
                     this.§+"F§(_loc3_,false);
                  }
                  continue;
               }
               if(!_loc9_)
               {
                  if(!(_loc9_ && this))
                  {
                     if(!_loc9_)
                     {
                        _loc7_ = 0;
                        if(!(_loc9_ && param2))
                        {
                           _loc8_ = param2;
                           while(true)
                           {
                              §§push(§§hasnext(_loc8_,_loc7_));
                              break loop0;
                           }
                           addr165:
                           addr164:
                           addr162:
                        }
                        §§goto(addr165);
                     }
                     return;
                  }
                  §§goto(addr165);
               }
               §§goto(addr164);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc7_,_loc8_);
               if(_loc4_ is Array)
               {
                  if((_loc5_ = _loc4_ as Array).length >= 4)
                  {
                     _loc6_ = {
                        "sprite":_loc5_[1],
                        "scale":_loc5_[3],
                        "zDistance":_loc5_[2]
                     };
                     if(!(_loc9_ && this))
                     {
                        this.§+"F§(_loc6_,true);
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                     }
                     this.§@!b§ = true;
                  }
               }
               continue;
            }
            §§goto(addr165);
         }
      }
   }
}
