package §?b§
{
   import §'!E§.§]g§;
   import §6J§.§&!;§;
   import §6J§.§]<§;
   import §@!!§.§=_§;
   
   public class §9H§
   {
      
      public static const §?U§:Number = 50;
      
      public static var §#!=§:Number = 0;
      
      public static const §%2§:Number = 0.5;
      
      public static const §+§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?U§ = 50;
            if(_loc1_ || _loc1_)
            {
               §#!=§ = 0;
               if(!(_loc2_ && _loc1_))
               {
                  addr63:
                  §%2§ = 0.5;
                  if(!_loc2_)
                  {
                     addr68:
                     §+§ = 0;
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr63);
      }
      
      public var §73§:Number;
      
      public var §#X§:Number;
      
      public var §&7§:Number;
      
      public var §6o§:Number;
      
      public var §9^§:Number;
      
      public var §4!%§:§7!,§;
      
      public function §9H§(param1:§7!,§, param2:§&!;§)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§]<§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§]g§ = null;
         if(!_loc11_)
         {
            super();
            if(!(_loc11_ && this))
            {
               this.§4!%§ = param1;
               if(_loc10_)
               {
                  this.§73§ = int.MAX_VALUE;
                  if(!(_loc11_ && _loc3_))
                  {
                     this.§#X§ = int.MIN_VALUE;
                  }
               }
            }
         }
         var _loc3_:* = 0;
         if(_loc10_ || this)
         {
            _loc3_ = 0;
         }
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc11_ && this))
            {
               §§push(param2.§&!@§);
               if(!_loc11_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param2.§=^§);
                           addr329:
                           addr330:
                           while(§§pop() < §§pop())
                           {
                              §§push((_loc9_ = param2.§"0§(_loc3_)).x);
                              if(_loc10_)
                              {
                                 §§push(this.§73§);
                                 if(!(_loc11_ && param1))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          this.§73§ = _loc9_.x;
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             addr307:
                                             if(_loc9_.x > this.§#X§)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr314:
                                                   this.§#X§ = _loc9_.x;
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      addr325:
                                                      _loc3_++;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                                addr326:
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr325);
                                    }
                                 }
                              }
                              §§goto(addr307);
                              continue loop2;
                           }
                           §§push(0.1);
                           if(!(_loc11_ && param2))
                           {
                              §§push(§7!,§.§[>§);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc11_)
                                 {
                                    addr347:
                                    §§push(§§pop() * §7!,§.§ '§);
                                    if(_loc10_ || param2)
                                    {
                                       addr355:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc4_:* = §§pop();
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(this);
                                    §§push(this.§73§);
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(§§pop() - _loc4_);
                                    }
                                    §§pop().§73§ = §§pop();
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(this);
                                       §§push(this.§#X§);
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§pop().§#X§ = §§pop();
                                    }
                                    §§push(this);
                                    §§push(§7!,§.§[>§);
                                    if(!_loc11_)
                                    {
                                       §§push(§7!,§.§ '§);
                                       if(!(_loc11_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc11_ && this))
                                          {
                                             addr442:
                                             §§push(this.§#X§);
                                             if(_loc10_ || param2)
                                             {
                                                addr428:
                                                §§push(§§pop() - this.§73§);
                                             }
                                             §§pop().§9^§ = §§pop() / §§pop();
                                             if(_loc10_)
                                             {
                                                this.§9^§ = Math.max(this.§9^§,§=_§.§5!0§);
                                                if(!_loc11_)
                                                {
                                                   addr455:
                                                   this.§6o§ = §+§;
                                                }
                                                §§push(this);
                                                §§push(this.§6o§);
                                                if(!(_loc11_ && param2))
                                                {
                                                   §§push(§§pop() - 200);
                                                }
                                                §§pop().§&7§ = §§pop();
                                                return;
                                             }
                                             §§goto(addr455);
                                          }
                                          §§goto(addr442);
                                       }
                                       §§goto(addr428);
                                    }
                                    §§goto(addr442);
                                 }
                                 §§goto(addr455);
                              }
                              §§goto(addr347);
                           }
                           §§goto(addr355);
                        }
                     }
                     addr268:
                     §§goto(addr326);
                  }
                  else
                  {
                     _loc5_ = param2.§5!1§(_loc3_);
                     _loc6_ = Number(0);
                     if(!_loc11_)
                     {
                        if(_loc5_.left.toString() != "NaN")
                        {
                           §§push(_loc5_.right);
                           if(_loc10_)
                           {
                              §§push(_loc5_.left);
                              if(_loc10_ || param2)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc10_ || param2)
                                 {
                                    §§push(4);
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop() * §§pop()));
                                       if(!(_loc11_ && param1))
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc10_)
                                          {
                                             addr144:
                                             §§push(_loc5_.x);
                                             if(_loc10_)
                                             {
                                                addr148:
                                                §§push(_loc6_);
                                                if(_loc10_)
                                                {
                                                   addr151:
                                                   §§push(2);
                                                   if(!(_loc11_ && this))
                                                   {
                                                      addr169:
                                                      §§push(§§pop() - §§pop() / §§pop());
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc7_ = §§pop();
                                                      if(!(_loc10_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      addr191:
                                                      §§push(_loc5_.x);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(_loc6_);
                                                         §§push(2);
                                                      }
                                                      _loc8_ = §§pop();
                                                      §§push(_loc7_);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(this.§73§);
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  this.§73§ = _loc7_;
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     addr232:
                                                                     if(_loc8_ > this.§#X§)
                                                                     {
                                                                        if(_loc11_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr243:
                                                                        this.§#X§ = _loc8_;
                                                                     }
                                                                  }
                                                                  _loc3_++;
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                §§goto(addr191);
                                                §§push(Number(§§pop() + §§pop()));
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr191);
                                    }
                                    else
                                    {
                                       addr129:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc11_)
                                       {
                                          addr135:
                                          §§push(Number(§§pop() * §7!,§.§ '§));
                                          if(_loc10_ || param2)
                                          {
                                             addr143:
                                             _loc6_ = §§pop();
                                             §§goto(addr144);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr151);
                           }
                        }
                        else
                        {
                           §§push(§7!,§.§[>§);
                           if(!_loc11_)
                           {
                              §§goto(addr129);
                              §§push(4);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr329);
            }
            break;
         }
         _loc3_ = §§pop();
         if(!_loc11_)
         {
            §§goto(addr268);
         }
         §§goto(addr330);
      }
      
      public function clear() : void
      {
      }
      
      public function §>W§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param2);
            if(!_loc3_)
            {
               §§push(this.§&7§);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(param2);
                                 if(_loc4_ || this)
                                 {
                                    §§push(this.§6o§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() + 50);
                                       if(!(_loc3_ && this))
                                       {
                                          addr80:
                                          §§push(§§pop() > §§pop());
                                          §§push(§§pop() > §§pop());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   addr96:
                                                   §§pop();
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§push(param1);
                                                      if(_loc4_)
                                                      {
                                                         addr107:
                                                         §§push(this.§73§);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc4_)
                                                            {
                                                               addr129:
                                                               if(!§§pop())
                                                               {
                                                                  addr131:
                                                                  §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr137);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                         }
                                                         addr137:
                                                         §§goto(addr135);
                                                      }
                                                      addr135:
                                                      §§push(param1 > this.§#X§);
                                                      if(_loc4_ || param2)
                                                      {
                                                         addr145:
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr148:
                                                               §§push(true);
                                                            }
                                                            else
                                                            {
                                                               addr151:
                                                               return false;
                                                               addr150:
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr151);
               }
               §§goto(addr80);
            }
            §§goto(addr137);
         }
         §§goto(addr151);
      }
   }
}
