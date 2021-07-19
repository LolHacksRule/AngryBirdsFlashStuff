package §,h§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   import §`j§.b2BodyDef;
   import §`j§.b2World;
   import §default§.§!A§;
   
   public class §4!9§ extends §9!@§
   {
      
      protected static const §-P§:Boolean = false;
      
      protected static const §,o§:Number = 2000;
      
      protected static const §+!]§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §4!9§)
         {
            §-P§ = false;
            while(true)
            {
               §,o§ = 2000;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §+!]§ = 0.2;
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §#!T§:Number;
      
      private var §]u§:Boolean = false;
      
      protected var §"!?§:int = 0;
      
      public function §4!9§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(!(_loc12_ || param2))
            {
               break;
            }
            addr56:
            if(!(_loc12_ || param2))
            {
               continue;
            }
            §2P§.mTryToScream = §0q§.§<!6§ + 1;
            §§goto(addr56);
         }
      }
      
      public function get §;J§() : Boolean
      {
         return this.§]u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§<!;§ = true;
            do
            {
               _loc3_.§?!'§ = 2;
            }
            while(_loc4_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§,!&§ < §+?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr108:
                     while(true)
                     {
                        §§push(Boolean(§69§()));
                     }
                  }
                  addr107:
               }
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§#!T§ = 0;
                        if(_loc3_)
                        {
                           §§goto(addr65);
                        }
                        addr19:
                        addr30:
                        while(true)
                        {
                           §§push(false);
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           §§goto(addr60);
                        }
                        return §§pop();
                     }
                     if(_loc2_ || this)
                     {
                        §§push(this);
                        §§push(this.§#!T§);
                        if(_loc2_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§#!T§ = §§pop();
                     }
                     loop5:
                     while(this.§#!T§ >= §,o§)
                     {
                        if(!_loc3_)
                        {
                           §§push(true);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr107);
                           }
                           return §§pop();
                           addr60:
                        }
                        else
                        {
                           addr65:
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 break loop5;
                              }
                              addr69:
                           }
                        }
                        §§goto(addr108);
                     }
                     while(true)
                     {
                        §§goto(addr19);
                     }
                     §§goto(addr65);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§]u§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     while(true)
                     {
                        if(§2!1§.toUpperCase() != "BIRD_WHITE")
                        {
                           §§push(§2!1§.toUpperCase() == "BIRD_YELLOW");
                           while(true)
                           {
                              §§push(§§pop());
                              loop27:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    addr269:
                                    loop28:
                                    while(true)
                                    {
                                       §§pop();
                                       addr270:
                                       while(true)
                                       {
                                          §§push(§2!1§.toUpperCase() == "BIRD_GREEN");
                                          continue loop28;
                                       }
                                    }
                                    addr269:
                                 }
                                 while(true)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop19:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr259:
                                                while(true)
                                                {
                                                   §§push(§2!1§.toUpperCase() == "BIRD_RED");
                                                }
                                             }
                                             addr258:
                                          }
                                          while(true)
                                          {
                                             addr237:
                                             §§push(§§pop());
                                             if(_loc4_ && this)
                                             {
                                                continue loop19;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop27;
                                             }
                                             if(!§§pop())
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§push(§2!1§.toUpperCase() == "BIRD_RED_BIG");
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop18;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            loop21:
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(!§2P§.mTryToFly)
                                                                  {
                                                                     addr203:
                                                                     break;
                                                                  }
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr211:
                                                                     §§push(true);
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc2_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     addr211:
                                                                  }
                                                                  continue loop25;
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               while(_loc5_ || this)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(§2P§.mTryToSpecial)
                                                                        {
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §2P§.mTryToSpecial = false;
                                                                                    loop5:
                                                                                    while(_loc5_ || this)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§2P§.mIsSpecial)
                                                                                          {
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §2P§.mIsSpecial = false;
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   addr161:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ && _loc2_)
                                                                                                      {
                                                                                                         break loop6;
                                                                                                      }
                                                                                                      if(!§2P§.mTryToSpecial)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §2P§.mTryToSpecial = true;
                                                                                                            addr174:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr105:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr29);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr148:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr269);
                                                                                                                  }
                                                                                                                  §§goto(addr270);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr171:
                                                                                                      }
                                                                                                      §§goto(addr105);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             §§goto(addr223);
                                                                                          }
                                                                                          §§goto(addr29);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       break loop4;
                                                                                    }
                                                                                    addr295:
                                                                                 }
                                                                              }
                                                                              §§goto(addr148);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              §§goto(addr297);
                                                                           }
                                                                           addr296:
                                                                        }
                                                                        §§goto(addr29);
                                                                     }
                                                                     §§goto(addr161);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            addr191:
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          continue loop27;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr295);
                     }
                     addr291:
                  }
                  §§goto(addr297);
               }
               addr29:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        continue loop30;
                     }
                     continue loop3;
                  }
                  addr52:
                  while(true)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           continue loop6;
                        }
                        continue loop4;
                     }
                     continue loop10;
                  }
                  §§goto(addr269);
               }
               return §§pop();
            }
         }
         §§goto(addr291);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            §§push(Boolean(§?!7§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr347:
                        while(true)
                        {
                           §§push(§,!&§ == §+?§);
                        }
                     }
                     addr346:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§2P§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §2P§.mTryToFly = false;
                                    loop7:
                                    while(true)
                                    {
                                       if(§2P§.mIsFlying)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §2P§.mIsFlying = false;
                                                      loop17:
                                                      for(; !_loc4_; _loc2_ = §§pop(),if(_loc4_ && this)
                                                      {
                                                         continue;
                                                      },if(_loc4_)
                                                      {
                                                         continue loop7;
                                                      },if(_loc5_ || _loc2_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr24);
                                                               }
                                                               addr70:
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr208);
                                                      },§§goto(addr161))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(true);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr198:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§-P§);
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §8f§();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr98:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                         addr217:
                                                                                                      }
                                                                                                      §§goto(addr98);
                                                                                                   }
                                                                                                   addr208:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr138:
                                                                                                   §§push(!§@m§());
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                               addr160:
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(!§>1§());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr119:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr323:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§2P§.mTryToFly)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §2P§.mTryToFly = true;
                                                                                                                              addr339:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 addr315:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    addr316:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    continue loop33;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr326:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§2!1§.toUpperCase() != "BIRD_GREEN")
                                                                                                                           {
                                                                                                                              §§push(§2!1§.toUpperCase() == "BIRD_WHITE");
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 addr227:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 while(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr237:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr227);
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                              addr225:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(param1);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(this.§]u§)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                       {
                                                                                                                                          addr268:
                                                                                                                                          §§push(2);
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr282:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(360);
                                                                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr302:
                                                                                                                                                      addr301:
                                                                                                                                                      §§push(§§pop() / 1000);
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr311:
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §5K§(§%4§() - _loc3_);
                                                                                                                                                         addr245:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr98);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr312:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr311);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr302);
                                                                                                                                             }
                                                                                                                                             §§goto(addr301);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr302);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr282);
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr302);
                                                                                                                                 }
                                                                                                                                 §§goto(addr268);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr339);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr347);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr245);
                                                                                                                  §§goto(addr160);
                                                                                                               }
                                                                                                            }
                                                                                                            addr153:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop23:
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               loop11:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §5K§(0);
                                                                                                                  addr133:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        break loop23;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr98);
                                                                                                            addr128:
                                                                                                         }
                                                                                                         §§goto(addr251);
                                                                                                      }
                                                                                                      §§goto(addr228);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr312);
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr98);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      continue loop6;
                                                      addr91:
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr24);
                                    }
                                 }
                                 §§goto(addr316);
                              }
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr323);
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§86§ = §7?§.§4!H§;
         if(!_loc8_)
         {
            §§push(§,!&§ < §+?§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr78:
                     do
                     {
                        §§push(§?!7§() == null);
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc7_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  _loc1_.§-M§(this);
                  if(_loc7_ || this)
                  {
                     _loc1_.§+"§ = false;
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               §§push(x * §86§.§7!4§);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §86§.§7!4§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!(_loc8_ && _loc2_))
               {
                  addr535:
                  if(_loc1_.§+"§)
                  {
                     addr560:
                     _loc1_.particles.addParticle(§7o§.§?!J§,§<2§.§&!H§,§7o§.§4;§,_loc2_,_loc3_,-1,"",§7o§.§]!4§);
                     _loc1_.§+"§ = false;
                     this.§"!?§ = 0;
                     addr554:
                     addr536:
                     addr558:
                     addr557:
                     addr556:
                     addr555:
                     addr542:
                     addr540:
                     addr538:
                     addr532:
                     addr527:
                     addr561:
                     §§push(§1b§() > §#K§.§ true§);
                     if(!(_loc8_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           addr289:
                           if(!(_loc8_ && _loc1_))
                           {
                              §§pop();
                              addr297:
                              if(!_loc8_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(Math.random() < §+!]§);
                                          if(_loc7_)
                                          {
                                             §§goto(addr236);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr514);
                                    }
                                    §§goto(addr475);
                                 }
                                 §§goto(addr460);
                              }
                              §§goto(addr443);
                           }
                           §§goto(addr535);
                        }
                        addr236:
                        if(§§pop())
                        {
                           addr238:
                           if(_loc7_)
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr260:
                                    _loc5_ = -Math.PI / 2;
                                    addr261:
                                    addr257:
                                    addr259:
                                    if(!_loc8_)
                                    {
                                       §§push(Number(Math.random()));
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_ || _loc2_)
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                _loc6_ = §§pop();
                                                addr212:
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         §§push(_loc1_.particles);
                                                         if(!(_loc8_ && _loc1_))
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§7o§.§8!I§);
                                                               if(!_loc8_)
                                                               {
                                                                  addr338:
                                                                  §§push(§<2§.§]!X§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§7o§.§%u§);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§pop().addParticle(§§pop(),§§pop(),§§pop(),§?!7§().GetPosition().x,§?!7§().GetPosition().y,1250,"",§7o§.§3E§(§2!1§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc8_ && _loc3_)
                                                                                 {
                                                                                    §§goto(addr238);
                                                                                 }
                                                                                 §§goto(addr103);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        §§goto(addr554);
                                                                     }
                                                                     addr342:
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        addr502:
                                                                        §§push(_loc2_);
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!(_loc8_ && _loc1_))
                                                                              {
                                                                                 §§push(-1);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push("");
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             §§push(§7o§.§]!4§);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                   addr399:
                                                                                                   §§goto(addr554);
                                                                                                }
                                                                                                §§goto(addr560);
                                                                                             }
                                                                                             addr514:
                                                                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr560);
                                                                                             }
                                                                                             §§goto(addr536);
                                                                                          }
                                                                                          §§goto(addr558);
                                                                                       }
                                                                                       addr512:
                                                                                       §§goto(addr514);
                                                                                       §§push(§7o§.§]!4§);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 addr511:
                                                                                 §§goto(addr512);
                                                                                 §§push("");
                                                                              }
                                                                              §§goto(addr556);
                                                                           }
                                                                           addr510:
                                                                           §§goto(addr511);
                                                                           §§push(-1);
                                                                        }
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§goto(addr510);
                                                                           §§push(_loc3_);
                                                                        }
                                                                        §§goto(addr555);
                                                                     }
                                                                     §§goto(addr502);
                                                                     §§push(_loc2_);
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr342);
                                                                     §§push(§7o§.§4;§);
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr342);
                                                                     §§push(§7o§.§4;§);
                                                                  }
                                                                  §§goto(addr542);
                                                               }
                                                               addr322:
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§goto(addr338);
                                                                     §§push(§<2§.§&!H§);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               §§goto(addr338);
                                                               §§push(§<2§.§&!H§);
                                                            }
                                                            §§goto(addr538);
                                                         }
                                                         addr319:
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr322);
                                                            §§push(_loc4_);
                                                         }
                                                         §§goto(addr322);
                                                         §§push(§7o§.§7!+§);
                                                      }
                                                      §§goto(addr532);
                                                   }
                                                   addr459:
                                                   addr449:
                                                   §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL2);
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc4_ = §§pop();
                                                   addr400:
                                                   §§push(this);
                                                   §§push(this.§"!?§ + 1);
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      §§push(§§pop() % 3);
                                                   }
                                                   §§pop().§"!?§ = §§pop();
                                                   §§goto(addr319);
                                                   §§push(_loc1_.particles);
                                                   addr416:
                                                   addr460:
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr399);
                                 }
                                 addr489:
                                 if(!_loc8_)
                                 {
                                    §§goto(addr319);
                                    §§push(_loc1_.particles);
                                 }
                                 §§goto(addr527);
                              }
                              addr433:
                              §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL3);
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    addr440:
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       addr443:
                                       §§goto(addr400);
                                    }
                                    §§goto(addr459);
                                 }
                                 addr474:
                                 _loc4_ = §§pop();
                                 addr475:
                                 if(_loc7_ || _loc1_)
                                 {
                                    addr448:
                                    addr447:
                                    if(this.§"!?§ == 1)
                                    {
                                       §§goto(addr449);
                                    }
                                    §§push(this.§"!?§);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(2);
                                       if(_loc7_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr433);
                                          }
                                          §§goto(addr459);
                                       }
                                       §§goto(addr448);
                                    }
                                    §§goto(addr447);
                                 }
                                 §§goto(addr561);
                              }
                              §§goto(addr440);
                           }
                           §§goto(addr416);
                        }
                        addr103:
                        return;
                     }
                     §§goto(addr289);
                  }
                  if(§ !I§ > 1)
                  {
                     §§goto(addr489);
                  }
                  §§push(§7o§.PARTICLE_NAME_BIRD_TRAIL1);
                  if(_loc7_ || _loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr474);
               }
               §§goto(addr560);
            }
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§2P§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_ || this)
               {
                  addr45:
               }
               else
               {
                  addr70:
               }
               return;
            }
            if(!(_loc2_ && this))
            {
               § !=§(§!A§.§-!4§);
            }
            §§goto(addr70);
         }
         §§goto(addr45);
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§]u§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     § !=§(§!A§.§2'§);
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           if(_loc2_)
                           {
                              §§push(false);
                           }
                           else
                           {
                              addr89:
                           }
                           this.§]u§ = true;
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!(_loc2_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           continue;
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr89);
            }
            return §§pop();
         }
         §§goto(addr89);
      }
      
      private function § !L§(param1:int) : int
      {
         return Math.min(§7?§.§4!H§.§"w§,param1);
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§'!+§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc10_ && _loc3_))
         {
            §§push(this.§ !L§(_loc3_));
            if(_loc9_ || param1)
            {
               §§push(int(§§pop()));
               if(_loc9_ || this)
               {
                  _loc3_ = §§pop();
                  addr61:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(!(_loc10_ && param1))
                  {
                     if(!(_loc10_ && this))
                     {
                        if(_loc9_ || param1)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(-§2P§.mW);
                              if(_loc9_ || this)
                              {
                                 §§push(§86§.§7!4§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop3:
                                    while(_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          loop5:
                                          while(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc10_)
                                             {
                                                _loc7_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(Math.random() * -_loc7_);
                                                }
                                                addr312:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                §§push(2);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop9:
                                                   while(!_loc10_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr323:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            addr324:
                                                            while(true)
                                                            {
                                                               §§push(-§2P§.mH);
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(§86§.§7!4§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              addr188:
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr217:
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       addr269:
                                                                                       addr269:
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr279:
                                                                                             §§push(Number(§§pop()));
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr258:
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 break loop5;
                                                                              }
                                                                              addr356:
                                                                           }
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Math.random() * (720 / _loc3_));
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop9;
                                                                                 }
                                                                                 break loop5;
                                                                              }
                                                                              addr337:
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                        addr328:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr312);
                                                                  }
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            _loc8_ = §§pop();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               param1.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x + _loc7_,§?!7§().GetPosition().y + _loc8_,1500,"",§7o§.§3E§(§2!1§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                               addr140:
                                                               while(true)
                                                               {
                                                                  _loc5_++;
                                                                  addr96:
                                                                  while(_loc10_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      break loop3;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop1;
                                          }
                                          addr306:
                                       }
                                       §§goto(addr323);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr356);
                                    }
                                 }
                              }
                              §§goto(addr306);
                           }
                        }
                        §§goto(addr324);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr96);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr328);
            }
            return;
         }
         §§goto(addr61);
      }
      
      override public function addDamageParticles(param1:§<2§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc10_)
         {
            if(§>1§())
            {
               if(_loc9_)
               {
                  return;
               }
            }
            if(param2 < 6)
            {
               if(_loc9_ || _loc3_)
               {
                  return;
               }
            }
         }
         §§push(§1b§() / 10);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_ || _loc3_)
            {
               addr82:
               §§push(§§pop() * §'!+§(false));
               if(!(_loc10_ && _loc3_))
               {
                  addr78:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:* = Number(90);
               if(_loc9_)
               {
                  §§push(param2);
                  loop0:
                  while(true)
                  {
                     §§push(scale * scale);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop3:
                           while(true)
                           {
                              param2 = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(3 + param2 / 20);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(int(§§pop()));
                                       while(!(_loc10_ && this))
                                       {
                                          _loc4_ = §§pop();
                                          loop9:
                                          while(!(_loc10_ && _loc3_))
                                          {
                                             _loc4_ = §§pop();
                                             while(_loc9_)
                                             {
                                                continue loop9;
                                                _loc6_ = §§pop();
                                                if(!(_loc9_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                addr404:
                                                if(_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§ !L§(_loc4_));
                                                      continue loop5;
                                                      §§goto(addr404);
                                                   }
                                                   addr461:
                                                }
                                                §§push(0);
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop9;
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc9_)
                                                   {
                                                      §§push(_loc4_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop() / 3)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                               }
                                                               addr327:
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr327);
                                                                  addr115:
                                                               }
                                                            }
                                                            addr328:
                                                         }
                                                         else
                                                         {
                                                            addr368:
                                                            §§push(Number(_loc5_ + Math.random() * (720 / _loc4_)));
                                                         }
                                                         addr376:
                                                         _loc5_ = §§pop();
                                                         addr377:
                                                         param1.addParticle(§7o§.§39§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                         addr363:
                                                         _loc6_++;
                                                         continue loop11;
                                                      }
                                                   }
                                                   §§goto(addr327);
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr461);
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
   }
}
