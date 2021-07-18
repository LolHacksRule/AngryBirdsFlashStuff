package §@"2§
{
   import §"!&§.§]!C§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§!!t§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §@!U§.§18§;
   import §@!U§.§8!`§;
   import §]">§.*;
   
   public class §@!4§
   {
      
      protected static const §4"<§:Number = 1.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4"<§ = 1.3;
         }
      }
      
      protected var §^"6§:Vector.<§1p§>;
      
      protected var §0!8§:§8!`§;
      
      public function §@!4§(param1:b2World)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^"6§ = new Vector.<§1p§>();
         }
         while(true)
         {
            super();
            while(!_loc3_)
            {
               this.§0!8§ = new §8!`§(param1);
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§^"6§ = null;
         }
      }
      
      public function get §-!y§() : int
      {
         return this.§^"6§.length;
      }
      
      public function §4`§(param1:int) : §1p§
      {
         return this.§^"6§[param1];
      }
      
      public function §,"C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§]!C§, param6:Sprite, param7:§#r§, param8:Number, param9:Boolean) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(§§findproperty(§1p§));
         §§push(param1);
         §§push(param2);
         §§push(param3);
         if(!(_loc12_ && param1))
         {
            §§push(§§pop() / 180);
            if(_loc11_ || param3)
            {
               §§push(§§pop() * Math.PI);
            }
         }
         var _loc10_:§1p§ = new §§pop().§1p§(§§pop(),§§pop(),§§pop(),param4,param5,param6,param7,param8,param9);
         if(!(_loc12_ && this))
         {
            this.§^"6§.push(_loc10_);
         }
      }
      
      public function §<"<§(param1:Number, param2:§&"4§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§1p§ = null;
         var _loc3_:* = int(this.§^"6§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§^"6§[_loc3_];
            if(!_loc6_)
            {
               if(!this.§>!=§(_loc4_,param1,param2))
               {
                  addr82:
                  while(true)
                  {
                     this.§&'§(_loc3_,param2);
                     addr86:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           addr46:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr82:
               }
               else
               {
                  _loc4_.render();
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr82);
         }
      }
      
      protected function §&'§(param1:int, param2:§&"4§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§1p§ = null;
         var _loc4_:* = null;
         if(!(_loc6_ && param2))
         {
            if(param1 >= 0)
            {
               addr32:
               _loc3_ = this.§^"6§[param1];
               if(!(_loc6_ && param1))
               {
                  if(_loc3_)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc3_.sprite.parent)
                        {
                           while(true)
                           {
                              _loc3_.sprite.parent.removeChild(_loc3_.sprite);
                              addr149:
                              while(true)
                              {
                              }
                           }
                           addr143:
                        }
                        while(true)
                        {
                           §§push(_loc3_.§4!i§);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(_loc5_ || param2)
                              {
                                 §§push(_loc4_ = §§pop());
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_ || param2)
                              {
                                 while(true)
                                 {
                                    param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§-%§.§;!J§,false,true,false,1,true);
                                 }
                                 addr107:
                              }
                              while(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr143);
                                 }
                                 addr59:
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_)
                                    {
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             _loc3_.dispose();
                                             while(true)
                                             {
                                                addr46:
                                                while(true)
                                                {
                                                   this.§^"6§.splice(param1,1);
                                                   if(!(_loc5_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr59);
                                                }
                                             }
                                          }
                                          addr80:
                                       }
                                       §§goto(addr150);
                                    }
                                    continue loop0;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr80);
                        }
                     }
                  }
                  §§goto(addr46);
               }
               §§goto(addr107);
            }
            addr150:
            return;
         }
         §§goto(addr32);
      }
      
      protected function §>!=§(param1:§1p§, param2:Number, param3:§&"4§) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:§18§ = null;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc4_:* = true;
         loop0:
         while(true)
         {
            §§push(param2);
            loop1:
            while(true)
            {
               if(§§pop() <= 0)
               {
                  if(_loc11_ || param1)
                  {
                     addr443:
                     §§push(Boolean(param3));
                     if(_loc11_ || param2)
                     {
                        if(§§pop())
                        {
                           if(_loc11_)
                           {
                              addr456:
                              §§pop();
                              if(!(_loc12_ && param3))
                              {
                                 addr464:
                                 §§push(param3.§;!W§(param1.x,param1.y));
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc12_)
                                    {
                                       addr480:
                                       if(§§pop())
                                       {
                                          if(_loc11_ || this)
                                          {
                                             addr488:
                                             §§push(false);
                                             if(_loc12_ && this)
                                             {
                                             }
                                             §§goto(addr508);
                                          }
                                          addr507:
                                          addr508:
                                          return §§pop();
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr507);
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr507);
                                 }
                              }
                              §§goto(addr507);
                           }
                           §§goto(addr508);
                        }
                        §§goto(addr480);
                     }
                     §§goto(addr456);
                  }
               }
               else
               {
                  §§push(Number(param1.x + param1.§""&§ * param2 / 1000));
                  loop2:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     while(true)
                     {
                        §§push(Number(param1.y + param1.§@6§ * param2 / 1000));
                        loop4:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(param2);
                              if(_loc12_)
                              {
                                 break;
                              }
                              if(_loc12_)
                              {
                                 continue loop4;
                              }
                              if(!_loc11_)
                              {
                                 continue loop2;
                              }
                              §§push(Number(§§pop()));
                              if(_loc12_ && param2)
                              {
                                 break;
                              }
                              _loc7_ = §§pop();
                              while(true)
                              {
                                 §§push(this.§0!8§);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().§3n§(param1.§+!I§(§4"<§),param1.§'!#§(§4"<§),_loc5_,_loc6_);
                                    if(_loc11_ || param1)
                                    {
                                       if(_loc12_)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§0!8§);
                                          if(!(_loc11_ || param1))
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       addr170:
                                       _loc8_ = §§pop().§4!w§(_loc9_);
                                       if(_loc11_ || this)
                                       {
                                          if(!param1.§#X§(_loc8_))
                                          {
                                             if(!(_loc12_ && param2))
                                             {
                                                addr363:
                                                §§push(param2);
                                                §§push(_loc8_.rayFraction);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(§§pop() * param2);
                                                }
                                                _loc7_ = Number(§§pop() - §§pop());
                                                if(_loc11_)
                                                {
                                                   addr346:
                                                   if(this.§@A§(_loc8_,param1,param2,param3))
                                                   {
                                                      §§push(param1.health);
                                                      if(_loc11_ || param1)
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            if(§§pop() == 0)
                                                            {
                                                               if(!(_loc12_ && param2))
                                                               {
                                                                  addr313:
                                                                  §§push(0);
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr323:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           param2 = §§pop();
                                                                           addr331:
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              §§push(false);
                                                                              if(!(_loc11_ || param3))
                                                                              {
                                                                                 §§goto(addr346);
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              break;
                                                                              addr282:
                                                                           }
                                                                           addr348:
                                                                           §§push(Number(_loc7_));
                                                                        }
                                                                        param2 = §§pop();
                                                                        break;
                                                                        addr350:
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            addr224:
                                                            §§push(_loc9_);
                                                            if(!(_loc12_ && this))
                                                            {
                                                               §§push(this.§0!8§);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop().§0I§);
                                                                  if(_loc11_ || param3)
                                                                  {
                                                                     if(§§pop() == §§pop() - 1)
                                                                     {
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           addr264:
                                                                           param1.update(_loc7_);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 addr195:
                                                                                 §§push(0);
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr207:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             param2 = §§pop();
                                                                                             if(_loc12_ && this)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr182:
                                                                                                _loc9_++;
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(!(_loc12_ && param2))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr195);
                                                                                                      }
                                                                                                      addr381:
                                                                                                      if(_loc9_ < this.§0!8§.§0I§)
                                                                                                      {
                                                                                                         §§goto(addr170);
                                                                                                         §§push(this.§0!8§);
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr507);
                                                                                                   }
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                addr396:
                                                                                                §§push(0);
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   if(_loc12_ && param2)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr428:
                                                                                                   if(_loc10_ >= this.§0!8§.§0I§)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   _loc8_ = this.§0!8§.§4!w§(_loc10_);
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      param1.§'!§(_loc8_);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr427:
                                                                                                         _loc10_++;
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                §§goto(addr428);
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                        }
                                                                        §§goto(addr396);
                                                                     }
                                                                     §§goto(addr182);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr331);
                                                   addr379:
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr379);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr264);
                                    }
                                    break;
                                 }
                                 param1.§`! §();
                                 if(_loc11_ || param1)
                                 {
                                    §§goto(addr182);
                                 }
                                 §§goto(addr412);
                                 if(!(_loc11_ || param3))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr381);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr507);
            }
         }
      }
      
      protected function §@A§(param1:§18§, param2:§1p§, param3:Number, param4:§&"4§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            §§push(param2);
            §§push(param1.rayFraction);
            if(_loc7_ || param2)
            {
               §§push(§§pop() * param3);
            }
            §§pop().update(§§pop());
         }
         var _loc5_:§<!=§;
         §§push((_loc5_ = param1.§,;§) is § 6§);
         if(_loc7_ || param2)
         {
            if(§§pop())
            {
               if(_loc7_)
               {
                  this.§6i§(param1,param2,param4);
                  if(_loc7_ || param2)
                  {
                     §§push(true);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_.§^!z§());
                        loop1:
                        while(true)
                        {
                           §§pop().SetAwake(true);
                           loop2:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§%x§(_loc5_));
                                    loop4:
                                    while(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§3E§(_loc5_));
                                          if(_loc7_)
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop25:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(param2.§,H§);
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       loop8:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§0!O§(_loc5_));
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc7_ || this))
                                                                                                   {
                                                                                                      loop11:
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§?!o§(param1,param2,param4);
                                                                                                            if(_loc7_ || this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         if(!(_loc7_ || this))
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(_loc6_ && param3)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break loop5;
                                                                                                         }
                                                                                                         §§push(true);
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr152);
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc6_ && param2)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         addr152:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break loop6;
                                                                                                            }
                                                                                                            if(_loc6_ && param3)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            if(_loc7_ || this)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            addr301:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr302:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                                  addr275:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr276:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           break loop3;
                                                                                                                        }
                                                                                                                        addr250:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§^!z§());
                                                                                                                           if(_loc7_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr151:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr275);
                                                                                                   }
                                                                                                   §§goto(addr152);
                                                                                                }
                                                                                                §§goto(addr83);
                                                                                             }
                                                                                             §§goto(addr230);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             §§push(this.§`"-§(param1,param2,param4));
                                                                                             break loop6;
                                                                                          }
                                                                                          break loop3;
                                                                                       }
                                                                                       break loop4;
                                                                                       addr193:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              continue loop4;
                                                                              addr189:
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               addr303:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr304);
                                                               }
                                                            }
                                                            return §§pop();
                                                            addr226:
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr303);
                                                }
                                             }
                                             addr219:
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr250);
                                    }
                                    this.§&!_§(param1,param2,param4);
                                    addr230:
                                    return false;
                                 }
                                 addr278:
                                 if(!(_loc6_ && param3))
                                 {
                                    return §§pop();
                                 }
                                 addr306:
                                 return §§pop();
                                 §§push(true);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr288:
                              }
                              §§goto(addr301);
                           }
                        }
                     }
                  }
                  §§goto(addr306);
               }
               §§goto(addr151);
            }
            §§goto(addr288);
         }
         §§goto(addr219);
      }
      
      private function §6i§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§-!&§(param2.§-C§);
         var _loc5_:§1!0§;
         if(_loc5_ = param1.§,;§ as §1!0§)
         {
            if(!(_loc7_ && this))
            {
               _loc5_.§^!z§().ApplyImpulse(_loc4_,param1.§+6§);
               if(_loc7_ && param3)
               {
               }
               §§goto(addr86);
            }
            _loc5_.applyDamage(1,param3,null,false);
         }
         addr86:
      }
      
      private function §&!_§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§?!`§ = null;
         var _loc7_:b2Vec2 = null;
         if(_loc9_)
         {
            if(param3)
            {
               if(_loc9_ || this)
               {
                  §§push(param2.§,!E§);
                  if(!_loc8_)
                  {
                     §§push(int(§§pop()));
                     if(_loc9_)
                     {
                        §§push(_loc5_ = §§pop());
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        addr48:
                        param3.addScore(_loc5_,§!!t§.§#!L§,true,param2.x,param2.y - 3,§2!V§.§#!J§);
                     }
                  }
               }
               if(_loc6_ = param3.§@[§(param2.x,param2.y))
               {
                  if(!_loc8_)
                  {
                     _loc6_.§@k§ = true;
                  }
                  _loc7_ = _loc6_.§^!z§().GetPosition();
                  if(_loc9_)
                  {
                     param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
                     if(_loc8_)
                     {
                        §§goto(addr113);
                     }
                  }
                  return;
               }
            }
            addr113:
            var _loc4_:b2Vec2 = param1.normal;
            if(!(_loc8_ && param2))
            {
               this.§>R§(param2,_loc4_.x,_loc4_.y,param3);
            }
            return;
         }
         §§goto(addr48);
      }
      
      private function §`"-§(param1:§18§, param2:§1p§, param3:§&"4§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§1!0§ = param1.§,;§ as §1!0§;
         §§push(param2.§[!H§);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc8_ && param1))
         {
            if(_loc4_)
            {
               if(_loc9_)
               {
                  §§push(param2.§^^§(_loc4_));
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                     if(_loc9_ || this)
                     {
                        §§goto(addr100);
                     }
                     §§goto(addr106);
                  }
                  addr100:
                  _loc6_ = §§pop();
                  if(_loc9_)
                  {
                     addr103:
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc5_);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().applyDamage(§§pop(),param3,null);
                        if(!_loc9_)
                        {
                           break;
                        }
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc7_ = param1.normal;
                  if(!_loc8_)
                  {
                     this.§>R§(param2,_loc7_.x,_loc7_.y,param3);
                     if(_loc8_)
                     {
                        §§goto(addr136);
                     }
                  }
                  return false;
               }
               §§goto(addr103);
            }
            §§goto(addr42);
         }
         §§goto(addr77);
      }
      
      private function §?!o§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:§1!0§;
         if(_loc4_ = param1.§,;§ as §1!0§)
         {
            if(_loc8_)
            {
               §§push(param2.§,H§);
               if(!(_loc7_ && param2))
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc7_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc4_.defence);
                              while(true)
                              {
                                 §§push(§§pop() < 100000);
                                 §§goto(addr137);
                              }
                           }
                           §§goto(addr83);
                        }
                     }
                  }
               }
               addr137:
               §§goto(addr57);
            }
            §§goto(addr122);
         }
         addr57:
         loop1:
         for(; §§pop(); continue loop0)
         {
            while(true)
            {
               §§push(param2.§^^§(_loc4_));
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  _loc5_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(Number(Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health)));
                     if(!(_loc8_ || this))
                     {
                        break;
                     }
                     if(!_loc8_)
                     {
                        continue loop1;
                     }
                     _loc6_ = §§pop();
                     loop5:
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc6_);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().applyDamage(§§pop(),param3,null);
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                        continue loop4;
                     }
                  }
               }
               if(!(_loc7_ && this))
               {
                  addr83:
                  break loop1;
               }
            }
         }
      }
      
      private function §0!O§(param1:§<!=§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§^!z§().§=s§().§]w§());
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     §§push(true);
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr63);
               }
               §§push(false);
            }
            addr63:
            return §§pop();
         }
         §§goto(addr43);
      }
      
      private function §%x§(param1:§<!=§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`D§ = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1.levelItem is §`D§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr44:
                  _loc2_ = §`D§(param1.levelItem);
                  if(!(_loc3_ && this))
                  {
                     return _loc2_.§5">§;
                  }
               }
               return false;
            }
         }
         §§goto(addr44);
      }
      
      private function §3E§(param1:§<!=§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`D§ = null;
         if(_loc4_)
         {
            §§push(param1.levelItem is §`D§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  _loc2_ = §`D§(param1.levelItem);
                  addr29:
                  if(_loc4_)
                  {
                     §§push(_loc2_.§[X§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr63:
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(_loc2_.§5">§);
                                    if(_loc4_)
                                    {
                                       return Boolean(§§pop());
                                    }
                                 }
                                 else
                                 {
                                    addr83:
                                    return false;
                                    addr82:
                                 }
                              }
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         §§goto(addr29);
      }
      
      protected function §>R§(param1:§1p§, param2:Number, param3:Number, param4:§&"4§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(2);
         §§push(param2);
         if(!_loc10_)
         {
            §§push(§§pop() * Math.cos(param1.angle));
            if(!_loc10_)
            {
               addr27:
               §§push(param3);
               if(_loc9_)
               {
                  §§push(§§pop() * Math.sin(param1.angle));
               }
               §§push(§§pop() + §§pop());
            }
            §§push(§§pop() * §§pop());
            if(!(_loc10_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(Math.cos(param1.angle) - param2 * _loc5_);
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(Math.sin(param1.angle) - param3 * _loc5_);
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param1.§"E§);
            if(!(_loc10_ && param2))
            {
               §§push(§§pop());
            }
            var _loc8_:*;
            if(_loc8_ = §§pop())
            {
               if(!(_loc10_ && param2))
               {
                  param4.addObject(_loc8_,param1.x,param1.y,0,§-%§.§;!J§,false,true,false,1,true);
                  if(!_loc10_)
                  {
                     addr132:
                     param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
                  }
               }
               return;
            }
            §§goto(addr132);
         }
         §§goto(addr27);
      }
   }
}
