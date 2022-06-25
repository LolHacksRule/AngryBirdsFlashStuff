package §?A§
{
   import §#!X§.§7!1§;
   import §#!X§.LevelModel;
   import §#y§.§0!D§;
   import §6Z§.§^!g§;
   
   public class §'K§
   {
      
      public static const §^K§:Number = 50;
      
      public static var §,W§:Number = 0;
      
      public static const §!S§:Number = 0.5;
      
      public static const §;;§:Number = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §'K§))
         {
            §^K§ = 50;
            while(true)
            {
               §,W§ = 0;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §!S§ = 0.5;
                     do
                     {
                        §;;§ = 0;
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(!(_loc1_ && §'K§))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public var §6!3§:Number;
      
      public var §%Q§:Number;
      
      public var §2!<§:Number;
      
      public var §7!5§:Number;
      
      public var §=!$§:Number;
      
      public var §6f§:LevelMain;
      
      public function §'K§(param1:LevelMain, param2:LevelModel)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§7!1§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§^!g§ = null;
         if(_loc10_ || param2)
         {
            super();
            while(true)
            {
               this.§6f§ = param1;
               addr71:
               loop1:
               while(true)
               {
                  addr60:
                  while(true)
                  {
                     this.§6!3§ = int.MAX_VALUE;
                     continue loop1;
                  }
               }
               addr51:
               if(!(_loc10_ || this))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr60);
               }
               addr75:
               §§push(0);
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc10_)
                  {
                     §§push(param2.§^p§);
                     if(_loc10_ || param2)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc10_ || _loc3_)
                           {
                              §§push(0);
                              if(!_loc11_)
                              {
                                 break;
                              }
                              addr356:
                              _loc3_ = §§pop();
                              if(_loc10_)
                              {
                                 loop42:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr439:
                                    loop49:
                                    for(; §§pop() < param2.§;!V§; continue loop42)
                                    {
                                       _loc9_ = param2.§[O§(_loc3_);
                                       if(_loc10_)
                                       {
                                          §§push(_loc9_.x);
                                          loop50:
                                          while(true)
                                          {
                                             §§push(this.§6!3§);
                                             loop51:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      this.§6!3§ = _loc9_.x;
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr437:
                                                }
                                                loop53:
                                                while(true)
                                                {
                                                   §§push(_loc9_.x);
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§%Q§);
                                                   if(!(_loc10_ || _loc3_))
                                                   {
                                                      continue loop51;
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc11_ && this))
                                                      {
                                                         this.§%Q§ = _loc9_.x;
                                                      }
                                                      while(!_loc11_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc11_ && this))
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop53;
                                                            }
                                                            continue loop49;
                                                            addr390:
                                                         }
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc10_)
                                                         {
                                                            addr381:
                                                            §§push(int(§§pop()));
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                }
                                                continue loop50;
                                             }
                                          }
                                       }
                                       §§goto(addr390);
                                    }
                                 }
                              }
                           }
                           §§push(0.1);
                           if(_loc10_)
                           {
                              §§push(LevelMain.§>7§);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc11_ && this))
                                 {
                                    addr461:
                                    §§push(§§pop() * LevelMain.§!5§);
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(this);
                                    §§push(this.§6!3§);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - _loc4_);
                                    }
                                    §§pop().§6!3§ = §§pop();
                                    loop43:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§%Q§);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§pop().§%Q§ = §§pop();
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(LevelMain.§>7§);
                                          if(!(_loc11_ && param1))
                                          {
                                             §§push(LevelMain.§!5§);
                                             if(!_loc11_)
                                             {
                                                addr569:
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(this.§%Q§);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - this.§6!3§);
                                                   }
                                                }
                                                §§pop().§=!$§ = §§pop();
                                                while(true)
                                                {
                                                   this.§=!$§ = Math.max(this.§=!$§,§0!D§.§1!F§);
                                                   continue loop43;
                                                }
                                                addr570:
                                             }
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr569);
                                          addr484:
                                          if(!(_loc11_ && this))
                                          {
                                             return;
                                             addr491:
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§7!5§ = §;;§;
                                    §§goto(addr497);
                                 }
                                 §§goto(addr491);
                              }
                           }
                           §§goto(addr461);
                        }
                        else
                        {
                           _loc5_ = param2.§4h§(_loc3_);
                           if(_loc10_)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc5_.left);
                                       if(_loc10_)
                                       {
                                          if(§§pop().toString() == "NaN")
                                          {
                                             §§push(LevelMain.§>7§);
                                             if(!_loc11_)
                                             {
                                                §§push(4);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(LevelMain.§!5§);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        addr298:
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.x);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                addr260:
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.x);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         loop29:
                                                                                                         for(; !_loc11_; if(!(_loc10_ || _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(_loc11_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         },if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§%Q§ = _loc8_;
                                                                                                               loop40:
                                                                                                               while(_loc10_)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              addr104:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                           }
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              continue loop40;
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        §§goto(addr104);
                                                                                                                     }
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§goto(addr121);
                                                                                                                     }
                                                                                                                     §§goto(addr230);
                                                                                                                     addr97:
                                                                                                                  }
                                                                                                                  §§goto(addr175);
                                                                                                               }
                                                                                                               §§goto(addr185);
                                                                                                            }
                                                                                                         },§§goto(addr97))
                                                                                                         {
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                               if(!(_loc11_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  while(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop31:
                                                                                                                     for(; !_loc11_; if(_loc11_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§push(this.§6!3§),loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           while(_loc10_ || this)
                                                                                                                           {
                                                                                                                              this.§6!3§ = _loc7_;
                                                                                                                              while(!(_loc11_ && param2))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                           addr175:
                                                                                                                        }
                                                                                                                        addr121:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           §§goto(addr163);
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop32:
                                                                                                                        while(_loc10_)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           while(!(_loc11_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 continue loop31;
                                                                                                                                 addr163:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr307:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.right);
                                                                                                                                 break loop32;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.left);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        continue loop29;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr312:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(4);
                                                                                                                  addr313:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc10_ || this))
                                                                                                                     {
                                                                                                                        break loop11;
                                                                                                                        addr321:
                                                                                                                     }
                                                                                                                     while(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§goto(addr222);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           continue loop19;
                                                                           §§goto(addr298);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                        }
                                                                        addr240:
                                                                        addr324:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                      }
                                                   }
                                                   addr273:
                                                }
                                                §§goto(addr313);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr307);
                                       }
                                       §§goto(addr321);
                                    }
                                 }
                              }
                           }
                           §§goto(addr260);
                        }
                     }
                     §§goto(addr441);
                  }
                  break;
               }
               §§push(int(§§pop()));
               if(_loc10_)
               {
                  §§goto(addr356);
               }
               §§goto(addr439);
            }
         }
         while(true)
         {
            this.§%Q§ = int.MIN_VALUE;
            if(_loc11_ && this)
            {
               continue;
            }
            if(_loc10_)
            {
               §§goto(addr51);
            }
            §§goto(addr71);
         }
         §§goto(addr75);
      }
      
      public function clear() : void
      {
      }
      
      public function §0t§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(this.§2!<§);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop13:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop14:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§pop();
                                             loop16:
                                             while(_loc4_ || param1)
                                             {
                                                §§push(param1);
                                                loop17:
                                                for(; !(_loc3_ && param1); while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§%Q§);
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr72:
                                                         if(_loc4_ || param2)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr82);
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + 50);
                                                               addr189:
                                                               while(true)
                                                               {
                                                               }
                                                               §§goto(addr72);
                                                            }
                                                            addr187:
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr136);
                                                   }
                                                })
                                                {
                                                   §§push(this.§6!3§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                      addr137:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(true);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr20:
                                                                           §§push(false);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 addr31:
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 addr82:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    §§goto(addr31);
                                                                                 }
                                                                              }
                                                                              while(!_loc3_)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              while(!(_loc3_ && this))
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop2;
                                                                              addr167:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr231:
                                                                           addr191:
                                                                           while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop16;
                                                                           }
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr20);
                                                                  }
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                              }
                           }
                           §§goto(addr231);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
   }
}
