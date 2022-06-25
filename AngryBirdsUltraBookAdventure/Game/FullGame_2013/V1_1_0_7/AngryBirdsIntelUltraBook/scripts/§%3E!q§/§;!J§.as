package §>!q§
{
   import §;!y§.§,!s§;
   import §]F§.§`!G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §;!J§ extends Sprite
   {
      
      public static const §`C§:int = 0;
      
      public static const §,!M§:int = 1;
      
      public static const §5p§:int = 2;
      
      public static const §8o§:int = 3;
      
      public static const §"R§:uint = 40;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`C§ = 0;
            loop0:
            while(true)
            {
               §,!M§ = 1;
               while(true)
               {
                  §5p§ = 2;
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     §8o§ = 3;
                     while(true)
                     {
                        §"R§ = 40;
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private const §4o§:Number = 0.3;
      
      private const §7!j§:Number = 25;
      
      private const §%!A§:Number = 10;
      
      private const §;W§:Number = 9;
      
      private var §2!q§:int;
      
      private var §&b§:int;
      
      private var §#R§:Array;
      
      private var §[!`§:Array;
      
      private var §2!I§:Point;
      
      private var §^S§:int;
      
      public function §;!J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§%!p§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!(_loc14_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§2!q§ = param1;
               while(!_loc14_)
               {
                  this.§&b§ = param2;
                  if(_loc15_ || this)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc8_:Number = Math.min(§,!s§.§#d§,§,!s§.§8;§);
            var _loc9_:Number = Math.max(§,!s§.§#d§,§,!s§.§8;§);
            if(_loc15_ || this)
            {
               §§push(param3);
               if(!(_loc14_ && param3))
               {
                  §§push(§,!s§.§8;§);
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr144:
                     §§push(§,!s§.§#d§);
                     if(!(_loc15_ || param2))
                     {
                        continue;
                     }
                     §§push(§§pop() / §§pop());
                     if(!(_loc14_ && param1))
                     {
                        if(!(_loc14_ && this))
                        {
                           addr169:
                           param4 = §§pop();
                           loop7:
                           while(true)
                           {
                              this.§^S§ = param5;
                              addr137:
                              while(true)
                              {
                                 this.§2!I§ = new Point(param3,param4);
                                 continue loop7;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr183);
                        }
                        addr182:
                     }
                     §§goto(addr169);
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr94);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!p§ = null;
         loop0:
         while(true)
         {
            §§push(this.§#R§);
            if(_loc3_ || this)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§#R§);
                  if(_loc3_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc2_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(_loc3_ || _loc1_)
               {
                  while(true)
                  {
                     §§push(this.§[!`§);
                     break loop0;
                  }
                  addr95:
               }
               §§goto(addr115);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§[!`§);
            if(!(_loc3_ || _loc3_))
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.clean();
            }
            §§goto(addr95);
         }
         if(_loc3_)
         {
            this.§#R§ = [];
            if(_loc3_ || this)
            {
               this.§[!`§ = [];
            }
         }
         addr115:
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§%!p§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && _loc2_))
         {
            §§push(param1);
            if(!_loc16_)
            {
               §§push(§§pop() / 20);
               if(_loc15_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr56);
            }
            §§goto(addr54);
         }
         addr56:
         while(true)
         {
            §§push(this.§#R§);
            if(_loc15_ || _loc2_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§[!`§);
                  break;
               }
               §§push(this.§#R§);
               if(_loc16_)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc16_)
               {
                  §§push(Math.random() * (this.§7!j§ - this.§%!A§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§%!A§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc6_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§^S§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§`C§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§^S§);
                                       loop8:
                                       while(_loc15_)
                                       {
                                          §§push(§,!M§);
                                          loop9:
                                          for(; §§pop() != §§pop(); while(true)
                                          {
                                             if(!(_loc15_ || param1))
                                             {
                                                continue loop9;
                                             }
                                             if(!(_loc15_ || _loc3_))
                                             {
                                                continue loop7;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(this.§^S§);
                                             if(!_loc16_)
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr560);
                                          },addr576:,if(_loc15_)
                                          {
                                             §§push(Math.PI / 2);
                                             loop73:
                                             while(true)
                                             {
                                                §§push(§§pop() * Math.random());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc16_ && this)
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc8_ = §§pop();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc15_ || param1))
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     if(_loc15_)
                                                                     {
                                                                        addr295:
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc8_);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                           §§pop().§,"#§ = §§pop();
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              §§push(_loc9_);
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                              §§pop().§#o§ = §§pop();
                                                                              loop23:
                                                                              for(; !(_loc16_ && _loc2_); while(true)
                                                                              {
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       if(!(_loc16_ && param1))
                                                                                       {
                                                                                          if(!(_loc16_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr166);
                                                                                             §§push(0.5);
                                                                                          }
                                                                                          §§goto(addr597);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr576);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop23;
                                                                                 §§goto(addr207);
                                                                              },§§goto(addr339))
                                                                              {
                                                                                 _loc5_.x = this.§2!I§.x;
                                                                                 loop24:
                                                                                 while(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    _loc5_.y = this.§2!I§.y;
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[!`§.push(_loc5_);
                                                                                       continue loop23;
                                                                                       addr214:
                                                                                       if(!(_loc15_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       §§push(0.2);
                                                                                       if(!(_loc16_ && _loc2_))
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr128:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(!(_loc16_ && _loc2_))
                                                                                                         {
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  addr207:
                                                                                                                  addr329:
                                                                                                                  addr207:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     §§goto(addr214);
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  loop58:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc15_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                 addr429:
                                                                                                                                 addr454:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop73;
                                                                                                                                    }
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    while(!_loc15_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                          addr496:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             §§push(0.5);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr505:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr506:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         addr514:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop39:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr634:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               addr635:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                  addr606:
                                                                                                                                                                  addr631:
                                                                                                                                                                  while(!(_loc16_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                        addr596:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc9_ = §§pop();
                                                                                                                                                                           addr597:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop21;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     addr632:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr606);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr633:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§%!A§);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          §§push(2);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             if(!(_loc15_ || this))
                                                                                                                                             {
                                                                                                                                                break loop58;
                                                                                                                                             }
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop58;
                                                                                                                                             }
                                                                                                                                             §§push(2);
                                                                                                                                             addr356:
                                                                                                                                             continue loop15;
                                                                                                                                             if(_loc16_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         break loop23;
                                                                                                                                                      }
                                                                                                                                                      addr684:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * Math.random());
                                                                                                                                                         addr687:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr688:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               addr689:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop58;
                                                                                                                                                   }
                                                                                                                                                   addr368:
                                                                                                                                                }
                                                                                                                                                §§goto(addr596);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break loop58;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr339:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr368);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        if(_loc16_ && this)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§7!j§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr356);
                                                                                                                                    }
                                                                                                                                    §§goto(addr634);
                                                                                                                                 }
                                                                                                                                 §§goto(addr506);
                                                                                                                              }
                                                                                                                              addr352:
                                                                                                                           }
                                                                                                                           §§goto(addr614);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr429);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§goto(addr352);
                                                                                                         }
                                                                                                         §§goto(addr329);
                                                                                                      }
                                                                                                      while(!(_loc16_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            §§goto(addr207);
                                                                                                         }
                                                                                                         §§goto(addr496);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr329);
                                                                                                      }
                                                                                                      addr197:
                                                                                                      addr328:
                                                                                                   }
                                                                                                   §§goto(addr687);
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             while(_loc15_)
                                                                                             {
                                                                                                §§push(Math.random() * 1.5);
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_ && this)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(!(_loc16_ && this))
                                                                                                      {
                                                                                                         §§goto(addr197);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr505);
                                                                                                   }
                                                                                                   §§goto(addr504);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§goto(addr328);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr632);
                                                                                                   }
                                                                                                   addr325:
                                                                                                }
                                                                                                §§goto(addr633);
                                                                                             }
                                                                                             §§goto(addr606);
                                                                                             addr166:
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                       }
                                                                                       §§goto(addr128);
                                                                                    }
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_ || _loc3_)
                                                                                 {
                                                                                    §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr295:
                                                                     }
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr689);
                                                                        addr646:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           continue loop34;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop73;
                                                }
                                             }
                                          },while(true)
                                          {
                                             §§goto(addr646);
                                          })
                                          {
                                             §§push(this.§^S§);
                                             while(true)
                                             {
                                                §§push(§5p§);
                                                continue loop9;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr631);
                                          }
                                          if(_loc16_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(§8o§);
                                          if(_loc16_ && _loc3_)
                                          {
                                             §§goto(addr561);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr479);
                                          }
                                          §§goto(addr295);
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr683);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc15_ || param1))
                        {
                           continue loop1;
                        }
                        _loc8_ = §§pop();
                        §§goto(addr673);
                     }
                  }
               }
               §§goto(addr434);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_ || _loc2_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc15_ || _loc3_)
         {
            loop74:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = this.§[!`§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§#o§);
               if(!_loc16_)
               {
                  §§push(this.§4o§);
                  if(!_loc16_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§#o§ = §§pop();
               if(_loc15_ || _loc2_)
               {
                  if(_loc5_.§#o§ > this.§;W§)
                  {
                     while(true)
                     {
                        _loc5_.§#o§ = this.§;W§;
                        addr944:
                        while(true)
                        {
                        }
                     }
                     addr940:
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§,"#§ * param1;
                     while(true)
                     {
                        _loc5_.y += _loc5_.§#o§ * param1;
                        loop79:
                        while(true)
                        {
                           _loc5_.rotation += 5 * param1;
                           if(!_loc16_)
                           {
                              while(true)
                              {
                                 if(_loc5_.x >= -_loc5_.width / 2)
                                 {
                                    if(_loc5_.x > this.§2!q§ + _loc5_.width / 2)
                                    {
                                       if(_loc15_)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                continue loop74;
                                             }
                                          }
                                          addr871:
                                       }
                                       while(true)
                                       {
                                          if(_loc15_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                addr772:
                                                addr959:
                                                loop86:
                                                while(true)
                                                {
                                                   §§push(this.§[!`§);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop().length > 0);
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     addr795:
                                                                     §§pop();
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue loop74;
                                                                     }
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc3_);
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           addr953:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr940);
                                                                     }
                                                                  }
                                                                  §§goto(addr953);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     break loop79;
                                                                  }
                                                                  continue loop74;
                                                               }
                                                               addr992:
                                                               §§push(_loc4_);
                                                               if(!(_loc16_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               _loc4_ = §§pop();
                                                               continue loop74;
                                                            }
                                                            §§goto(addr871);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     continue loop79;
                                                                  }
                                                                  addr891:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           continue loop86;
                                                                        }
                                                                        addr900:
                                                                     }
                                                                  }
                                                               }
                                                               break loop79;
                                                            }
                                                            addr823:
                                                         }
                                                         §§goto(addr953);
                                                      }
                                                      §§goto(addr795);
                                                   }
                                                   break;
                                                }
                                                if((_loc14_ = §§pop().splice(_loc4_,1)) is §%!p§)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      _loc14_.clean();
                                                      if(_loc15_)
                                                      {
                                                         addr984:
                                                         _loc5_.x = -2000;
                                                         if(!_loc16_)
                                                         {
                                                            _loc5_.y = -2000;
                                                         }
                                                      }
                                                      §§goto(addr992);
                                                   }
                                                }
                                                §§goto(addr984);
                                             }
                                          }
                                          §§goto(addr900);
                                       }
                                    }
                                    else if(_loc5_.y > this.§&b§ + _loc5_.height / 2)
                                    {
                                       if(!(_loc15_ || param1))
                                       {
                                          continue loop74;
                                       }
                                       §§goto(addr823);
                                       §§push(true);
                                    }
                                    §§goto(addr772);
                                 }
                                 §§goto(addr891);
                              }
                              addr912:
                           }
                           break;
                        }
                        §§goto(addr959);
                     }
                     §§goto(addr944);
                  }
               }
               §§goto(addr912);
            }
         }
      }
   }
}
