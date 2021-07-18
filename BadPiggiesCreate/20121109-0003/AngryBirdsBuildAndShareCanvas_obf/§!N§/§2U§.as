package §!N§
{
   import §'V§.§7I§;
   import §,P§.§'_§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2U§ extends Sprite
   {
      
      public static const §%!b§:int = 0;
      
      public static const §%D§:int = 1;
      
      public static const §?E§:int = 2;
      
      public static const §^9§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!b§ = 0;
            while(true)
            {
               §%D§ = 1;
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            §?E§ = 2;
            do
            {
               §^9§ = 3;
            }
            while(_loc2_ && _loc1_);
            
            if(_loc1_ || _loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
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
      
      private var §&l§:Number;
      
      public function §2U§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "")
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§@!3§ = null;
         if(_loc11_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param8);
               if(!_loc12_)
               {
                  if(§§pop() == "")
                  {
                     while(true)
                     {
                        §§push(§@!3§.§]=§);
                        if(_loc11_ || this)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                           }
                           addr147:
                        }
                        while(true)
                        {
                           param8 = §§pop();
                           addr149:
                           while(true)
                           {
                              loop5:
                              while(_loc11_ || param3)
                              {
                                 this.scrollRect = new Rectangle(0,0,this.§=!!§,this.§-!B§);
                                 loop8:
                                 while(true)
                                 {
                                    this.§@!s§ = param5;
                                    while(true)
                                    {
                                       this.§5z§ = new Point(param3,param4);
                                       continue loop8;
                                       addr35:
                                       if(_loc12_ && param2)
                                       {
                                          continue;
                                       }
                                       addr42:
                                       if(!(_loc12_ && param1))
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                this.§4"&§ = [];
                                                addr55:
                                                while(_loc11_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop5;
                                             }
                                             continue loop8;
                                             addr51:
                                          }
                                          var _loc10_:int = 0;
                                          addr241:
                                          if(_loc10_ < param6)
                                          {
                                             §§push(param8);
                                             if(_loc11_)
                                             {
                                                §§push(§@!3§.§]=§);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc11_ || param2)
                                                      {
                                                         _loc9_ = new §5!q§();
                                                         if(!_loc12_)
                                                         {
                                                            addr189:
                                                            _loc9_.x = -2000;
                                                            if(!_loc12_)
                                                            {
                                                               _loc9_.y = -2000;
                                                               addr194:
                                                            }
                                                            this.addChild(_loc9_);
                                                            addr219:
                                                            if(_loc11_ || param1)
                                                            {
                                                               addr208:
                                                               this.§4"&§[_loc10_] = _loc9_;
                                                               _loc10_++;
                                                               if(!_loc12_)
                                                               {
                                                                  if(!(_loc12_ && param3))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr208);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               addr214:
                                                               §§goto(addr214);
                                                            }
                                                            addr230:
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   addr180:
                                                   §§push(param8);
                                                   §§push(§@!3§.§?H§);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      _loc9_ = new §"!J§();
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr180);
                                          }
                                          if(_loc11_)
                                          {
                                             §§goto(addr246);
                                          }
                                          addr246:
                                          this.§&l§ = param7;
                                          return;
                                       }
                                       while(true)
                                       {
                                          this.§-!B§ = param2 * §'_§.§<e§;
                                          continue loop5;
                                          §§goto(addr42);
                                       }
                                       addr131:
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§=!!§ = param1 * §'_§.§=!c§;
                     §§goto(addr131);
                     §§goto(addr149);
                  }
               }
               §§goto(addr147);
            }
         }
         §§goto(addr98);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@!3§ = null;
         loop0:
         while(true)
         {
            §§push(this.§4"&§);
            if(!(_loc3_ && _loc2_))
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§4"&§);
                  if(_loc2_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc3_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     §§push(this.§#C§);
                     while(§§pop().length > 0)
                     {
                        §§push(this.§#C§);
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr106);
                  }
                  addr74:
               }
               addr86:
               this.§4"&§ = [];
               if(!(_loc3_ && this))
               {
                  addr106:
                  this.§#C§ = [];
               }
               return;
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(_loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr74);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§@!3§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc16_)
         {
            §§push(this);
            §§push(this.§&l§);
            if(_loc16_ || _loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§&l§ = §§pop();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§&l§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc15_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr77:
                        }
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc15_)
                           {
                              §§push(20);
                              if(!(_loc16_ || param1))
                              {
                                 break;
                              }
                              §§push(§§pop() / §§pop());
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           if(_loc15_)
                           {
                              continue loop2;
                           }
                           param1 = §§pop();
                           if(!_loc15_)
                           {
                              if(_loc15_)
                              {
                                 continue loop0;
                              }
                              if(false)
                              {
                                 continue loop1;
                              }
                              addr760:
                              §§push(this.§4"&§);
                              if(_loc16_ || _loc3_)
                              {
                                 if(§§pop().length > 0)
                                 {
                                    §§push(this.§4"&§);
                                    if(_loc16_)
                                    {
                                       _loc5_ = §§pop().shift();
                                       if(_loc16_)
                                       {
                                          addr758:
                                          §§push(Math.random() * (this.§^&§ - this.§0!5§));
                                          if(!_loc15_)
                                          {
                                             addr756:
                                             §§push(Number(§§pop() + this.§0!5§));
                                          }
                                          _loc6_ = §§pop();
                                          addr759:
                                          if(this.§@!s§ == §%!b§)
                                          {
                                             addr731:
                                             §§push(-(Math.PI / 2));
                                             if(_loc16_ || _loc3_)
                                             {
                                                addr742:
                                                _loc7_ = Number(§§pop() * Math.random());
                                                addr719:
                                                _loc8_ = Number(Math.sin(_loc7_ - Math.PI / 2));
                                                addr707:
                                                _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                addr307:
                                                §§push(_loc5_);
                                                §§push(_loc8_);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().§?X§ = §§pop();
                                                addr708:
                                                addr741:
                                                addr743:
                                                addr720:
                                                if(!(_loc15_ && _loc3_))
                                                {
                                                   §§push(_loc5_);
                                                   §§push(_loc9_);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                   }
                                                   §§pop().§"b§ = §§pop();
                                                   _loc5_.x = this.§5z§.x;
                                                   addr306:
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         _loc5_.y = this.§5z§.y;
                                                         addr269:
                                                         if(_loc16_)
                                                         {
                                                            this.§#C§.push(_loc5_);
                                                            addr260:
                                                            if(!_loc15_)
                                                            {
                                                               §§push(0.5);
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(Math.random() * 1.5);
                                                                           if(_loc16_)
                                                                           {
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr225:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr228:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr231:
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             if(_loc16_ || param1)
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      §§push(0.2);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr162:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc16_ || param1)
                                                                                                                           {
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              addr179:
                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr128:
                                                                                                                                    _loc5_.§1I§ = §7I§.§[E§.§ ";§(_loc5_,{
                                                                                                                                       "scaleX":_loc11_,
                                                                                                                                       "scaleY":_loc11_
                                                                                                                                    },{
                                                                                                                                       "scaleX":_loc10_,
                                                                                                                                       "scaleY":_loc10_
                                                                                                                                    },5);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       _loc5_.§1I§.play();
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr128);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr760);
                                                                                                                                                }
                                                                                                                                                §§goto(addr306);
                                                                                                                                             }
                                                                                                                                             §§goto(addr231);
                                                                                                                                          }
                                                                                                                                          §§goto(addr179);
                                                                                                                                       }
                                                                                                                                       §§goto(addr128);
                                                                                                                                    }
                                                                                                                                    §§goto(addr708);
                                                                                                                                 }
                                                                                                                                 addr559:
                                                                                                                                 §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    addr492:
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr460:
                                                                                                                                          §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ || param1)
                                                                                                                                             {
                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                addr431:
                                                                                                                                                §§push(this.§0!5§);
                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                {
                                                                                                                                                   addr439:
                                                                                                                                                   §§push(§§pop() / 2);
                                                                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr448:
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      addr449:
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         addr400:
                                                                                                                                                         §§push(this.§^&§);
                                                                                                                                                         §§push(2);
                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr409:
                                                                                                                                                            §§push(Number(§§pop() / §§pop()));
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                               addr418:
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc15_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr330:
                                                                                                                                                                     §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr338:
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr346:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc15_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr361:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr551:
                                                                                                                                                                                    if(_loc16_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                                                                   addr394:
                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr307);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr759);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr731);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr741);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr667:
                                                                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                                                                             addr657:
                                                                                                                                                                                             _loc9_ = Number(Math.cos(_loc7_ + Math.PI));
                                                                                                                                                                                             §§goto(addr307);
                                                                                                                                                                                             addr658:
                                                                                                                                                                                             addr675:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr707);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr598:
                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                       if(!(_loc15_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr570:
                                                                                                                                                                                          §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                             addr578:
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr707);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr646:
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr598);
                                                                                                                                                                                                   §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr743);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr598);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc7_ = Number(§§pop());
                                                                                                                                                                                          addr694:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr667);
                                                                                                                                                                                       §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                       §§goto(addr559);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr719);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr460);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr559);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr409);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr756);
                                                                                                                                                                     }
                                                                                                                                                                     addr534:
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr548:
                                                                                                                                                                        §§push(§§pop() * 0.5);
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr551);
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr742);
                                                                                                                                                                     }
                                                                                                                                                                     _loc7_ = Number(§§pop());
                                                                                                                                                                     addr644:
                                                                                                                                                                     §§goto(addr646);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr731);
                                                                                                                                                               }
                                                                                                                                                               addr692:
                                                                                                                                                               §§goto(addr694);
                                                                                                                                                               §§push(Math.PI * (Math.random() - 0.5) * 0.5);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr756);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr439);
                                                                                                                                                      }
                                                                                                                                                      addr634:
                                                                                                                                                      §§push(Math.PI / 2);
                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr644);
                                                                                                                                                         §§push(§§pop() * Math.random());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr731);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr570);
                                                                                                                                                }
                                                                                                                                                §§goto(addr548);
                                                                                                                                                addr475:
                                                                                                                                             }
                                                                                                                                             §§goto(addr570);
                                                                                                                                          }
                                                                                                                                          §§goto(addr634);
                                                                                                                                       }
                                                                                                                                       §§goto(addr720);
                                                                                                                                    }
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr534);
                                                                                                                                          §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                       }
                                                                                                                                       §§goto(addr658);
                                                                                                                                    }
                                                                                                                                    §§goto(addr578);
                                                                                                                                 }
                                                                                                                                 §§goto(addr692);
                                                                                                                              }
                                                                                                                              §§goto(addr418);
                                                                                                                           }
                                                                                                                           §§goto(addr657);
                                                                                                                        }
                                                                                                                        §§goto(addr346);
                                                                                                                     }
                                                                                                                     §§goto(addr225);
                                                                                                                  }
                                                                                                                  §§goto(addr448);
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            §§goto(addr330);
                                                                                                         }
                                                                                                         §§goto(addr228);
                                                                                                      }
                                                                                                      §§goto(addr162);
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                                §§goto(addr742);
                                                                                             }
                                                                                             §§goto(addr269);
                                                                                          }
                                                                                          §§goto(addr260);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 §§goto(addr418);
                                                                              }
                                                                              §§goto(addr548);
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr439);
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            §§goto(addr306);
                                                            addr271:
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr675);
                                                   }
                                                   §§goto(addr475);
                                                }
                                                §§goto(addr492);
                                             }
                                             §§goto(addr758);
                                          }
                                          addr681:
                                          §§push(this.§@!s§);
                                          if(!_loc15_)
                                          {
                                             addr684:
                                             if(§§pop() == §%D§)
                                             {
                                                §§goto(addr418);
                                             }
                                             addr612:
                                             §§push(this.§@!s§);
                                             if(_loc16_ || _loc2_)
                                             {
                                                addr620:
                                                §§push(§?E§);
                                                if(!(_loc15_ && _loc3_))
                                                {
                                                   if(_loc16_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§goto(addr448);
                                                      }
                                                      §§push(this.§@!s§);
                                                      if(_loc16_ || this)
                                                      {
                                                         §§push(§^9§);
                                                         if(_loc16_ || _loc2_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§goto(addr492);
                                                            }
                                                            §§goto(addr742);
                                                         }
                                                         §§goto(addr620);
                                                      }
                                                      §§goto(addr612);
                                                   }
                                                   §§goto(addr758);
                                                }
                                                §§goto(addr684);
                                             }
                                             §§goto(addr681);
                                          }
                                          §§goto(addr758);
                                       }
                                       §§goto(addr271);
                                    }
                                    addr774:
                                    var _loc2_:int = §§pop().length;
                                    §§push(_loc2_);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(int(§§pop() - 1));
                                    }
                                    var _loc4_:* = §§pop();
                                    if(!(_loc15_ && param1))
                                    {
                                       addr1088:
                                       if(_loc4_ >= 0)
                                       {
                                          _loc3_ = false;
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             addr806:
                                             _loc5_ = this.§#C§[_loc4_];
                                             §§push(_loc5_);
                                             §§push(_loc5_.§"b§);
                                             if(_loc16_)
                                             {
                                                §§push(this.GRAVITY);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§"b§ = §§pop();
                                             if(_loc16_ || this)
                                             {
                                                if(_loc5_.§"b§ > this.§"!U§)
                                                {
                                                   addr1016:
                                                   _loc5_.§"b§ = this.§"!U§;
                                                }
                                                _loc5_.x += _loc5_.§?X§ * param1;
                                                if(!_loc15_)
                                                {
                                                   _loc5_.y += _loc5_.§"b§ * param1;
                                                   if(!(_loc15_ && this))
                                                   {
                                                      _loc5_.rotation += 5 * param1;
                                                      if(_loc16_)
                                                      {
                                                         if(_loc5_.x < -_loc5_.width / 2)
                                                         {
                                                            if(_loc16_ || this)
                                                            {
                                                               addr966:
                                                               _loc3_ = true;
                                                               addr833:
                                                               addr967:
                                                               §§push(this.§#C§);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§§pop().length > 0);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             addr885:
                                                                                             §§goto(addr833);
                                                                                          }
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             addr1030:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr1035:
                                                                                                   addr1033:
                                                                                                   if((_loc14_ = this.§#C§.splice(_loc4_,1)) is §5!q§)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         _loc14_.clean();
                                                                                                         if(_loc15_ && param1)
                                                                                                         {
                                                                                                         }
                                                                                                         addr1068:
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc15_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         §§goto(addr1088);
                                                                                                      }
                                                                                                   }
                                                                                                   _loc5_.x = -2000;
                                                                                                   if(_loc16_ || _loc3_)
                                                                                                   {
                                                                                                      _loc5_.y = -2000;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1088);
                                                                                             }
                                                                                             §§goto(addr1068);
                                                                                          }
                                                                                          §§goto(addr1030);
                                                                                       }
                                                                                       §§goto(addr967);
                                                                                    }
                                                                                    §§goto(addr1088);
                                                                                 }
                                                                                 §§goto(addr966);
                                                                              }
                                                                              addr915:
                                                                              _loc3_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§goto(addr966);
                                                                              }
                                                                              §§goto(addr1088);
                                                                           }
                                                                        }
                                                                        §§goto(addr1030);
                                                                     }
                                                                     addr940:
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        addr948:
                                                                        §§goto(addr885);
                                                                     }
                                                                     §§goto(addr1088);
                                                                  }
                                                                  §§goto(addr1030);
                                                               }
                                                               §§goto(addr1035);
                                                            }
                                                            §§goto(addr1088);
                                                         }
                                                         if(_loc5_.x > this.§=!!§ + _loc5_.width / 2)
                                                         {
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§goto(addr940);
                                                               §§push(true);
                                                            }
                                                            §§goto(addr948);
                                                         }
                                                         if(_loc5_.y > this.§-!B§ + _loc5_.height / 2)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     §§goto(addr915);
                                                                     §§push(true);
                                                                  }
                                                               }
                                                               §§goto(addr1016);
                                                            }
                                                            §§goto(addr1088);
                                                         }
                                                         §§goto(addr966);
                                                         addr979:
                                                      }
                                                      §§goto(addr1033);
                                                   }
                                                }
                                                §§goto(addr1088);
                                             }
                                             §§goto(addr979);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr806);
                                 }
                                 §§push(this.§#C§);
                              }
                              §§goto(addr774);
                           }
                           else
                           {
                              §§goto(addr77);
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
