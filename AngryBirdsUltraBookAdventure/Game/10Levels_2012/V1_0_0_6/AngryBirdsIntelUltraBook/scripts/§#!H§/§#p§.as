package §#!H§
{
   import §2!H§.§-!,§;
   import §>! §.§^!c§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#p§ extends Sprite
   {
      
      public static const §%!G§:int = 0;
      
      public static const §#r§:int = 1;
      
      public static const §3s§:int = 2;
      
      public static const §8!C§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%!G§ = 0;
         }
         loop0:
         while(true)
         {
            §#r§ = 1;
            loop1:
            do
            {
               §3s§ = 2;
               while(!_loc1_)
               {
                  §8!C§ = 3;
                  if(!(_loc1_ && _loc1_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      private const §[!;§:uint = 40;
      
      private const §<]§:Number = 0.3;
      
      private const §,]§:Number = 25;
      
      private const §&j§:Number = 10;
      
      private const §'x§:Number = 9;
      
      private var §;;§:int;
      
      private var §]"§:int;
      
      private var §7C§:Array;
      
      private var §=2§:Array;
      
      private var § @§:Point;
      
      private var §+!L§:int;
      
      public function §#p§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§&!n§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc14_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  this.§;;§ = param1;
                  continue loop0;
               }
            }
            addr54:
         }
         while(true)
         {
            this.§]"§ = param2;
            if(!(_loc14_ || this))
            {
               continue;
            }
            if(!_loc13_)
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
         var _loc7_:Number = Math.min(§^!c§.§6W§,§^!c§.§#!M§);
         var _loc8_:Number = Math.max(§^!c§.§6W§,§^!c§.§#!M§);
         if(!(_loc13_ && param2))
         {
            §§push(param3);
            while(true)
            {
               §§push(§^!c§.§#!M§);
               addr181:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr182:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr183:
                     while(true)
                     {
                        param3 = §§pop();
                     }
                  }
               }
               addr168:
               if(_loc13_ && param1)
               {
                  continue;
               }
               addr176:
               param4 = §§pop();
               loop8:
               while(true)
               {
                  this.§+!L§ = param5;
                  while(_loc14_ || this)
                  {
                     this.§ @§ = new Point(param3,param4);
                     loop10:
                     while(!_loc13_)
                     {
                        loop11:
                        while(true)
                        {
                           this.§7C§ = [];
                           while(!_loc13_)
                           {
                              this.§=2§ = [];
                              if(_loc14_ || this)
                              {
                                 continue loop11;
                              }
                           }
                           continue loop10;
                        }
                        continue loop8;
                     }
                  }
                  addr184:
                  while(true)
                  {
                     §§push(param4);
                     if(_loc14_ || param2)
                     {
                        if(!_loc13_)
                        {
                           if(_loc14_ || param1)
                           {
                              §§push(§^!c§.§6W§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc14_ || param2)
                                 {
                                    §§goto(addr168);
                                 }
                                 §§goto(addr176);
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr176);
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!n§ = null;
         loop0:
         while(true)
         {
            §§push(this.§7C§);
            if(_loc3_ && _loc1_)
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(this.§=2§);
                     break loop0;
                  }
                  addr79:
               }
               §§goto(addr86);
            }
            §§push(this.§7C§);
            if(!_loc2_)
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§=2§);
            if(!_loc2_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr79);
         }
         if(_loc2_)
         {
            §§goto(addr86);
         }
         addr86:
         this.§7C§ = [];
         if(!_loc3_)
         {
            this.§=2§ = [];
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§&!n§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc16_ && _loc3_))
            {
               §§push(§§pop() / 20);
               if(!(_loc16_ && _loc2_))
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr66:
               loop0:
               while(true)
               {
                  §§push(this.§7C§);
                  if(!(_loc16_ && _loc3_))
                  {
                     if(§§pop().length <= 0)
                     {
                        §§push(this.§=2§);
                        break;
                     }
                     §§push(this.§7C§);
                     if(!(_loc15_ || _loc2_))
                     {
                        break;
                     }
                     _loc5_ = §§pop().shift();
                     if(!_loc16_)
                     {
                        §§push(Math.random() * (this.§,]§ - this.§&j§));
                        loop1:
                        while(true)
                        {
                           §§push(this.§&j§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§+!L§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§%!G§);
                                          loop7:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.§+!L§);
                                             while(true)
                                             {
                                                §§push(§#r§);
                                                addr620:
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§push(this.§+!L§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§3s§);
                                                            addr558:
                                                            while(§§pop() != §§pop())
                                                            {
                                                               continue loop10;
                                                            }
                                                            loop57:
                                                            while(true)
                                                            {
                                                               §§push(Math.PI / 2);
                                                               loop42:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * Math.random());
                                                                  loop51:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           loop66:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                              loop49:
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 loop50:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                break loop46;
                                                                                             }
                                                                                             continue loop50;
                                                                                          }
                                                                                          addr537:
                                                                                       }
                                                                                       loop47:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          loop72:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                addr271:
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc6_);
                                                                                                   }
                                                                                                   §§pop().§8E§ = §§pop();
                                                                                                   loop31:
                                                                                                   while(_loc15_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      §§push(_loc9_);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc6_);
                                                                                                      }
                                                                                                      §§pop().§3F§ = §§pop();
                                                                                                      addr249:
                                                                                                      addr270:
                                                                                                      addr233:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc16_ && param1)
                                                                                                         {
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         if(_loc15_ || _loc2_)
                                                                                                         {
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr495:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.PI * (Math.random() - 0.5));
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  addr513:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr514:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop44:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                 loop48:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop57;
                                                                                                                                             }
                                                                                                                                             if(_loc16_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   loop38:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr647:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                               addr596:
                                                                                                                                                               loop39:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc15_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           break loop9;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                           continue loop47;
                                                                                                                                                                        }
                                                                                                                                                                        addr676:
                                                                                                                                                                        addr676:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                                                                                                                        }
                                                                                                                                                                        continue loop72;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr587);
                                                                                                                                                                     addr604:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop1;
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop30;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop39;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr650:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr693:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               addr694:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                                  addr675:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr693:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr676);
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr646:
                                                                                                                                                }
                                                                                                                                                §§goto(addr596);
                                                                                                                                             }
                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§&j§);
                                                                                                                                                addr386:
                                                                                                                                                addr381:
                                                                                                                                                loop34:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      loop35:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr395:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,]§);
                                                                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc15_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop46;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc15_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop36;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop35;
                                                                                                                                                                        }
                                                                                                                                                                        addr630:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc15_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc16_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop2;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr646);
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr371:
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr374:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop34;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           addr374:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr419);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr596);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr407:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr675);
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop48;
                                                                                                                                                   }
                                                                                                                                                   continue loop49;
                                                                                                                                                }
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                break loop31;
                                                                                                                                             }
                                                                                                                                             addr419:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr537);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr446:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          addr687:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * Math.random());
                                                                                                                                             addr690:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop48;
                                                                                                                                       }
                                                                                                                                       addr686:
                                                                                                                                    }
                                                                                                                                    §§goto(addr693);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr523:
                                                                                                                           }
                                                                                                                           §§goto(addr687);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr523);
                                                                                                      }
                                                                                                      _loc5_.x = this.§ @§.x;
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc15_ || _loc3_)
                                                                                                         {
                                                                                                            _loc5_.y = this.§ @§.y;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(!(_loc16_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     §§goto(addr664);
                                                                                                                  }
                                                                                                                  §§goto(addr650);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr249);
                                                                                                               }
                                                                                                            }
                                                                                                            addr213:
                                                                                                         }
                                                                                                         §§goto(addr446);
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§=2§.push(_loc5_);
                                                                                                         loop13:
                                                                                                         while(_loc15_)
                                                                                                         {
                                                                                                            §§push(0.5);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(Math.random() * 1.5);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr179:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop14:
                                                                                                                                    while(!(_loc16_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          while(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(0.2);
                                                                                                                                                if(_loc15_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr140:
                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                      loop16:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.§>P§ = §-!,§.§7!j§.§,!`§(_loc5_,{
                                                                                                                                                                        "scaleX":_loc11_,
                                                                                                                                                                        "scaleY":_loc11_
                                                                                                                                                                     },{
                                                                                                                                                                        "scaleX":_loc10_,
                                                                                                                                                                        "scaleY":_loc10_
                                                                                                                                                                     },5);
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  while(false);
                                                                                                                                                                  
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               continue loop72;
                                                                                                                                                            }
                                                                                                                                                            continue loop66;
                                                                                                                                                         }
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr410);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr374);
                                                                                                                                                }
                                                                                                                                                §§goto(addr140);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr328:
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                §§goto(addr694);
                                                                                                                                             }
                                                                                                                                             if(_loc16_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc5_.§>P§.play();
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr89);
                                                                                                                                                }
                                                                                                                                                §§goto(addr109);
                                                                                                                                             }
                                                                                                                                             §§goto(addr233);
                                                                                                                                          }
                                                                                                                                          §§goto(addr213);
                                                                                                                                       }
                                                                                                                                       §§goto(addr514);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             §§goto(addr321);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr647);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr386);
                                                                                                                                       }
                                                                                                                                       §§goto(addr693);
                                                                                                                                    }
                                                                                                                                    addr311:
                                                                                                                                    addr179:
                                                                                                                                 }
                                                                                                                                 §§goto(addr395);
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                              §§push(_loc12_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr311);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr299:
                                                                                                                        }
                                                                                                                        §§goto(addr179);
                                                                                                                     }
                                                                                                                     §§goto(addr638);
                                                                                                                  }
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               §§goto(addr307);
                                                                                                            }
                                                                                                            §§goto(addr179);
                                                                                                         }
                                                                                                         §§goto(addr429);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr299);
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   §§goto(addr328);
                                                                                                }
                                                                                                addr587:
                                                                                                addr271:
                                                                                             }
                                                                                             §§goto(addr604);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr690);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr630);
                                                }
                                                if(!(_loc16_ && this))
                                                {
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr686);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr226);
                  }
                  break;
               }
               var _loc2_:int = §§pop().length;
               §§push(_loc2_);
               if(_loc15_ || param1)
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(!(_loc16_ && this))
               {
                  loop74:
                  while(_loc4_ >= 0)
                  {
                     _loc3_ = false;
                     if(_loc16_ && this)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = this.§=2§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§3F§);
                        if(!_loc16_)
                        {
                           §§push(this.§<]§);
                           if(_loc15_ || _loc3_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§3F§ = §§pop();
                        if(!(_loc16_ && this))
                        {
                           if(_loc5_.§3F§ > this.§'x§)
                           {
                              while(true)
                              {
                                 _loc5_.§3F§ = this.§'x§;
                                 addr959:
                                 while(true)
                                 {
                                 }
                              }
                              addr955:
                           }
                           while(true)
                           {
                              _loc5_.x += _loc5_.§8E§ * param1;
                              loop79:
                              while(true)
                              {
                                 _loc5_.y += _loc5_.§3F§ * param1;
                                 if(_loc16_ && param1)
                                 {
                                    break;
                                 }
                                 if(_loc15_)
                                 {
                                    _loc5_.rotation += 5 * param1;
                                    if(!_loc16_)
                                    {
                                       if(_loc5_.x < -_loc5_.width / 2)
                                       {
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             §§push(true);
                                             continue;
                                          }
                                          addr967:
                                          §§push(this.§=2§);
                                       }
                                       else
                                       {
                                          if(_loc5_.x <= this.§;;§ + _loc5_.width / 2)
                                          {
                                             if(_loc5_.y > this.§]"§ + _loc5_.height / 2)
                                             {
                                                if(_loc15_)
                                                {
                                                   §§push(true);
                                                   if(_loc15_ || param1)
                                                   {
                                                      if(_loc16_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc3_ = §§pop();
                                                      loop80:
                                                      while(true)
                                                      {
                                                         addr787:
                                                         addr969:
                                                         loop81:
                                                         while(true)
                                                         {
                                                            §§push(this.§=2§);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               §§push(§§pop().length > 0);
                                                               if(_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc15_ || _loc3_))
                                                                        {
                                                                           break loop79;
                                                                        }
                                                                        if(!_loc15_)
                                                                        {
                                                                           continue loop80;
                                                                        }
                                                                        if(!(_loc16_ && this))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr964:
                                                                                 addr963:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop79;
                                                                                    }
                                                                                    §§goto(addr967);
                                                                                 }
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 break loop79;
                                                                              }
                                                                              §§goto(addr964);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(true);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 break loop79;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr963);
                                                                           addr870:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop81;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr964);
                                                            }
                                                            break;
                                                         }
                                                         if((_loc14_ = §§pop().splice(_loc4_,1)) is §&!n§)
                                                         {
                                                            if(_loc15_ || this)
                                                            {
                                                               _loc14_.clean();
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  addr1004:
                                                                  _loc5_.x = -2000;
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr1009:
                                                                     _loc5_.y = -2000;
                                                                  }
                                                                  §§goto(addr964);
                                                               }
                                                            }
                                                            §§goto(addr1009);
                                                         }
                                                         §§goto(addr1004);
                                                      }
                                                      addr856:
                                                   }
                                                   §§goto(addr964);
                                                }
                                                §§goto(addr856);
                                             }
                                             §§goto(addr787);
                                          }
                                          §§goto(addr870);
                                       }
                                       §§goto(addr969);
                                    }
                                    §§goto(addr967);
                                 }
                                 else
                                 {
                                    §§goto(addr955);
                                 }
                              }
                              continue loop74;
                              §§goto(addr959);
                           }
                        }
                        §§goto(addr876);
                     }
                  }
                  return;
               }
               §§goto(addr755);
            }
            §§goto(addr64);
         }
         §§goto(addr66);
      }
   }
}
