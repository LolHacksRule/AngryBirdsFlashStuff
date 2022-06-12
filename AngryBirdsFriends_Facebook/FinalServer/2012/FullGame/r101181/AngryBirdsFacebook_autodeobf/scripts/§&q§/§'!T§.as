package §&q§
{
   import §8!v§.§>!+§;
   import §]!A§.;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §'!T§ extends Sprite
   {
      
      public static const §7!J§:int = 0;
      
      public static const §&!H§:int = 1;
      
      public static const §2"?§:int = 2;
      
      public static const §>^§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §'!T§)
         {
            §7!J§ = 0;
            while(true)
            {
               §&!H§ = 1;
               addr56:
               while(_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §2"?§ = 2;
            while(!_loc2_)
            {
               §>^§ = 3;
               if(!_loc2_)
               {
                  return;
               }
            }
            §§goto(addr56);
         }
      }
      
      private const §74§:uint = 40;
      
      private const §68§:Number = 0.3;
      
      private const §1!Z§:Number = 25;
      
      private const §^"'§:Number = 10;
      
      private const §!"§:Number = 9;
      
      private var §[!Z§:int;
      
      private var §3p§:int;
      
      private var § !+§:Array;
      
      private var § case§:Array;
      
      private var §`"0§:Point;
      
      private var §]§:int;
      
      public function §'!T§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§1!&§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!_loc13_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§[!Z§ = param1;
                  do
                  {
                     this.§3p§ = param2;
                  }
                  while(!(_loc14_ || param1));
                  
                  if(_loc13_ && param1)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc7_:Number = Math.min(§#6§.§"e§,§#6§.§>!F§);
                  var _loc8_:Number = Math.max(§#6§.§"e§,§#6§.§>!F§);
                  if(_loc14_)
                  {
                     §§push(param3);
                     while(true)
                     {
                        §§push(§#6§.§>!F§);
                        addr176:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr177:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr178:
                              while(true)
                              {
                                 param3 = §§pop();
                              }
                           }
                        }
                        addr164:
                        if(!(_loc14_ || param3))
                        {
                           continue;
                        }
                        param4 = §§pop();
                        loop9:
                        while(true)
                        {
                           this.§]§ = param5;
                           while(true)
                           {
                              this.§`"0§ = new Point(param3,param4);
                              loop11:
                              for(; !_loc13_; if(_loc14_ || param3)
                              {
                                 continue loop9;
                              })
                              {
                                 while(true)
                                 {
                                    this.§ !+§ = [];
                                    while(!_loc13_)
                                    {
                                       this.§ case§ = [];
                                       if(_loc14_ || this)
                                       {
                                          continue loop11;
                                       }
                                    }
                                    addr179:
                                    while(true)
                                    {
                                       §§push(param4);
                                       if(_loc14_)
                                       {
                                          §§push(§#6§.§"e§);
                                          if(_loc14_ || param3)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc14_ || param3)
                                             {
                                                addr154:
                                                §§push(Number(§§pop()));
                                             }
                                             if(_loc14_)
                                             {
                                                if(!(_loc13_ && this))
                                                {
                                                   §§goto(addr164);
                                                }
                                                else
                                                {
                                                   §§goto(addr177);
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                          else
                                          {
                                             §§goto(addr176);
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                 }
                              }
                           }
                           if(!(_loc13_ && param3))
                           {
                              if(false)
                              {
                                 §§goto(addr101);
                              }
                              var _loc12_:int = 0;
                              addr243:
                              if(_loc12_ < param6)
                              {
                                 §§push(§§findproperty(§1!&§));
                                 §§push(Math.random() * 40);
                                 if(!(_loc13_ && param3))
                                 {
                                    §§push(§§pop() + 10);
                                 }
                                 (_loc9_ = new §§pop().§1!&§(§§pop())).x = -2000;
                                 if(_loc14_)
                                 {
                                    _loc9_.y = -2000;
                                    this.addChild(_loc9_);
                                    addr226:
                                    if(!_loc13_)
                                    {
                                       addr213:
                                       this.§ !+§[_loc12_] = _loc9_;
                                       if(_loc14_)
                                       {
                                          _loc12_++;
                                          if(!_loc13_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr213);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr213);
                                          addr221:
                                       }
                                       §§goto(addr226);
                                    }
                                    addr242:
                                    §§goto(addr242);
                                 }
                                 §§goto(addr221);
                              }
                              if(!(_loc13_ && param3))
                              {
                                 this.scaleX = _loc8_;
                                 if(!(_loc13_ && param3))
                                 {
                                    this.scaleY = _loc8_;
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr179);
               }
            }
         }
         §§goto(addr45);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1!&§ = null;
         loop0:
         while(true)
         {
            §§push(this.§ !+§);
            if(!_loc2_)
            {
               if(§§pop().length <= 0)
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(this.§ case§);
                        break loop0;
                     }
                     addr85:
                  }
                  §§goto(addr92);
               }
               §§push(this.§ !+§);
               if(_loc3_ || _loc1_)
               {
                  _loc1_ = §§pop().shift();
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               addr78:
               while(true)
               {
                  _loc1_ = §§pop().shift();
                  if(_loc3_)
                  {
                     _loc1_.clean();
                  }
               }
               §§goto(addr85);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§ case§);
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr78);
         }
         if(!_loc2_)
         {
            §§goto(addr92);
         }
         addr92:
         this.§ !+§ = [];
         if(!_loc2_)
         {
            this.§ case§ = [];
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§1!&§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc15_ && param1))
         {
            §§push(param1);
            if(!(_loc15_ && param1))
            {
               §§push(§§pop() / 20);
               if(_loc16_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§ !+§);
            if(_loc16_ || _loc3_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§ !+§);
                  if(!(_loc16_ || param1))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  if(_loc16_)
                  {
                     §§push(Math.random() * (this.§1!Z§ - this.§^"'§));
                     loop2:
                     while(true)
                     {
                        §§push(this.§^"'§);
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§]§);
                                    while(true)
                                    {
                                       §§push(§7!J§);
                                       loop8:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§]§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§&!H§);
                                             addr614:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(this.§]§);
                                                continue loop9;
                                             }
                                             addr677:
                                             loop36:
                                             while(!(_loc15_ && this))
                                             {
                                                if(!(_loc16_ || param1))
                                                {
                                                   continue loop6;
                                                }
                                                §§push(Math.PI * (Math.random() - 0.5));
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      loop37:
                                                      while(true)
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop27:
                                                            while(_loc16_ || this)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               _loc7_ = §§pop();
                                                               loop73:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                  loop74:
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     loop68:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                        loop69:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           loop70:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 loop52:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc8_);
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§pop().§#Z§ = §§pop();
                                                                                    loop53:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(_loc9_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc6_);
                                                                                       }
                                                                                       §§pop().§1!y§ = §§pop();
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             _loc5_.x = this.§`"0§.x;
                                                                                             loop57:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   continue loop53;
                                                                                                }
                                                                                                _loc5_.y = this.§`"0§.y;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop68;
                                                                                                   }
                                                                                                   addr464:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.PI * (Math.random() - 0.5));
                                                                                                      if(!(_loc15_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc16_ || this)
                                                                                                            {
                                                                                                               addr489:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr489:
                                                                                                            }
                                                                                                            loop43:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc16_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  loop44:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           addr443:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc16_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop44;
                                                                                                                                    }
                                                                                                                                    if(!(_loc15_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§^"'§);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop74;
                                                                                                                                          }
                                                                                                                                          §§push(2);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                          }
                                                                                                                                          addr395:
                                                                                                                                       }
                                                                                                                                       loop42:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             continue loop43;
                                                                                                                                          }
                                                                                                                                          if(_loc16_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(!_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§1!Z§);
                                                                                                                                                addr341:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   if(_loc15_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop41;
                                                                                                                                                   }
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      loop21:
                                                                                                                                                      for(; !(_loc15_ && _loc3_); while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr302:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop38;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc15_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop37;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc15_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc15_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop34;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop8;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop52;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr374);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr541);
                                                                                                                                                                  }
                                                                                                                                                                  addr302:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                  addr695:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr676);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr694:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr302);
                                                                                                                                                         }
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop69;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || param1)
                                                                                                                                                            {
                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  addr541:
                                                                                                                                                                  addr541:
                                                                                                                                                                  loop23:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop70;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              break loop34;
                                                                                                                                                                           }
                                                                                                                                                                           addr577:
                                                                                                                                                                           loop24:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ || _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop25;
                                                                                                                                                                              }
                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                                                                                                 break loop24;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        addr526:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        addr665:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop70;
                                                                                                                                                               }
                                                                                                                                                               addr384:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  break loop36;
                                                                                                                                                               }
                                                                                                                                                               addr676:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * Math.random());
                                                                                                                                                            addr576:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr577);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr406);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr395);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr406:
                                                                                                                                             continue loop69;
                                                                                                                                             addr409:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             §§goto(addr541);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          §§push(Math.PI / 2);
                                                                                                                                       }
                                                                                                                                       addr562:
                                                                                                                                    }
                                                                                                                                    §§goto(addr573);
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop52;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr691:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§goto(addr694);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr479:
                                                                                                      }
                                                                                                      §§goto(addr489);
                                                                                                   }
                                                                                                }
                                                                                                this.§ case§.push(_loc5_);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      loop17:
                                                                                                      while(_loc16_ || this)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Math.random() * 1.5);
                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc16_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 addr218:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc16_ || param1))
                                                                                                                                    {
                                                                                                                                       continue loop57;
                                                                                                                                    }
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    §§push(0.2);
                                                                                                                                    if(_loc15_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    §§goto(addr288);
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop57;
                                                                                                                              addr217:
                                                                                                                           }
                                                                                                                           §§goto(addr526);
                                                                                                                        }
                                                                                                                        §§goto(addr341);
                                                                                                                     }
                                                                                                                     §§goto(addr217);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr296);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               addr688:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr691);
                                                                                                               }
                                                                                                            }
                                                                                                            addr687:
                                                                                                         }
                                                                                                         §§goto(addr576);
                                                                                                      }
                                                                                                      §§goto(addr302);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr242);
                                                                                                   }
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                                addr242:
                                                                                                addr246:
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_.§5X§ = §>!+§.§;"§.§^!K§(_loc5_,{
                                                                                                      "scaleX":_loc11_,
                                                                                                      "scaleY":_loc11_
                                                                                                   },{
                                                                                                      "scaleX":_loc10_,
                                                                                                      "scaleY":_loc10_
                                                                                                   },5);
                                                                                                   while(_loc16_)
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               _loc5_.§5X§.play();
                                                                                                               addr118:
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  while(false)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                     §§goto(addr118);
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  addr85:
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop73;
                                                                                                         }
                                                                                                         §§goto(addr233);
                                                                                                      }
                                                                                                      §§goto(addr218);
                                                                                                   }
                                                                                                   §§goto(addr141);
                                                                                                }
                                                                                                addr233:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr267:
                                                                              }
                                                                              §§goto(addr695);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc9_ = §§pop();
                                                               §§goto(addr665);
                                                            }
                                                            addr664:
                                                         }
                                                         §§goto(addr688);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr664);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr687);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr85);
               }
               §§push(this.§ case§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(!_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!(_loc15_ && this))
         {
            loop76:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc15_ && _loc3_)
               {
                  break;
               }
               _loc5_ = this.§ case§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§1!y§);
               if(_loc16_)
               {
                  §§push(this.§68§);
                  if(_loc16_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§1!y§ = §§pop();
               if(_loc16_)
               {
                  if(_loc5_.§1!y§ > this.§!"§)
                  {
                     if(_loc15_ && _loc3_)
                     {
                        continue;
                     }
                     _loc5_.§1!y§ = this.§!"§;
                     while(true)
                     {
                        loop88:
                        while(_loc16_ || _loc3_)
                        {
                           addr877:
                           §§push(true);
                           loop82:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop83:
                              while(true)
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    while(true)
                                    {
                                       loop87:
                                       while(true)
                                       {
                                          §§push(this.§ case§);
                                          if(!(_loc15_ && param1))
                                          {
                                             §§push(§§pop().length > 0);
                                             if(_loc16_ || this)
                                             {
                                                if(_loc16_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         addr799:
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            §§pop();
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop83;
                                                               }
                                                               if(!(_loc16_ || _loc3_))
                                                               {
                                                                  continue loop88;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_);
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  addr980:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc16_ || _loc3_)
                                                                     {
                                                                        addr988:
                                                                        §§push(this.§ case§);
                                                                        break;
                                                                     }
                                                                     continue loop76;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  continue loop76;
                                                               }
                                                               §§goto(addr980);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop90:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr900:
                                                               while(_loc16_ || param1)
                                                               {
                                                                  continue loop87;
                                                               }
                                                               loop80:
                                                               while(true)
                                                               {
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     _loc5_.rotation += 5 * param1;
                                                                     if(!(_loc15_ && _loc3_))
                                                                     {
                                                                        if(_loc5_.x < -_loc5_.width / 2)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop90;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(_loc5_.x > this.§[!Z§ + _loc5_.width / 2)
                                                                           {
                                                                              continue loop88;
                                                                           }
                                                                           if(_loc5_.y <= this.§3p§ + _loc5_.height / 2)
                                                                           {
                                                                              continue loop87;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(true);
                                                                              do
                                                                              {
                                                                                 if(_loc15_ && this)
                                                                                 {
                                                                                    continue loop82;
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                              while(_loc16_ || _loc2_);
                                                                              
                                                                              continue loop76;
                                                                              addr841:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop87;
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr953:
                                                                  while(true)
                                                                  {
                                                                     _loc5_.y += _loc5_.§1!y§ * param1;
                                                                     continue loop80;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr988);
                                                      }
                                                   }
                                                   §§goto(addr980);
                                                }
                                                §§goto(addr841);
                                             }
                                             §§goto(addr799);
                                          }
                                          break;
                                       }
                                       if((_loc14_ = §§pop().splice(_loc4_,1)) is §1!&§)
                                       {
                                          if(_loc16_ || param1)
                                          {
                                             _loc14_.clean();
                                             if(_loc16_ || _loc2_)
                                             {
                                                addr1025:
                                                _loc5_.x = -2000;
                                                if(!(_loc15_ && param1))
                                                {
                                                   addr1035:
                                                   _loc5_.y = -2000;
                                                }
                                                §§goto(addr980);
                                             }
                                             §§goto(addr1035);
                                          }
                                       }
                                       §§goto(addr1025);
                                    }
                                 }
                                 §§goto(addr900);
                              }
                           }
                        }
                     }
                     addr970:
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§#Z§ * param1;
                     §§goto(addr953);
                     §§goto(addr970);
                  }
               }
               §§goto(addr898);
            }
         }
      }
   }
}
