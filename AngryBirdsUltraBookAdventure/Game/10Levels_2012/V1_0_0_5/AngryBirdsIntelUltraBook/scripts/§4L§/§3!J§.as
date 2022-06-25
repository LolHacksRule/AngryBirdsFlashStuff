package §4L§
{
   import §57§.§,!b§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §3!J§ extends Sprite
   {
      
      public static const §=?§:int = 0;
      
      public static const §#!-§:int = 1;
      
      public static const §]T§:int = 2;
      
      public static const §2q§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=?§ = 0;
         }
         loop0:
         while(true)
         {
            §#!-§ = 1;
            do
            {
               §]T§ = 2;
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      private const §0U§:uint = 40;
      
      private const §[Q§:Number = 0.3;
      
      private const §0j§:Number = 25;
      
      private const §7!§:Number = 10;
      
      private const §^n§:Number = 9;
      
      private var §#!m§:int;
      
      private var §58§:int;
      
      private var §<!B§:Array;
      
      private var §1!r§:Array;
      
      private var §6]§:Point;
      
      private var §0!v§:int;
      
      public function §3!J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:§1,§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc13_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§#!m§ = param1;
                  continue loop0;
               }
            }
            addr53:
         }
         while(true)
         {
            this.§58§ = param2;
            if(!(_loc13_ || param2))
            {
               continue;
            }
            if(!_loc14_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr53);
            }
            §§goto(addr46);
         }
         var _loc7_:Number = Math.min(§ _§.§[!Y§,§ _§.§0!2§);
         var _loc8_:Number = Math.max(§ _§.§[!Y§,§ _§.§0!2§);
         if(_loc13_ || param2)
         {
            §§push(param3);
            loop3:
            while(true)
            {
               §§push(§ _§.§0!2§);
               loop4:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                  }
                  while(true)
                  {
                     param3 = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(param4);
                        if(!_loc14_)
                        {
                           §§push(§ _§.§[!Y§);
                           if(_loc14_ && param3)
                           {
                              continue loop4;
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc13_)
                           {
                              addr148:
                              §§push(Number(§§pop()));
                           }
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(!_loc13_)
                           {
                              continue loop3;
                           }
                           param4 = §§pop();
                           loop7:
                           while(true)
                           {
                              this.§0!v§ = param5;
                              addr131:
                              while(true)
                              {
                                 this.§6]§ = new Point(param3,param4);
                                 continue loop7;
                                 loop11:
                                 while(!(_loc14_ && this))
                                 {
                                    if(!_loc14_)
                                    {
                                       this.§1!r§ = [];
                                       if(_loc13_)
                                       {
                                          addr84:
                                          if(!_loc14_)
                                          {
                                             if(true)
                                             {
                                                var _loc12_:int = 0;
                                                loop12:
                                                while(_loc12_ < param6)
                                                {
                                                   §§push(§§findproperty(§1,§));
                                                   §§push(Math.random() * 40);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() + 10);
                                                   }
                                                   (_loc9_ = new §§pop().§1,§(§§pop())).x = -2000;
                                                   if(!_loc14_)
                                                   {
                                                      _loc9_.y = -2000;
                                                      while(true)
                                                      {
                                                         this.addChild(_loc9_);
                                                         addr195:
                                                         if(_loc13_ || param3)
                                                         {
                                                            if(false)
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  this.§<!B§[_loc12_] = _loc9_;
                                                                  addr210:
                                                                  addr232:
                                                                  while(!(_loc14_ && this))
                                                                  {
                                                                     _loc12_++;
                                                                     if(!(_loc13_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                     §§goto(addr210);
                                                                  }
                                                               }
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr232);
                                                }
                                                if(_loc13_ || param1)
                                                {
                                                   this.scaleX = _loc8_;
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      this.scaleY = _loc8_;
                                                   }
                                                }
                                                addr88:
                                             }
                                             while(true)
                                             {
                                                this.§<!B§ = [];
                                                continue loop11;
                                                §§goto(addr84);
                                             }
                                             continue loop7;
                                             return;
                                          }
                                          continue loop7;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1,§ = null;
         loop0:
         while(true)
         {
            §§push(this.§<!B§);
            if(!(_loc2_ && _loc1_))
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§<!B§);
                  if(!_loc2_)
                  {
                     _loc1_ = §§pop().shift();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §§push(this.§1!r§);
                     while(§§pop().length > 0)
                     {
                        §§push(this.§1!r§);
                        if(_loc3_ || this)
                        {
                           break loop0;
                        }
                     }
                     if(_loc3_)
                     {
                        this.§<!B§ = [];
                        if(_loc3_ || _loc3_)
                        {
                           addr112:
                           this.§1!r§ = [];
                        }
                     }
                     return;
                  }
                  addr95:
               }
               §§goto(addr112);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!_loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr95);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§1,§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc16_ && _loc3_))
            {
               §§push(§§pop() / 20);
               if(!(_loc16_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§<!B§);
            if(_loc15_ || _loc2_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§<!B§);
                  if(!(_loc15_ || _loc2_))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  if(_loc15_)
                  {
                     §§push(Math.random() * (this.§0j§ - this.§7!§));
                     loop2:
                     while(true)
                     {
                        §§push(this.§7!§);
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
                                    §§push(this.§0!v§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§=?§);
                                       addr678:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§0!v§);
                                          while(true)
                                          {
                                             §§push(§#!-§);
                                             addr626:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(this.§0!v§);
                                                continue loop7;
                                             }
                                             addr627:
                                             while(true)
                                             {
                                                §§push(Math.PI * (Math.random() - 0.5));
                                                addr634:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   addr635:
                                                   while(true)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       loop60:
                                       while(true)
                                       {
                                          §§push(Math.PI / 2);
                                          loop61:
                                          while(true)
                                          {
                                             §§push(-§§pop());
                                             loop62:
                                             while(true)
                                             {
                                                §§push(§§pop() * Math.random());
                                                loop65:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop63:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop50:
                                                      while(true)
                                                      {
                                                         §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                         loop51:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            loop52:
                                                            while(true)
                                                            {
                                                               §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                               loop53:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  loop54:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue loop52;
                                                                     }
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        §§push(_loc8_);
                                                                        if(!(_loc16_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() * _loc6_);
                                                                        }
                                                                        §§pop().§8M§ = §§pop();
                                                                        loop19:
                                                                        while(_loc15_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc9_);
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                           §§pop().§>!^§ = §§pop();
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              _loc5_.x = this.§6]§.x;
                                                                              loop55:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       _loc5_.y = this.§6]§.y;
                                                                                       loop56:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§1!r§.push(_loc5_);
                                                                                          loop57:
                                                                                          for(; _loc15_; if(_loc16_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          },if(_loc16_)
                                                                                          {
                                                                                             continue loop56;
                                                                                          },addr179:,loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.§3v§ = §,!b§.§<d§.§>a§(_loc5_,{
                                                                                                "scaleX":_loc11_,
                                                                                                "scaleY":_loc11_
                                                                                             },{
                                                                                                "scaleX":_loc10_,
                                                                                                "scaleY":_loc10_
                                                                                             },5);
                                                                                             addr131:
                                                                                             addr133:
                                                                                             while(_loc16_)
                                                                                             {
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_.§3v§.play();
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   if(_loc15_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc16_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop55;
                                                                                                      }
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§goto(addr548);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr483);
                                                                                                            }
                                                                                                            addr476:
                                                                                                         }
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr168);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr131);
                                                                                                }
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                             continue loop0;
                                                                                          })
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(_loc16_ && _loc2_)
                                                                                                {
                                                                                                   continue loop60;
                                                                                                }
                                                                                                §§push(0.5);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§push(Math.random() * 1.5);
                                                                                                         if(_loc15_ || this)
                                                                                                         {
                                                                                                            if(_loc15_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr214:
                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        continue loop65;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop58:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr483:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(0.5);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr487:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr506:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc15_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop61;
                                                                                                                                             }
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             loop29:
                                                                                                                                             for(; _loc15_; while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                   break loop58;
                                                                                                                                                }
                                                                                                                                                continue loop29;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             §§goto(addr506);
                                                                                                                                          }
                                                                                                                                          continue loop61;
                                                                                                                                          addr507:
                                                                                                                                       }
                                                                                                                                       continue loop62;
                                                                                                                                    }
                                                                                                                                    addr574:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * Math.random());
                                                                                                                                       addr577:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                continue loop53;
                                                                                                                                             }
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         continue loop54;
                                                                                                                                                      }
                                                                                                                                                      if(_loc16_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                                                                      loop49:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         addr548:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc16_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr528:
                                                                                                                                                               §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc15_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  §§goto(addr536);
                                                                                                                                                               }
                                                                                                                                                               addr528:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                               }
                                                                                                                                                               addr619:
                                                                                                                                                            }
                                                                                                                                                            continue loop49;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr590:
                                                                                                                                                }
                                                                                                                                                addr608:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                   addr609:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr634);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop50;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr143:
                                                                                                                        if(!(_loc15_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc15_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc15_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr165:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop57;
                                                                                                                                    }
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 addr168:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 loop71:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr323:
                                                                                                                                    loop68:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc15_ || this)
                                                                                                                                                {
                                                                                                                                                   addr346:
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   break loop19;
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             §§goto(addr507);
                                                                                                                                          }
                                                                                                                                          loop31:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                             loop37:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§0j§);
                                                                                                                                                if(_loc15_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         §§push(2);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr380:
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  break loop37;
                                                                                                                                                                  addr383:
                                                                                                                                                                  addr388:
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     addr394:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        addr395:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr487);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop37;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop68;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop51;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        continue loop71;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr635);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            addr380:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr395);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr618:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr619);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr577);
                                                                                                                                                }
                                                                                                                                                §§goto(addr380);
                                                                                                                                             }
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr383);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr638);
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ || param1))
                                                                                                                           {
                                                                                                                              continue loop63;
                                                                                                                           }
                                                                                                                           _loc9_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc16_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§goto(addr394);
                                                                                                                                 §§push(this.§7!§);
                                                                                                                              }
                                                                                                                              §§goto(addr590);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     addr224:
                                                                                                                  }
                                                                                                                  §§goto(addr587);
                                                                                                               }
                                                                                                               §§goto(addr224);
                                                                                                            }
                                                                                                            §§goto(addr486);
                                                                                                         }
                                                                                                         §§goto(addr314);
                                                                                                      }
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   §§goto(addr380);
                                                                                                }
                                                                                                §§goto(addr214);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr647:
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr627);
                                                                                    }
                                                                                    §§goto(addr634);
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(!(_loc16_ && _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr570:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr574);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr528);
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr133);
               }
               §§push(this.§1!r§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!(_loc16_ && this))
         {
            loop76:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc16_)
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = this.§1!r§[_loc4_];
                  §§push(_loc5_);
                  §§push(_loc5_.§>!^§);
                  if(!(_loc16_ && this))
                  {
                     §§push(this.§[Q§);
                     if(!_loc16_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§>!^§ = §§pop();
                  if(_loc15_)
                  {
                     if(_loc5_.§>!^§ > this.§^n§)
                     {
                        if(_loc15_ || _loc3_)
                        {
                           _loc5_.§>!^§ = this.§^n§;
                           while(true)
                           {
                              addr917:
                              loop79:
                              while(true)
                              {
                                 _loc5_.x += _loc5_.§8M§ * param1;
                                 loop80:
                                 while(true)
                                 {
                                    _loc5_.y += _loc5_.§>!^§ * param1;
                                    loop81:
                                    while(true)
                                    {
                                       _loc5_.rotation += 5 * param1;
                                       loop82:
                                       while(_loc5_.x >= -_loc5_.width / 2)
                                       {
                                          if(_loc5_.x <= this.§#!m§ + _loc5_.width / 2)
                                          {
                                             if(_loc5_.y > this.§58§ + _loc5_.height / 2)
                                             {
                                                if(_loc15_ || this)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         if(_loc15_ || param1)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               continue loop76;
                                                            }
                                                            if(!_loc16_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  continue loop82;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  continue loop80;
                                                               }
                                                               loop85:
                                                               while(true)
                                                               {
                                                                  §§push(this.§1!r§);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(§§pop().length > 0);
                                                                     if(_loc15_)
                                                                     {
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc15_ || _loc3_)
                                                                              {
                                                                                 addr793:
                                                                                 §§pop();
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop76;
                                                                                 }
                                                                                 addr796:
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    continue loop79;
                                                                                 }
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr949:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                             break loop81;
                                                                                          }
                                                                                          continue loop76;
                                                                                       }
                                                                                       §§push(_loc4_);
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc4_ = §§pop();
                                                                                       continue loop76;
                                                                                    }
                                                                                    §§goto(addr949);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr949);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_ || _loc3_)
                                                                              {
                                                                                 addr861:
                                                                                 _loc3_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       if(_loc16_ && _loc2_)
                                                                                       {
                                                                                          break loop82;
                                                                                          addr800:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop85;
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                       continue loop79;
                                                                                    }
                                                                                    continue loop81;
                                                                                    §§goto(addr861);
                                                                                 }
                                                                                 addr862:
                                                                              }
                                                                              addr887:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 continue loop81;
                                                                              }
                                                                           }
                                                                           addr854:
                                                                        }
                                                                        §§goto(addr800);
                                                                     }
                                                                     §§goto(addr793);
                                                                  }
                                                                  break;
                                                               }
                                                               if((_loc14_ = §§pop().splice(_loc4_,1)) is §1,§)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc14_.clean();
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        addr989:
                                                                        _loc5_.x = -2000;
                                                                        if(_loc16_)
                                                                        {
                                                                        }
                                                                        §§goto(addr949);
                                                                     }
                                                                     _loc5_.y = -2000;
                                                                  }
                                                                  §§goto(addr949);
                                                               }
                                                               §§goto(addr989);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr853:
                                                            }
                                                            §§goto(addr854);
                                                         }
                                                         §§goto(addr949);
                                                      }
                                                      addr822:
                                                   }
                                                   §§goto(addr862);
                                                }
                                                break loop81;
                                             }
                                             §§goto(addr767);
                                          }
                                          §§goto(addr853);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr887);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr767);
                        §§push(this.§1!r§);
                     }
                     §§goto(addr917);
                  }
                  §§goto(addr822);
               }
            }
            return;
         }
         §§goto(addr740);
      }
   }
}
