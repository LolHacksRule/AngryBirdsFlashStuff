package §>0§
{
   import §2"'§.§0W§;
   import §@!"§.§?l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §-!x§ extends Sprite
   {
      
      public static const §,Q§:int = 0;
      
      public static const §8!;§:int = 1;
      
      public static const §3#§:int = 2;
      
      public static const §=!g§:int = 3;
      
      public static const §!!U§:uint = 40;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,Q§ = 0;
            loop0:
            while(true)
            {
               §8!;§ = 1;
               loop1:
               while(true)
               {
                  §3#§ = 2;
                  while(true)
                  {
                     §=!g§ = 3;
                     while(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              §!!U§ = 40;
                              if(!_loc2_)
                              {
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private const §3s§:Number = 0.3;
      
      private const §>T§:Number = 25;
      
      private const §0!d§:Number = 10;
      
      private const §^!d§:Number = 9;
      
      private var §'"%§:int;
      
      private var §>!K§:int;
      
      private var §`!V§:Array;
      
      private var §+&§:Array;
      
      private var §"§:Point;
      
      private var §@j§:int;
      
      public function §-!x§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§>!1§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(_loc14_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§'"%§ = param1;
                  do
                  {
                     this.§>!K§ = param2;
                  }
                  while(!_loc14_);
                  
                  if(_loc15_ && param1)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc8_:Number = Math.min(§?l§.§0!S§,§?l§.§+!9§);
                  var _loc9_:Number = Math.max(§?l§.§0!S§,§?l§.§+!9§);
                  if(!(_loc15_ && param2))
                  {
                     §§push(param3);
                     if(_loc14_ || param3)
                     {
                        §§push(§?l§.§+!9§);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                        }
                        addr165:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop6:
                        while(true)
                        {
                           param3 = §§pop();
                           while(true)
                           {
                              §§push(param4);
                              if(_loc14_ || param2)
                              {
                                 §§push(§?l§.§0!S§);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!_loc15_)
                                 {
                                    if(!(_loc14_ || param2))
                                    {
                                       continue loop6;
                                    }
                                    if(_loc15_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param4 = §§pop();
                              addr152:
                              while(!_loc15_)
                              {
                              }
                           }
                           §§goto(addr165);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§@j§ = param5;
                     while(true)
                     {
                        this.§"§ = new Point(param3,param4);
                        for(; _loc14_ || this; while(true)
                        {
                           this.§`!V§ = [];
                           do
                           {
                              this.§+&§ = [];
                           }
                           while(!(_loc14_ || param3));
                           
                           if(_loc15_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc13_:int = 0;
                           addr243:
                           if(_loc13_ < param6)
                           {
                              §§push(§§findproperty(§>!1§));
                              §§push(Math.random() * 40);
                              if(_loc14_ || param3)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc10_ = new §§pop().§>!1§(§§pop(),param7)).x = -2000;
                              if(!_loc15_)
                              {
                                 _loc10_.y = -2000;
                                 this.addChild(_loc10_);
                                 addr236:
                                 if(!_loc15_)
                                 {
                                    addr215:
                                    this.§`!V§[_loc13_] = _loc10_;
                                    _loc13_++;
                                    if(_loc14_ || this)
                                    {
                                       if(!(_loc15_ && param2))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr236);
                                    }
                                    addr221:
                                    §§goto(addr221);
                                    addr238:
                                 }
                                 addr242:
                                 §§goto(addr242);
                              }
                              §§goto(addr238);
                           }
                           if(_loc14_ || param1)
                           {
                              this.scaleX = _loc9_;
                              if(_loc14_)
                              {
                                 addr258:
                                 this.scaleY = _loc9_;
                              }
                              return;
                           }
                           §§goto(addr258);
                        })
                        {
                           if(_loc14_)
                           {
                              continue;
                           }
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>!1§ = null;
         loop0:
         while(true)
         {
            §§push(this.§`!V§);
            if(!(_loc2_ && _loc2_))
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§`!V§);
                  if(_loc3_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(this.§+&§);
                     break loop0;
                  }
                  addr90:
               }
               §§goto(addr102);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§+&§);
            if(!_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc3_ || _loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr90);
         }
         if(_loc3_)
         {
            this.§`!V§ = [];
            if(!_loc3_)
            {
            }
            §§goto(addr102);
         }
         addr102:
         this.§+&§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§>!1§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || param1)
         {
            §§push(param1);
            if(!_loc16_)
            {
               §§push(§§pop() / 20);
               if(_loc15_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§`!V§);
            if(_loc15_ || _loc3_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§+&§);
                  break;
               }
               §§push(this.§`!V§);
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc16_)
               {
                  §§push(Math.random() * (this.§>T§ - this.§0!d§));
                  while(true)
                  {
                     §§push(this.§0!d§);
                     addr720:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr721:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr722:
                           while(true)
                           {
                              _loc6_ = §§pop();
                           }
                        }
                     }
                  }
                  addr718:
               }
               loop5:
               while(true)
               {
                  §§push(this.§@j§);
                  loop6:
                  while(true)
                  {
                     §§push(§,Q§);
                     loop7:
                     while(§§pop() != §§pop())
                     {
                        §§push(this.§@j§);
                        loop8:
                        while(true)
                        {
                           §§push(§8!;§);
                           loop9:
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                                 §§push(this.§@j§);
                                 loop10:
                                 for(; _loc15_; §§push(this.§@j§),if(_loc15_)
                                 {
                                    continue loop8;
                                 })
                                 {
                                    §§push(§3#§);
                                    while(true)
                                    {
                                       if(_loc15_ || _loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             break;
                                          }
                                          continue loop10;
                                       }
                                       continue loop9;
                                    }
                                    addr610:
                                    _loc7_ = Number(Math.PI / 2 * Math.random());
                                    addr584:
                                    _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                    addr602:
                                    addr585:
                                    addr606:
                                    addr609:
                                    addr611:
                                    §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                    if(_loc15_)
                                    {
                                       if(_loc15_ || this)
                                       {
                                          _loc9_ = §§pop();
                                          addr325:
                                          §§push(_loc5_);
                                          §§push(_loc8_);
                                          if(_loc15_ || _loc2_)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().§7j§ = §§pop();
                                          addr573:
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc9_);
                                             if(_loc15_ || param1)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§pop().§^!R§ = §§pop();
                                             addr313:
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                if(_loc15_)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      _loc5_.x = this.§"§.x;
                                                      addr297:
                                                      if(!_loc16_)
                                                      {
                                                         _loc5_.y = this.§"§.y;
                                                         addr288:
                                                         if(!_loc16_)
                                                         {
                                                            this.§+&§.push(_loc5_);
                                                            addr281:
                                                            §§push(0.5);
                                                            if(_loc15_)
                                                            {
                                                               §§push(Math.random() * 1.5);
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     if(_loc15_ || _loc2_)
                                                                     {
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           addr239:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    if(_loc15_ || _loc2_)
                                                                                    {
                                                                                       addr263:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr271:
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(0.2);
                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc16_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr157:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              addr176:
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc16_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr88:
                                                                                                                                             _loc5_.§-">§ = §0W§.§&"5§.§]!r§(_loc5_,{
                                                                                                                                                "scaleX":_loc11_,
                                                                                                                                                "scaleY":_loc11_
                                                                                                                                             },{
                                                                                                                                                "scaleX":_loc10_,
                                                                                                                                                "scaleY":_loc10_
                                                                                                                                             },5);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc5_.§-">§.play();
                                                                                                                                                            if(_loc15_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr88);
                                                                                                                                                               }
                                                                                                                                                               addr637:
                                                                                                                                                               §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  addr623:
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr325);
                                                                                                                                                                  }
                                                                                                                                                                  addr665:
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     addr634:
                                                                                                                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        §§goto(addr637);
                                                                                                                                                                     }
                                                                                                                                                                     addr708:
                                                                                                                                                                     _loc7_ = Number(§§pop());
                                                                                                                                                                     §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        addr678:
                                                                                                                                                                        _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                                                                                                                                        §§goto(addr325);
                                                                                                                                                                        addr693:
                                                                                                                                                                        addr679:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr722);
                                                                                                                                                                     addr707:
                                                                                                                                                                     addr709:
                                                                                                                                                                  }
                                                                                                                                                                  break loop7;
                                                                                                                                                               }
                                                                                                                                                               addr656:
                                                                                                                                                               if(_loc15_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr664:
                                                                                                                                                                  _loc7_ = Number(§§pop());
                                                                                                                                                                  §§goto(addr665);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                               §§push(§§pop() * Math.random());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr88);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr602);
                                                                                                                                                      }
                                                                                                                                                      addr484:
                                                                                                                                                      §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                      if(_loc15_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         addr454:
                                                                                                                                                         _loc12_ = this.§0!d§ / 2;
                                                                                                                                                         addr472:
                                                                                                                                                         addr452:
                                                                                                                                                         addr453:
                                                                                                                                                         §§push(this.§>T§);
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(2);
                                                                                                                                                                     if(_loc15_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr427:
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(_loc15_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr435:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              addr438:
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr353:
                                                                                                                                                                                    §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr361:
                                                                                                                                                                                       §§push(§§pop() + _loc12_);
                                                                                                                                                                                       if(_loc15_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc15_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc16_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr384:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!(_loc16_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                                                                   addr392:
                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr325);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr573);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr520:
                                                                                                                                                                                                   §§push(Math.PI * (Math.random() - 0.5) * 0.5);
                                                                                                                                                                                                   if(!(_loc16_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr530:
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!(_loc16_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                         addr538:
                                                                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc15_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr481:
                                                                                                                                                                                                            §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                               §§goto(addr484);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr530);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr585);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr610);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr634);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr481);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr708);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr484);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr384);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr656);
                                                                                                                                                                                    §§push(§§pop() * 0.5);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr472);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr664);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr454);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr452);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr637);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr606);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr453);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr435);
                                                                                                                                                         addr451:
                                                                                                                                                         addr455:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr520);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr288);
                                                                                                                                                }
                                                                                                                                                §§goto(addr271);
                                                                                                                                             }
                                                                                                                                             §§goto(addr176);
                                                                                                                                          }
                                                                                                                                          §§goto(addr693);
                                                                                                                                       }
                                                                                                                                       §§goto(addr392);
                                                                                                                                    }
                                                                                                                                    §§goto(addr313);
                                                                                                                                 }
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                              §§goto(addr281);
                                                                                                                           }
                                                                                                                           §§goto(addr718);
                                                                                                                        }
                                                                                                                        §§goto(addr353);
                                                                                                                     }
                                                                                                                     §§goto(addr281);
                                                                                                                  }
                                                                                                                  §§goto(addr263);
                                                                                                               }
                                                                                                               addr703:
                                                                                                               §§goto(addr656);
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§goto(addr610);
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   §§goto(addr239);
                                                                                                }
                                                                                                §§goto(addr157);
                                                                                             }
                                                                                             §§goto(addr679);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr678);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr451);
                                                                           }
                                                                           §§goto(addr427);
                                                                        }
                                                                        §§goto(addr720);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr609);
                                                         }
                                                         §§goto(addr438);
                                                      }
                                                      §§goto(addr611);
                                                   }
                                                   §§goto(addr623);
                                                }
                                                §§goto(addr455);
                                             }
                                             §§goto(addr325);
                                          }
                                          break loop9;
                                       }
                                       §§goto(addr721);
                                    }
                                    §§goto(addr634);
                                 }
                                 continue loop6;
                              }
                              continue loop7;
                           }
                           §§goto(addr353);
                           §§push(Math.PI * (Math.random() - 0.5));
                           if(_loc16_ && _loc2_)
                           {
                              continue;
                           }
                           §§push(§=!g§);
                           if(!_loc15_)
                           {
                              §§goto(addr594);
                           }
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr392);
                           }
                           §§goto(addr325);
                        }
                     }
                     §§goto(addr703);
                  }
               }
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
         if(_loc15_)
         {
            loop12:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc15_ || param1))
               {
                  break;
               }
               _loc5_ = this.§+&§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§^!R§);
               if(!_loc16_)
               {
                  §§push(this.§3s§);
                  if(_loc15_ || param1)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§^!R§ = §§pop();
               if(!_loc16_)
               {
                  if(_loc5_.§^!R§ > this.§^!d§)
                  {
                     if(!_loc16_)
                     {
                        _loc5_.§^!R§ = this.§^!d§;
                        while(true)
                        {
                           addr937:
                           loop14:
                           while(true)
                           {
                              _loc5_.x += _loc5_.§7j§ * param1;
                              loop15:
                              while(true)
                              {
                                 _loc5_.y += _loc5_.§^!R§ * param1;
                                 loop16:
                                 while(true)
                                 {
                                    _loc5_.rotation += 5 * param1;
                                    loop17:
                                    while(true)
                                    {
                                       if(!_loc15_)
                                       {
                                          continue loop14;
                                       }
                                       if(_loc5_.x >= -_loc5_.width / 2)
                                       {
                                          if(_loc5_.x > this.§'"%§ + _loc5_.width / 2)
                                          {
                                             if(_loc15_ || _loc2_)
                                             {
                                                if(_loc15_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      if(_loc16_)
                                                      {
                                                         break loop17;
                                                      }
                                                      _loc3_ = §§pop();
                                                   }
                                                   addr891:
                                                }
                                                else
                                                {
                                                   addr905:
                                                   §§push(true);
                                                   if(!_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc16_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc16_)
                                                   {
                                                      continue;
                                                   }
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(this.§+&§);
                                                      if(_loc16_ && this)
                                                      {
                                                         addr1002:
                                                         break;
                                                         addr964:
                                                      }
                                                      §§push(§§pop().length > 0);
                                                      if(!(_loc16_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               addr811:
                                                               if(_loc15_ || this)
                                                               {
                                                                  §§pop();
                                                                  if(_loc16_ && this)
                                                                  {
                                                                     addr967:
                                                                     §§push(this.§+&§);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr967:
                                                                  }
                                                                  if(!_loc16_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop16;
                                                                  break;
                                                               }
                                                               addr865:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  §§goto(addr811);
                                                               }
                                                               continue loop12;
                                                            }
                                                            §§goto(addr967);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr967);
                                                      }
                                                      §§push(_loc4_);
                                                      if(_loc15_ || this)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc4_ = §§pop();
                                                      continue loop12;
                                                   }
                                                   addr787:
                                                   if((_loc14_ = §§pop().splice(_loc4_,1)) is §>!1§)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         _loc14_.clean();
                                                         if(!_loc16_)
                                                         {
                                                            addr994:
                                                            _loc5_.x = -2000;
                                                            if(!_loc16_)
                                                            {
                                                               _loc5_.y = -2000;
                                                            }
                                                         }
                                                         §§goto(addr1002);
                                                      }
                                                   }
                                                   §§goto(addr994);
                                                   addr787:
                                                }
                                                §§goto(addr787);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr837);
                                             }
                                             addr895:
                                          }
                                          else if(_loc5_.y > this.§>!K§ + _loc5_.height / 2)
                                          {
                                             if(_loc15_ || param1)
                                             {
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§goto(addr865);
                                                   §§push(true);
                                                }
                                                else
                                                {
                                                   §§goto(addr895);
                                                }
                                                §§goto(addr787);
                                             }
                                             §§goto(addr868);
                                          }
                                          §§goto(addr787);
                                       }
                                       §§goto(addr905);
                                    }
                                    addr963:
                                    §§goto(addr964);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr967);
                  }
                  §§goto(addr937);
               }
               §§goto(addr891);
            }
         }
      }
   }
}
