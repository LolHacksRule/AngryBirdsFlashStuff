package §<!o§
{
   import §'4§.§^g§;
   import §+!a§.§>8§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import flash.geom.Rectangle;
   
   public class §[4§ extends §!!q§
   {
       
      
      protected var §12§:Number = 1.0;
      
      protected var §>!<§:Number = 1.0;
      
      protected var §="#§:Number = 1.0;
      
      protected var § do§:Number = 1.0;
      
      protected var §&l§:Boolean = false;
      
      protected var §4!n§:Number = 0.0;
      
      protected var §5q§:Number = 0.0;
      
      protected var §8!>§:Number = 0.0;
      
      public function §[4§(param1:§>8§, param2:Sprite, param3:§,C§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param2,param3,param4);
         }
         while(true)
         {
            this.§12§ = param1.§>>§;
            while(!_loc6_)
            {
               this.§>!<§ = param1.§[!&§;
               while(!(_loc6_ && param3))
               {
                  this.§="#§ = param1.§9"-§;
                  do
                  {
                     this.§ do§ = param1.scaleSpeed;
                  }
                  while(!_loc5_);
                  
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get zDistance() : Number
      {
         return §"!P§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(§§pop() - 1);
            if(_loc5_ || param2)
            {
               addr32:
               §§push(this.zDistance);
               if(!_loc6_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     addr56:
                     §§push(§§pop() * this.§ do§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:Number = §=T§ + _loc3_;
                  return Math.ceil(§^g§.§6!9§ / (param2 * _loc4_)) * 2;
               }
            }
            §§goto(addr56);
         }
         §§goto(addr32);
      }
      
      public function §+8§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            if(!this.§&l§)
            {
               loop0:
               while(true)
               {
                  this.§&l§ = true;
                  addr93:
                  while(true)
                  {
                     this.§4!n§ = param1;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(param4);
         if(!(_loc12_ && param3))
         {
            §§push(param3);
            if(_loc11_ || param1)
            {
               addr40:
               §§push(§§pop() / §§pop());
               if(_loc11_)
               {
                  §§push(param6);
               }
               var _loc8_:* = §§pop();
               §§push(param5);
               if(!_loc12_)
               {
                  §§push(param3);
                  if(_loc11_ || param3)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc12_)
                     {
                        addr56:
                        §§push(§§pop() / param7);
                        if(!_loc12_)
                        {
                           addr59:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc9_:* = §§pop();
                     §§push(param2);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     if(!_loc12_)
                     {
                        §§push(param1);
                        if(!_loc12_)
                        {
                           §§push(_loc8_);
                           loop0:
                           while(true)
                           {
                              §§push(2);
                              addr188:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc12_ && param3))
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr207:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr209:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc11_ || param2)
                                          {
                                             §§push(_loc9_);
                                             if(!_loc12_)
                                             {
                                                continue loop0;
                                             }
                                             addr161:
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc11_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr56);
               }
               §§goto(addr59);
            }
            §§push(§§pop() / §§pop());
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr40);
      }
      
      private function §%!w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         §§push(param1);
         if(_loc16_)
         {
            §§push(this.§8!>§);
            if(!_loc17_)
            {
               §§push(§§pop() - §§pop());
               if(_loc16_)
               {
                  addr26:
                  §§push(Number(§§pop()));
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!(_loc17_ && param1))
            {
               §§push(this.zDistance);
               if(_loc16_ || param2)
               {
                  addr63:
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || param3)
                  {
                     §§push(this.§ do§);
                  }
                  var _loc7_:Number = §§pop();
                  var _loc8_:Number = §=T§ + _loc7_;
                  if(!(_loc17_ && param2))
                  {
                     §]!$§.scaleX = _loc8_ / param1;
                     loop0:
                     while(true)
                     {
                        §]!$§.scaleY = _loc8_ / param1;
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
                                 §§push(this.§4!n§);
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc17_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_)
                                       {
                                          param2 = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             if(!_loc16_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(param3);
                                             if(!_loc17_)
                                             {
                                                §§push(this.§5q§);
                                                if(_loc16_ || param3)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc17_ && param1)
                                                   {
                                                   }
                                                   addr179:
                                                   var _loc9_:* = §§pop();
                                                   §§push(param3);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() * this.zDistance);
                                                      if(!_loc17_)
                                                      {
                                                         addr188:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(-§<!f§);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(§§pop() * (§=T§ + _loc7_ * 2));
                                                         if(!(_loc17_ && param3))
                                                         {
                                                            §§push(0 * (§=T§ + _loc7_));
                                                            if(!(_loc17_ && this))
                                                            {
                                                               §§push(§§pop() * 2);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               addr229:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(§8>§ * (§=T§ + _loc7_ * 2));
                                                         if(_loc16_)
                                                         {
                                                            §§push(0 * (§=T§ + _loc7_));
                                                            if(_loc16_ || param2)
                                                            {
                                                               §§push(§§pop() * 2);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               addr267:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            var _loc13_:Number = Math.max(param4,param5);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(param4);
                                                               if(_loc16_ || param2)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           param4 = §§pop();
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              §§push(param5);
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       addr336:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr339:
                                                                                          param5 = §§pop();
                                                                                          addr340:
                                                                                          §§push(_loc11_);
                                                                                          if(_loc16_ || param1)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                addr351:
                                                                                                §§push(§§pop() * this.§12§);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr356:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr359:
                                                                                                      §§push(0.5);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr362:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(§@f§ * param4);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr382:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc17_ && param3))
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  §§push(_loc8_);
                                                                                                               }
                                                                                                               var _loc14_:Number = §§pop();
                                                                                                               §§push(_loc12_);
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§>!<§);
                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(0.5);
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              addr416:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§9r§ * param5);
                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       addr438:
                                                                                                                                       §§push(§§pop() / _loc8_);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          addr441:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc15_:* = §§pop();
                                                                                                                                    if(!(_loc17_ && param2))
                                                                                                                                    {
                                                                                                                                       §]!$§.x = _loc14_ / param1 * §=T§;
                                                                                                                                    }
                                                                                                                                    loop6:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §]!$§.y = _loc15_ / param1 * §=T§;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §]!$§.pivotX = -§;o§;
                                                                                                                                          while(_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                             §]!$§.pivotY = -§+!H§;
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr438);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr382);
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr382);
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                break;
                                             }
                                             if(!(_loc16_ || param3))
                                             {
                                                continue loop3;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!(_loc17_ && this))
                                             {
                                                param3 = §§pop();
                                                if(!_loc16_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc16_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(param2);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(this.zDistance);
                                                         break loop4;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                          addr170:
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_ || this)
                                          {
                                             break loop2;
                                          }
                                          §§goto(addr179);
                                       }
                                       break loop2;
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr170);
                              }
                           }
                           §§goto(addr179);
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§push(§§pop() * §§pop());
               if(_loc17_ && param2)
               {
               }
            }
            §§goto(addr63);
         }
         §§goto(addr26);
      }
      
      private function §7"<§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §]!$§.scaleX = §=T§;
            while(true)
            {
               addr50:
               while(true)
               {
                  §]!$§.scaleY = §=T§;
               }
            }
            addr58:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc10_ && param3))
            {
               §§push(this.§4!n§);
               if(_loc9_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc9_)
                  {
                     addr35:
                     §§push(Number(§§pop()));
                     if(_loc9_ || param1)
                     {
                        addr43:
                        param1 = §§pop();
                        if(!_loc9_)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           if(true)
                           {
                              §§push(param1);
                              if(!_loc10_)
                              {
                                 addr64:
                                 §§push(§§pop() * this.zDistance);
                                 if(!_loc9_)
                                 {
                                 }
                                 break;
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr50);
                     }
                     break;
                  }
                  §§goto(addr43);
               }
               §§goto(addr64);
            }
            §§goto(addr35);
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(_loc9_ || param3)
         {
            §§push(§§pop() / 2);
            if(!(_loc10_ && param1))
            {
               §§push(§&"'§ / 2);
               if(!_loc10_)
               {
                  §§push(§§pop() * §=T§);
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(param3);
               if(_loc9_)
               {
                  §§push(-§§pop());
                  if(!(_loc10_ && this))
                  {
                     addr119:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc5_);
                  if(!(_loc10_ && param3))
                  {
                     §§push(§§pop() - _loc4_);
                     if(!(_loc10_ && param1))
                     {
                        §§push(§§pop() - §;o§);
                        if(!_loc9_)
                        {
                        }
                        §§goto(addr143);
                     }
                     §§push(Number(§§pop()));
                  }
                  addr143:
                  var _loc7_:* = §§pop();
                  §§push(_loc6_);
                  if(_loc9_)
                  {
                     §§push(§§pop() - §+!H§);
                     if(!(_loc10_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc9_)
                  {
                     §]!$§.x = _loc7_;
                     do
                     {
                        §]!$§.y = _loc8_;
                     }
                     while(!_loc9_);
                     
                  }
                  return;
               }
               §§goto(addr119);
            }
         }
         §§goto(addr106);
      }
      
      override protected function initializePivotFromTexture(param1:§'!"§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §+!H§ = param1.pivotY;
            while(true)
            {
               §;o§ = param1.pivotX;
            }
            addr72:
         }
         loop1:
         while(true)
         {
            §8>§ = param1.height;
            while(!_loc2_)
            {
               §<!f§ = param1.width;
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop1;
               }
               §§goto(addr72);
            }
         }
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = param1.§0!L§;
         if(_loc4_ || _loc2_)
         {
            §+!H§ = 0;
            loop0:
            while(true)
            {
               if(§2a§)
               {
                  continue;
               }
               §;o§ = 0;
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  loop3:
                  while(!(_loc3_ && param1))
                  {
                     §<!f§ = _loc2_.width;
                     if(!_loc3_)
                     {
                        addr40:
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              addr53:
                              while(true)
                              {
                                 §8>§ = _loc2_.height;
                                 continue loop3;
                              }
                              §§goto(addr40);
                           }
                           addr100:
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr53);
         }
      }
   }
}
