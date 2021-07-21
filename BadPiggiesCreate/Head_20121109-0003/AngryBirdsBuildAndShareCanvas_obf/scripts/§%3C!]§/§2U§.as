package §<!]§
{
   import §'V§.§7I§;
   import §,P§.§'_§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §2U§ extends Sprite
   {
      
      public static const §%!b§:int = 0;
      
      public static const §%D§:int = 1;
      
      public static const §?E§:int = 2;
      
      public static const §^9§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!b§ = 0;
         }
         loop0:
         while(true)
         {
            §%D§ = 1;
            do
            {
               §?E§ = 2;
               continue loop0;
            }
            while(_loc1_ && §2U§);
            
            return;
         }
      }
      
      private const §9!V§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §^&§:Number = 25;
      
      private const §0!5§:Number = 10;
      
      private const §"!U§:Number = 9;
      
      private var §=!!§:int;
      
      private var §-!B§:int;
      
      private var §4"&§:Array;
      
      private var §#C§:Array;
      
      private var §5z§:Point;
      
      private var §@!s§:int;
      
      public function §2U§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§5!q§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!(_loc13_ && param1))
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§=!!§ = param1;
                  do
                  {
                     this.§-!B§ = param2;
                  }
                  while(!(_loc14_ || param2));
                  
                  if(!_loc14_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc7_:Number = Math.min(§'_§.§<e§,§'_§.§=!c§);
                  var _loc8_:Number = Math.max(§'_§.§<e§,§'_§.§=!c§);
                  if(!(_loc13_ && param3))
                  {
                     §§push(param3);
                     if(!_loc13_)
                     {
                        §§push(§'_§.§=!c§);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr167:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        addr166:
                     }
                     loop6:
                     while(true)
                     {
                        param3 = §§pop();
                        loop7:
                        while(true)
                        {
                           §§push(param4);
                           if(_loc14_)
                           {
                              if(!_loc13_)
                              {
                                 §§push(§'_§.§<e§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc13_ && param1))
                                    {
                                       addr152:
                                       §§push(Number(§§pop()));
                                       if(_loc13_ && param3)
                                       {
                                          continue loop6;
                                       }
                                       param4 = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          this.§@!s§ = param5;
                                          while(!_loc13_)
                                          {
                                             this.§5z§ = new Point(param3,param4);
                                             loop10:
                                             while(!_loc13_)
                                             {
                                                while(true)
                                                {
                                                   this.§4"&§ = [];
                                                   do
                                                   {
                                                      this.§#C§ = [];
                                                   }
                                                   while(!(_loc14_ || param2));
                                                   
                                                   if(_loc14_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    §§goto(addr166);
                                 }
                              }
                              break;
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr167);
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr45);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5!q§ = null;
         loop0:
         while(true)
         {
            §§push(this.§4"&§);
            if(_loc3_ && _loc1_)
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     §§push(this.§#C§);
                     break loop0;
                  }
                  addr89:
               }
               §§goto(addr119);
            }
            §§push(this.§4"&§);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_ || _loc1_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§#C§);
            if(_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.clean();
            }
            §§goto(addr89);
         }
         if(_loc2_)
         {
            this.§4"&§ = [];
            if(!(_loc3_ && _loc2_))
            {
               this.§#C§ = [];
            }
         }
         addr119:
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§5!q§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc16_)
         {
            §§push(param1);
            if(_loc16_)
            {
               §§push(§§pop() / 20);
               if(_loc16_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§4"&§);
            if(_loc16_ || param1)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§#C§);
                  break;
               }
               §§push(this.§4"&§);
               if(_loc15_ && this)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc15_)
               {
                  §§push(Math.random() * (this.§^&§ - this.§0!5§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§0!5§);
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
                                 §§push(this.§@!s§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§%!b§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§@!s§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§%D§);
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break loop8;
                                             }
                                             §§push(this.§@!s§);
                                             while(true)
                                             {
                                                if(_loc16_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop8;
                                                addr501:
                                                §§push(this.§@!s§);
                                                if(_loc15_ && this)
                                                {
                                                   continue;
                                                }
                                                §§push(§^9§);
                                                if(_loc15_)
                                                {
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§goto(addr501);
                                                   }
                                                   addr615:
                                                   _loc7_ = Number(Math.PI / 2 * Math.random());
                                                   §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                   loop51:
                                                   while(!(_loc16_ || _loc3_))
                                                   {
                                                      loop52:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         loop53:
                                                         while(true)
                                                         {
                                                            §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                            loop54:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr709:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                  loop56:
                                                                  while(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     loop57:
                                                                     while(true)
                                                                     {
                                                                        addr330:
                                                                        addr590:
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc8_);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                           §§pop().§?X§ = §§pop();
                                                                           loop16:
                                                                           while(_loc16_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              §§push(_loc9_);
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                              §§pop().§"b§ = §§pop();
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       _loc5_.x = this.§5z§.x;
                                                                                       while(_loc16_ || param1)
                                                                                       {
                                                                                          _loc5_.y = this.§5z§.y;
                                                                                          loop19:
                                                                                          for(; _loc16_; while(!(_loc15_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc15_ && _loc2_))
                                                                                             {
                                                                                                _loc5_.§1I§.play();
                                                                                                if(_loc15_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr85);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr607);
                                                                                             }
                                                                                          })
                                                                                          {
                                                                                             this.§#C§.push(_loc5_);
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§push(0.5);
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc15_ && param1))
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§push(Math.random() * 1.5);
                                                                                                            if(!(_loc15_ && this))
                                                                                                            {
                                                                                                               if(_loc16_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     addr230:
                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop21:
                                                                                                                           while(!_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                    loop22:
                                                                                                                                    for(; _loc16_; if(!(_loc15_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       continue loop20;
                                                                                                                                    })
                                                                                                                                    {
                                                                                                                                       addr261:
                                                                                                                                       if(_loc16_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(0.2);
                                                                                                                                             if(_loc16_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop56;
                                                                                                                                                   }
                                                                                                                                                   addr159:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc16_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  _loc5_.§1I§ = §7I§.§[E§.§ ";§(_loc5_,{
                                                                                                                                                                     "scaleX":_loc11_,
                                                                                                                                                                     "scaleY":_loc11_
                                                                                                                                                                  },{
                                                                                                                                                                     "scaleX":_loc10_,
                                                                                                                                                                     "scaleY":_loc10_
                                                                                                                                                                  },5);
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               while(false);
                                                                                                                                                               
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            continue loop53;
                                                                                                                                                            addr85:
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop53;
                                                                                                                                                      }
                                                                                                                                                      addr625:
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         continue loop15;
                                                                                                                                                         addr628:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr719:
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                            while(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§0!5§);
                                                                                                                                                               while(!(_loc15_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc15_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr467:
                                                                                                                                                                     §§push(2);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        break loop21;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop1;
                                                                                                                                                                     addr467:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr637:
                                                                                                                                                            _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                                                                                                            §§goto(addr625);
                                                                                                                                                            §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                            addr638:
                                                                                                                                                            addr486:
                                                                                                                                                            addr685:
                                                                                                                                                         }
                                                                                                                                                         addr676:
                                                                                                                                                         if(_loc16_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr684);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr483:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr723);
                                                                                                                                                   §§push(§§pop() * Math.random());
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   break loop16;
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             §§goto(addr159);
                                                                                                                                          }
                                                                                                                                          §§goto(addr628);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                          §§goto(addr261);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                       addr546:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0.5);
                                                                                                                                          addr547:
                                                                                                                                          addr563:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr548:
                                                                                                                                             while(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   addr552:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                      addr497:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         addr498:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr483);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop35;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr676);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc15_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop51;
                                                                                                                                             }
                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                             §§goto(addr571);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              §§goto(addr548);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                              §§goto(addr467);
                                                                                                                           }
                                                                                                                           addr240:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop54;
                                                                                                                              }
                                                                                                                              §§push(2);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break loop20;
                                                                                                                                    addr355:
                                                                                                                                    if(_loc15_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc16_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc16_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr395);
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr611);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr615);
                                                                                                                                                }
                                                                                                                                                addr380:
                                                                                                                                             }
                                                                                                                                             §§goto(addr395);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr547);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr370:
                                                                                                                                    }
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 §§goto(addr614);
                                                                                                                              }
                                                                                                                              §§goto(addr467);
                                                                                                                           }
                                                                                                                           §§goto(addr452);
                                                                                                                        }
                                                                                                                        addr422:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr240);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc15_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§goto(addr676);
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               addr668:
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                         }
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      §§goto(addr497);
                                                                                                   }
                                                                                                   §§goto(addr471);
                                                                                                }
                                                                                                §§goto(addr230);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc16_ || this)
                                                                                                {
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      while(!(_loc15_ && param1))
                                                                                                      {
                                                                                                         §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§goto(addr355);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop7;
                                                                                                      §§goto(addr380);
                                                                                                      addr441:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr668);
                                                                                                      }
                                                                                                      §§goto(addr675);
                                                                                                      addr667:
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr498);
                                                                                 }
                                                                                 break;
                                                                                 if(!(_loc16_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§goto(addr422);
                                                                                    §§push(this.§^&§);
                                                                                 }
                                                                                 §§goto(addr638);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          break loop15;
                                                                                       }
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop57;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr552);
                                                                                    }
                                                                                    §§goto(addr616);
                                                                                 }
                                                                                 §§goto(addr486);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                        }
                                                                        addr590:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr563);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr611:
                                                   addr614:
                                                   addr607:
                                                   addr616:
                                                   _loc8_ = §§pop();
                                                   §§goto(addr590);
                                                   addr606:
                                                }
                                                if(_loc15_ && param1)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc15_ && this)
                                                {
                                                   continue loop7;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   §§goto(addr539);
                                                }
                                                §§goto(addr330);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       if(_loc16_ || param1)
                                       {
                                          if(!(_loc15_ && param1))
                                          {
                                             §§goto(addr667);
                                             §§push(Math.PI * (Math.random() - 0.5));
                                          }
                                          §§goto(addr709);
                                       }
                                       §§goto(addr685);
                                    }
                                    §§goto(addr719);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr590);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc16_ || _loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!_loc15_)
         {
            loop58:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!_loc16_)
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = this.§#C§[_loc4_];
                  §§push(_loc5_);
                  §§push(_loc5_.§"b§);
                  if(_loc16_ || this)
                  {
                     §§push(this.GRAVITY);
                     if(!(_loc15_ && _loc3_))
                     {
                        §§push(§§pop() * param1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§"b§ = §§pop();
                  if(!(_loc15_ && this))
                  {
                     if(_loc5_.§"b§ > this.§"!U§)
                     {
                        while(true)
                        {
                           _loc5_.§"b§ = this.§"!U§;
                           addr1000:
                           addr970:
                           while(true)
                           {
                           }
                           if(!(_loc16_ || _loc2_))
                           {
                              continue;
                           }
                           _loc5_.rotation += 5 * param1;
                           if(!(_loc15_ && _loc3_))
                           {
                              if(_loc5_.x < -_loc5_.width / 2)
                              {
                                 loop68:
                                 while(true)
                                 {
                                    §§push(true);
                                    if(_loc16_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc16_ || this)
                                       {
                                          loop67:
                                          while(true)
                                          {
                                             §§push(this.§#C§);
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(§§pop().length > 0);
                                                if(_loc16_)
                                                {
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§pop();
                                                            if(_loc15_ && _loc3_)
                                                            {
                                                               continue loop58;
                                                            }
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               addr854:
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr1005:
                                                                     addr1004:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc16_ || _loc2_)
                                                                        {
                                                                           addr1013:
                                                                           §§push(this.§#C§);
                                                                           break;
                                                                        }
                                                                        continue loop58;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     continue loop58;
                                                                  }
                                                                  §§goto(addr1005);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     addr877:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                     }
                                                                     §§goto(addr854);
                                                                  }
                                                                  addr876:
                                                               }
                                                               §§goto(addr1013);
                                                            }
                                                            loop65:
                                                            while(true)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        continue loop67;
                                                                     }
                                                                     continue loop68;
                                                                  }
                                                                  addr908:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc15_)
                                                                     {
                                                                        break loop65;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     continue loop67;
                                                                  }
                                                                  §§goto(addr1000);
                                                               }
                                                            }
                                                            §§goto(addr1005);
                                                         }
                                                         §§goto(addr1004);
                                                      }
                                                      §§goto(addr1005);
                                                   }
                                                   §§goto(addr877);
                                                }
                                                §§goto(addr1005);
                                             }
                                             break;
                                          }
                                          if((_loc14_ = §§pop().splice(_loc4_,1)) is §5!q§)
                                          {
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                _loc14_.clean();
                                                if(_loc16_)
                                                {
                                                   addr1035:
                                                   _loc5_.x = -2000;
                                                   if(!_loc15_)
                                                   {
                                                      addr1040:
                                                      _loc5_.y = -2000;
                                                   }
                                                   §§goto(addr1005);
                                                }
                                             }
                                             §§goto(addr1040);
                                          }
                                          §§goto(addr1035);
                                          addr813:
                                       }
                                       §§goto(addr1013);
                                    }
                                    §§goto(addr1005);
                                 }
                              }
                              if(_loc5_.x > this.§=!!§ + _loc5_.width / 2)
                              {
                                 §§goto(addr908);
                              }
                              if(_loc5_.y > this.§-!B§ + _loc5_.height / 2)
                              {
                                 §§goto(addr876);
                              }
                              §§goto(addr813);
                           }
                           §§goto(addr1013);
                        }
                     }
                     while(true)
                     {
                        _loc5_.x += _loc5_.§?X§ * param1;
                        if(!_loc15_)
                        {
                           _loc5_.y += _loc5_.§"b§ * param1;
                           if(_loc15_)
                           {
                              continue loop58;
                           }
                           §§goto(addr970);
                        }
                        break;
                        §§goto(addr1000);
                     }
                     §§goto(addr1013);
                  }
                  §§goto(addr908);
               }
            }
            return;
         }
         §§goto(addr776);
      }
   }
}
