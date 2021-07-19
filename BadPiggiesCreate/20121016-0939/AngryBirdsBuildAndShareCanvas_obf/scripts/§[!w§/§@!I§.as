package §[!w§
{
   import §%c§.§=!X§;
   import §&"'§.§7!E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §@!I§ extends Sprite
   {
      
      public static const §;0§:int = 0;
      
      public static const §<!-§:int = 1;
      
      public static const §`N§:int = 2;
      
      public static const §4"5§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;0§ = 0;
         }
         do
         {
            §<!-§ = 1;
            do
            {
               §`N§ = 2;
               do
               {
                  §4"5§ = 3;
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private const §&!u§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §<W§:Number = 25;
      
      private const §2a§:Number = 10;
      
      private const §2!Q§:Number = 9;
      
      private var §`0§:int;
      
      private var §5"+§:int;
      
      private var §,f§:Array;
      
      private var §2"&§:Array;
      
      private var §&`§:Point;
      
      private var §!!w§:int;
      
      public function §@!I§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§;!<§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!(_loc13_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  this.§`0§ = param1;
                  continue loop0;
               }
            }
            addr54:
         }
         while(true)
         {
            this.§5"+§ = param2;
            if(_loc13_)
            {
               continue;
            }
            if(_loc14_ || param3)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr54);
            }
            §§goto(addr47);
         }
         var _loc7_:Number = Math.min(§=!X§.§ !4§,§=!X§.§@"6§);
         var _loc8_:Number = Math.max(§=!X§.§ !4§,§=!X§.§@"6§);
         if(_loc14_)
         {
            §§push(param3);
            loop3:
            while(true)
            {
               §§push(§=!X§.§@"6§);
               loop4:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  loop5:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        param3 = §§pop();
                        addr169:
                        while(true)
                        {
                           §§push(param4);
                           if(_loc14_)
                           {
                              if(!_loc14_)
                              {
                                 break;
                              }
                              §§push(§=!X§.§ !4§);
                              if(!_loc14_)
                              {
                                 continue loop4;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc14_ || param3)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           if(_loc13_ && this)
                           {
                              continue loop5;
                           }
                           if(!_loc14_)
                           {
                              continue loop3;
                           }
                           param4 = §§pop();
                           while(true)
                           {
                              this.§!!w§ = param5;
                           }
                        }
                     }
                  }
               }
            }
         }
         loop9:
         while(true)
         {
            this.§&`§ = new Point(param3,param4);
            for(; _loc14_; if(_loc14_ || param2)
            {
               if(false)
               {
                  §§goto(addr94);
               }
               var _loc12_:int = 0;
               while(_loc12_ < param6)
               {
                  §§push(§§findproperty(§;!<§));
                  §§push(Math.random() * 40);
                  if(_loc14_ || param2)
                  {
                     §§push(§§pop() + 10);
                  }
                  (_loc9_ = new §§pop().§;!<§(§§pop())).x = -2000;
                  if(!(_loc13_ && param2))
                  {
                     _loc9_.y = -2000;
                     loop14:
                     while(true)
                     {
                        this.addChild(_loc9_);
                        while(true)
                        {
                           addr227:
                           while(true)
                           {
                              this.§,f§[_loc12_] = _loc9_;
                              do
                              {
                                 _loc12_++;
                              }
                              while(!(_loc14_ || param1));
                              
                              if(!(_loc14_ || param2))
                              {
                                 break;
                              }
                              continue loop14;
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr227);
                  }
               }
               if(_loc14_ || param2)
               {
                  this.scaleX = _loc8_;
                  if(_loc14_)
                  {
                     this.scaleY = _loc8_;
                  }
               }
               return;
            })
            {
               if(!(_loc13_ && param3))
               {
                  loop11:
                  while(true)
                  {
                     this.§,f§ = [];
                     while(_loc14_)
                     {
                        this.§2"&§ = [];
                        if(!(_loc13_ && this))
                        {
                           continue loop11;
                        }
                     }
                     continue loop9;
                  }
                  continue;
                  addr94:
               }
               §§goto(addr169);
            }
            §§goto(addr162);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;!<§ = null;
         loop0:
         while(true)
         {
            §§push(this.§,f§);
            if(_loc3_ || this)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc3_ || this)
                  {
                     while(true)
                     {
                        §§push(this.§2"&§);
                        addr92:
                        while(§§pop().length > 0)
                        {
                           §§push(this.§2"&§);
                           if(_loc3_ || this)
                           {
                              break loop0;
                           }
                        }
                        if(!_loc2_)
                        {
                           this.§,f§ = [];
                           if(!(_loc2_ && _loc1_))
                           {
                              this.§2"&§ = [];
                           }
                        }
                     }
                     addr90:
                  }
                  return;
               }
               §§push(this.§,f§);
               if(_loc3_ || this)
               {
                  _loc1_ = §§pop().shift();
                  if(!_loc2_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               §§goto(addr92);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!(_loc2_ && _loc1_))
            {
               _loc1_.clean();
            }
            §§goto(addr90);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§;!<§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && param1))
         {
            §§push(param1);
            if(_loc15_)
            {
               §§push(§§pop() / 20);
               if(!(_loc16_ && _loc2_))
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr61);
            }
            §§goto(addr59);
         }
         addr61:
         loop0:
         while(true)
         {
            §§push(this.§,f§);
            if(!_loc16_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§,f§);
                  if(!(_loc15_ || _loc2_))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  if(!(_loc16_ && _loc3_))
                  {
                     §§push(Math.random() * (this.§<W§ - this.§2a§));
                     loop2:
                     while(true)
                     {
                        §§push(this.§2a§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           loop4:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(this.§!!w§);
                                    while(true)
                                    {
                                       §§push(§;0§);
                                       loop8:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§!!w§);
                                          while(true)
                                          {
                                             §§push(§<!-§);
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc15_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.§!!w§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§`N§);
                                                         addr608:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr609:
                                                         if(!(_loc16_ && _loc3_))
                                                         {
                                                            §§push(Math.PI / 2);
                                                            loop48:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * Math.random());
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop53:
                                                                  while(!(_loc16_ && _loc2_))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     loop54:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           _loc8_ = §§pop();
                                                                           loop57:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                              loop49:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       addr353:
                                                                                       addr334:
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc6_);
                                                                                          }
                                                                                          §§pop().§6U§ = §§pop();
                                                                                          addr361:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc15_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                §§push(_loc9_);
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc6_);
                                                                                                }
                                                                                                §§pop().§0!0§ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         _loc5_.x = this.§&`§.x;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc15_ || param1)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                                                                  break loop27;
                                                                                                               }
                                                                                                               addr718:
                                                                                                            }
                                                                                                            addr642:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                         }
                                                                                                         addr325:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr609);
                                                                                                      }
                                                                                                   }
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                      addr376:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc15_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc15_ || _loc2_)
                                                                                                               {
                                                                                                                  break loop23;
                                                                                                               }
                                                                                                            }
                                                                                                            addr384:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                            }
                                                                                                            addr555:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc16_ && param1)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr565:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc16_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop48;
                                                                                                                  }
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                     addr505:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        addr506:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                           loop44:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              addr492:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    continue loop54;
                                                                                                                                 }
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§2a§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(2);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   §§push(2);
                                                                                                                                                   addr415:
                                                                                                                                                   continue loop25;
                                                                                                                                                   if(_loc15_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(_loc15_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         continue loop53;
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr456:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0.5);
                                                                                                                                                addr677:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr678:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr679:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_ || this)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                  addr651:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     addr652:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                        addr641:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc9_ = §§pop();
                                                                                                                                                                           §§goto(addr642);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr694:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  addr729:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * Math.random());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr728:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr733:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               addr734:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr676:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             §§goto(addr718);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                    addr444:
                                                                                                                                 }
                                                                                                                                 §§goto(addr694);
                                                                                                                              }
                                                                                                                              addr467:
                                                                                                                              continue loop54;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop44;
                                                                                                                                 }
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<W§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop25;
                                                                                                                                          }
                                                                                                                                          if(_loc16_ && this)
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          §§goto(addr415);
                                                                                                                                       }
                                                                                                                                       addr406:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr456);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr391:
                                                                                                   addr392:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               _loc6_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr565);
                                                                                                      }
                                                                                                      §§goto(addr651);
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                }
                                                                                                addr348:
                                                                                             }
                                                                                             addr706:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_.y = this.§&`§.y;
                                                                                          loop14:
                                                                                          while(!_loc16_)
                                                                                          {
                                                                                             this.§2"&§.push(_loc5_);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      if(!(_loc15_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop57;
                                                                                                      }
                                                                                                      §§push(0.5);
                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(Math.random() * 1.5);
                                                                                                         if(_loc15_ || param1)
                                                                                                         {
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr234:
                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc15_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc15_ || param1))
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc16_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop49;
                                                                                                                           }
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 loop17:
                                                                                                                                 while(_loc15_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(0.2);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       addr180:
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                loop18:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_ || param1)
                                                                                                                                                         {
                                                                                                                                                            do
                                                                                                                                                            {
                                                                                                                                                               _loc5_.§#!T§ = §7!E§.§2=§.§<!C§(_loc5_,{
                                                                                                                                                                  "scaleX":_loc11_,
                                                                                                                                                                  "scaleY":_loc11_
                                                                                                                                                               },{
                                                                                                                                                                  "scaleX":_loc10_,
                                                                                                                                                                  "scaleY":_loc10_
                                                                                                                                                               },5);
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            while(false);
                                                                                                                                                            
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr734);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                §§goto(addr652);
                                                                                                                                             }
                                                                                                                                             §§goto(addr406);
                                                                                                                                          }
                                                                                                                                          §§goto(addr439);
                                                                                                                                       }
                                                                                                                                       §§goto(addr376);
                                                                                                                                    }
                                                                                                                                    §§goto(addr573);
                                                                                                                                 }
                                                                                                                                 §§goto(addr506);
                                                                                                                              }
                                                                                                                              §§goto(addr729);
                                                                                                                           }
                                                                                                                           §§goto(addr679);
                                                                                                                        }
                                                                                                                        continue loop49;
                                                                                                                        addr256:
                                                                                                                     }
                                                                                                                     §§goto(addr505);
                                                                                                                  }
                                                                                                                  §§goto(addr397);
                                                                                                               }
                                                                                                               §§goto(addr256);
                                                                                                            }
                                                                                                            §§goto(addr677);
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr234);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop14;
                                                                                                if(_loc16_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr122);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          §§goto(addr402);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr678);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  §§goto(addr706);
                                                               }
                                                            }
                                                         }
                                                         break loop10;
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             if(_loc15_ || _loc3_)
                                             {
                                                §§goto(addr676);
                                                §§push(Math.PI * (Math.random() - 0.5));
                                             }
                                             break loop8;
                                          }
                                       }
                                       §§goto(addr728);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr334);
               }
               §§push(this.§2"&§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(!_loc16_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!_loc16_)
         {
            loop73:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc16_ && this)
               {
                  break;
               }
               _loc5_ = this.§2"&§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§0!0§);
               if(_loc15_)
               {
                  §§push(this.GRAVITY);
                  if(_loc15_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§0!0§ = §§pop();
               if(_loc15_)
               {
                  if(_loc5_.§0!0§ > this.§2!Q§)
                  {
                     while(true)
                     {
                        _loc5_.§0!0§ = this.§2!Q§;
                        addr994:
                        while(true)
                        {
                        }
                        addr939:
                        if(_loc16_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(true);
                        loop82:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr948:
                           while(_loc15_)
                           {
                              loop84:
                              while(true)
                              {
                                 §§push(this.§2"&§);
                                 if(!(_loc15_ || _loc3_))
                                 {
                                    addr1037:
                                    break;
                                    addr999:
                                 }
                                 §§push(§§pop().length > 0);
                                 if(!_loc16_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc15_ || _loc2_)
                                       {
                                          addr826:
                                          if(_loc15_ || _loc2_)
                                          {
                                             continue loop82;
                                          }
                                          addr919:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr920:
                                             while(true)
                                             {
                                                continue loop84;
                                             }
                                             §§goto(addr826);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr998:
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc15_ || this)
                                    {
                                       addr1007:
                                       §§push(this.§2"&§);
                                       break;
                                    }
                                    continue loop73;
                                 }
                                 §§push(_loc4_);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc4_ = §§pop();
                                 continue loop73;
                              }
                              if((_loc14_ = §§pop().splice(_loc4_,1)) is §;!<§)
                              {
                                 if(!_loc16_)
                                 {
                                    _loc14_.clean();
                                    if(_loc15_ || param1)
                                    {
                                       addr1029:
                                       _loc5_.x = -2000;
                                       if(_loc15_)
                                       {
                                          _loc5_.y = -2000;
                                       }
                                    }
                                    §§goto(addr1037);
                                 }
                              }
                              §§goto(addr1029);
                           }
                           loop78:
                           while(true)
                           {
                              _loc5_.rotation += 5 * param1;
                              if(_loc15_)
                              {
                                 if(_loc5_.x < -_loc5_.width / 2)
                                 {
                                    if(_loc16_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc15_)
                                    {
                                       §§goto(addr939);
                                    }
                                    else
                                    {
                                       §§goto(addr994);
                                    }
                                 }
                                 else
                                 {
                                    if(_loc5_.x <= this.§`0§ + _loc5_.width / 2)
                                    {
                                       if(_loc5_.y > this.§5"+§ + _loc5_.height / 2)
                                       {
                                          if(_loc16_ && _loc3_)
                                          {
                                             continue loop73;
                                          }
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             addr886:
                                             if(_loc15_ || _loc2_)
                                             {
                                                §§push(true);
                                                if(!_loc16_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc16_ && param1)
                                                   {
                                                      continue loop73;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr802);
                                                   }
                                                }
                                                §§goto(addr999);
                                             }
                                             else
                                             {
                                                addr984:
                                                while(true)
                                                {
                                                   _loc5_.y += _loc5_.§0!0§ * param1;
                                                   continue loop78;
                                                   §§goto(addr886);
                                                }
                                                addr984:
                                             }
                                          }
                                          else
                                          {
                                             addr918:
                                             §§push(true);
                                          }
                                          §§goto(addr919);
                                       }
                                       §§goto(addr802);
                                    }
                                    §§goto(addr918);
                                 }
                                 §§goto(addr984);
                              }
                              break;
                           }
                           §§goto(addr1007);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§6U§ * param1;
                     §§goto(addr984);
                     §§goto(addr994);
                  }
               }
               §§goto(addr904);
            }
         }
      }
   }
}
