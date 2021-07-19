package §9#@§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §69§.§'U§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §^#>§.§#_§;
   import flash.geom.Rectangle;
   
   public class §3N§ extends §2"A§
   {
       
      
      protected var §[!r§:Number = 1.0;
      
      protected var §<#H§:Number = 1.0;
      
      protected var §3c§:Number = 1.0;
      
      protected var §^#8§:Number = 1.0;
      
      protected var §7!8§:Number = 0.0;
      
      protected var §0!Y§:Number = 0.0;
      
      protected var §3#,§:Number = 0.0;
      
      protected var §&P§:Number = 0.0;
      
      protected var §8!j§:Boolean = false;
      
      protected var §0"w§:Number = 0.0;
      
      protected var §'"J§:Number = 0.0;
      
      protected var §?3§:Number = 0.0;
      
      public function §3N§(param1:§'U§, param2:Sprite, param3:§7#5§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[!r§ = param1.§@"V§;
            loop0:
            while(true)
            {
               this.§<#H§ = param1.§="1§;
               loop1:
               while(true)
               {
                  this.§3c§ = param1.§0H§;
                  while(true)
                  {
                     this.§^#8§ = param1.scaleSpeed;
                     addr75:
                     if(!(_loc6_ && param3))
                     {
                        if(!_loc6_)
                        {
                           this.§0!Y§ = param1.velocityY;
                           while(!(_loc6_ && param2))
                           {
                              if(_loc5_)
                              {
                                 super(param1,param2,param3,param4);
                                 if(!(_loc6_ && param3))
                                 {
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr75);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§7!8§ = param1.velocityX;
                                    continue loop4;
                                 }
                                 addr90:
                              }
                           }
                           addr43:
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function get zDistance() : Number
      {
         return §6Y§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_ || param2)
         {
            §§push(§§pop() - 1);
            if(!_loc6_)
            {
               §§push(this.zDistance);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr42:
                     §§push(§§pop() * this.§^#8§);
                     if(!_loc6_)
                     {
                        addr45:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = §8"2§ + _loc3_;
                     var _loc5_:int = 0;
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§7!8§);
                        loop0:
                        while(true)
                        {
                           if(§§pop() != 0)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 _loc5_ = 1;
                              }
                              while(true)
                              {
                                 addr93:
                                 if(_loc7_)
                                 {
                                    _loc5_++;
                                 }
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           while(§;&§)
                           {
                              §§goto(addr93);
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr45);
               }
               §§goto(addr42);
            }
         }
         §§goto(addr42);
      }
      
      public function §'2§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(!this.§8!j§)
            {
               loop0:
               while(true)
               {
                  this.§8!j§ = true;
                  while(true)
                  {
                     this.§0"w§ = param1;
                     loop2:
                     while(!_loc4_)
                     {
                        this.§'"J§ = param2;
                        do
                        {
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                           this.§?3§ = param3;
                        }
                        while(!(_loc5_ || this));
                        
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(param4);
         if(!_loc12_)
         {
            §§push(param3);
            if(!(_loc12_ && param2))
            {
               §§push(§§pop() / §§pop());
               if(_loc11_)
               {
                  addr31:
                  §§push(§§pop() / param6);
                  if(_loc12_)
                  {
                  }
                  addr35:
                  var _loc8_:* = §§pop();
                  §§push(param5);
                  if(!(_loc12_ && this))
                  {
                     §§push(param3);
                     if(!_loc12_)
                     {
                        addr64:
                        §§push(§§pop() / §§pop());
                        if(!(_loc12_ && this))
                        {
                           §§push(param7);
                        }
                        var _loc9_:Number = §§pop();
                        §§push(param2);
                        if(!_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc10_:* = §§pop();
                        if(!(_loc12_ && this))
                        {
                           §§push(param1);
                           if(_loc11_ || param2)
                           {
                              §§push(_loc8_);
                              while(true)
                              {
                                 §§push(2);
                                 addr225:
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr226:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr227:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                              addr224:
                           }
                           while(true)
                           {
                              param1 = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc11_ || this)
                                 {
                                    §§push(_loc9_);
                                    if(!(_loc12_ && param3))
                                    {
                                       if(!(_loc12_ && param2))
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(2);
                                             if(!(_loc12_ && param3))
                                             {
                                                addr185:
                                                §§push(§§pop() + §§pop() / §§pop());
                                                if(!(_loc12_ && param1))
                                                {
                                                   addr193:
                                                   §§push(Number(§§pop()));
                                                }
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc12_ && param3))
                                                {
                                                   param2 = §§pop();
                                                   while(true)
                                                   {
                                                      this.§'2§(param1,param2,param3);
                                                      while(true)
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            if(§;&§)
                                                            {
                                                               this.§>"c§(param1,_loc8_,_loc10_);
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  §§goto(addr79);
                                                               }
                                                            }
                                                            continue;
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr135:
                                                      addr79:
                                                      return;
                                                      if(_loc12_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      this.§%"^§(param3,param1,param2,param6,param7);
                                                      §§goto(addr135);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr225);
                                             }
                                             §§goto(addr227);
                                          }
                                          else
                                          {
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr193);
                              }
                           }
                        }
                        §§goto(addr128);
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc12_ && param2)
                     {
                     }
                  }
                  §§goto(addr64);
               }
               §§goto(addr35);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr31);
      }
      
      private function §%"^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         §§push(param1);
         if(_loc17_ || this)
         {
            §§push(this.§?3§);
            if(_loc17_ || param3)
            {
               §§push(§§pop() - §§pop());
               if(_loc17_)
               {
                  addr37:
                  §§push(Number(§§pop()));
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!(_loc16_ && param2))
            {
               §§push(this.zDistance);
               if(!_loc16_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr56:
                     §§push(§§pop() * this.§^#8§);
                     if(!(_loc16_ && param1))
                     {
                        addr64:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     var _loc8_:Number = §8"2§ + _loc7_;
                     if(!_loc16_)
                     {
                        §%G§.scaleX = _loc8_ / param1;
                        loop0:
                        while(true)
                        {
                           §%G§.scaleY = _loc8_ / param1;
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param2);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§0"w§);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop4:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc17_)
                                          {
                                             param2 = §§pop();
                                             while(true)
                                             {
                                                §§push(param3);
                                                if(_loc16_ && param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc17_)
                                                   {
                                                      param3 = §§pop();
                                                      if(_loc17_)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(this.zDistance);
                                                                     break loop3;
                                                                  }
                                                               }
                                                               continue loop2;
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                addr104:
                                                continue loop4;
                                             }
                                             addr149:
                                             §§push(Number(§§pop()));
                                             break;
                                             addr127:
                                          }
                                          break;
                                       }
                                       addr150:
                                       var _loc9_:* = §§pop();
                                       §§push(param3);
                                       if(!(_loc16_ && param2))
                                       {
                                          §§push(§§pop() * this.zDistance);
                                          if(_loc17_ || param1)
                                          {
                                             addr169:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(-§6"?§);
                                          if(!(_loc16_ && param3))
                                          {
                                             §§push(§§pop() * (§8"2§ + _loc7_ * 2));
                                             if(_loc17_)
                                             {
                                                addr188:
                                                §§push(0 * (§8"2§ + _loc7_));
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§push(§§pop() * 2);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc17_ || param2)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc11_:* = §§pop();
                                             §§push(§[!4§ * (§8"2§ + _loc7_ * 2));
                                             if(_loc17_)
                                             {
                                                §§push(0 * (§8"2§ + _loc7_));
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(§§pop() * 2);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc16_ && param1))
                                                {
                                                   addr253:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc12_:* = §§pop();
                                                var _loc13_:Number = Math.max(param4,param5);
                                                if(_loc17_)
                                                {
                                                   §§push(param4);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(_loc13_);
                                                      if(_loc17_ || param2)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc17_ || param2)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc17_ || param1)
                                                            {
                                                               param4 = §§pop();
                                                               if(_loc17_ || this)
                                                               {
                                                                  addr298:
                                                                  §§push(param5);
                                                                  if(_loc17_ || param2)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        addr314:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              param5 = §§pop();
                                                                              addr326:
                                                                              §§push(_loc11_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr329:
                                                                                 §§push(_loc9_);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr332:
                                                                                    §§push(§§pop() * this.§[!r§);
                                                                                    if(_loc17_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr345:
                                                                                          §§push(0.5);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr356:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr351:
                                                                                                §§push(_loc8_);
                                                                                             }
                                                                                             var _loc14_:Number = §§pop();
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc16_ && param1))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§<#H§);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc17_ || this)
                                                                                                      {
                                                                                                         addr381:
                                                                                                         §§push(0.5);
                                                                                                         if(_loc17_ || param2)
                                                                                                         {
                                                                                                            addr389:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               addr398:
                                                                                                               §§push(§§pop() / _loc8_);
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr402:
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               if(!(_loc16_ && param1))
                                                                                                               {
                                                                                                                  §%G§.x = (_loc14_ * §8"2§ + §2x§ * param4) / param1;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §%G§.y = (_loc15_ * §8"2§ + §+"v§ * param5) / param1;
                                                                                                                     addr446:
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        §%G§.pivotY = -§=!C§ + this.§&P§;
                                                                                                                        addr453:
                                                                                                                        if(_loc16_ && param3)
                                                                                                                        {
                                                                                                                           while(!(_loc16_ && param3))
                                                                                                                           {
                                                                                                                              §§goto(addr446);
                                                                                                                              §§goto(addr453);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §%G§.pivotX = -§%!<§ + this.§3#,§;
                                                                                                                              §§goto(addr439);
                                                                                                                           }
                                                                                                                           addr439:
                                                                                                                           addr466:
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr466);
                                                                                                            }
                                                                                                            §§goto(addr402);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr398);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§goto(addr356);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr356);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr169);
                                    }
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc16_)
                                 {
                                    §§goto(addr149);
                                 }
                                 §§goto(addr150);
                              }
                           }
                        }
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr37);
      }
      
      private function §>"c§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param1)
         {
            §%G§.scaleX = §8"2§;
            loop0:
            while(true)
            {
               addr48:
               while(true)
               {
                  §%G§.scaleY = §8"2§;
                  continue loop0;
               }
            }
         }
         §§goto(addr46);
      }
      
      override protected function initializePivotFromTexture(param1:§8!W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=!C§ = param1.pivotY;
            loop0:
            while(true)
            {
               §%!<§ = param1.pivotX;
               loop1:
               do
               {
                  §[!4§ = param1.height;
                  while(_loc3_)
                  {
                     §6"?§ = param1.width;
                     if(!(_loc2_ && this))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc2_);
               
            }
         }
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = param1.§@"&§;
         if(!(_loc4_ && _loc2_))
         {
            §=!C§ = 0;
            do
            {
               if(!§;&§)
               {
                  §%!<§ = 0;
                  loop1:
                  do
                  {
                     if(_loc3_ || this)
                     {
                        loop2:
                        while(true)
                        {
                           §[!4§ = _loc2_.height;
                           while(_loc3_ || _loc2_)
                           {
                              §6"?§ = _loc2_.width;
                              if(_loc3_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           addr109:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr109);
                  }
                  while(!_loc3_);
                  
                  continue;
               }
               while(true)
               {
                  §%!<§ = -_loc2_.left;
               }
            }
            while(_loc4_ && this);
            
            return;
         }
         §§goto(addr109);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§7!8§ != 0)
            {
               if(_loc3_)
               {
                  addr100:
                  §§push(this);
                  §§push(this.§3#,§);
                  if(!_loc2_)
                  {
                     §§push(this.§7!8§);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() * param1);
                        if(!_loc2_)
                        {
                           §§push(§§pop() / 1000);
                        }
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§3#,§ = §§pop();
               }
               while(true)
               {
                  §§push(this.§3#,§);
                  while(true)
                  {
                     if(§§pop() < -§,,§)
                     {
                        this.§3#,§ += §,,§;
                        break;
                     }
                     if(!(_loc2_ && param1))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§3#,§);
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           if(§§pop() <= §,,§)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr44);
                              }
                           }
                           else
                           {
                              §§push(this);
                              §§push(this.§3#,§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() - §,,§);
                              }
                              §§pop().§3#,§ = §§pop();
                           }
                           addr83:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     §§goto(addr83);
                  }
               }
            }
            addr44:
            return;
         }
         §§goto(addr100);
      }
   }
}
