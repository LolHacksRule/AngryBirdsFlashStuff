package §,G§
{
   import §#V§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §6!G§:b2Vec2;
      
      private static var §?y§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!G§ = new b2Vec2();
            do
            {
               §?y§ = new b2Vec2();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public var §-n§:b2Vec2;
      
      public var §4!a§:Vector.<b2Vec2>;
      
      public var §2!i§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§-n§ = new b2Vec2();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§2!i§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     addr64:
                     while(!_loc2_)
                     {
                     }
                     continue loop1;
                     addr45:
                  }
               }
               addr36:
               if(_loc2_ && this)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr45);
               }
               §§goto(addr76);
            }
         }
         while(true)
         {
            this.§4!a§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr36);
            }
            §§goto(addr64);
         }
         addr76:
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               if(_loc3_ || this)
               {
                  break;
               }
            }
            else
            {
               this.§4!a§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §'K§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(_loc18_ || _loc3_)
         {
            b2Settings.b2Assert(param1.§@!#§ > 0);
         }
         §§push(param1.type);
         if(!_loc19_)
         {
            var _loc17_:* = §§pop();
            if(_loc18_)
            {
               §§push(b2Manifold.§6!C§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(_loc18_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc18_ || param1)
                        {
                           §§push(0);
                           if(_loc19_)
                           {
                              addr1765:
                              §§push(_loc17_);
                              if(!(_loc19_ && param1))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       addr1776:
                                       §§push(1);
                                       if(_loc18_ || param1)
                                       {
                                          addr1794:
                                       }
                                    }
                                    else
                                    {
                                       addr1806:
                                       §§push(2);
                                       if(_loc18_ || this)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§9!D§);
                                    if(_loc18_ || this)
                                    {
                                       addr1805:
                                       if(§§pop() === _loc17_)
                                       {
                                          §§goto(addr1806);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr1805);
                           }
                           §§goto(addr1820);
                        }
                        §§goto(addr1776);
                     }
                     else
                     {
                        §§push(b2Manifold.§>!r§);
                        if(!(_loc19_ && param1))
                        {
                           §§goto(addr1765);
                        }
                     }
                     §§goto(addr1794);
                  }
                  §§goto(addr1805);
               }
               §§goto(addr1765);
            }
            §§goto(addr1806);
         }
         addr1820:
         switch(§§pop())
         {
            case 0:
               _loc5_ = param1.§0w§.m_xf.R;
               _loc6_ = param1.localPoint;
               if(!_loc19_)
               {
                  §§push(param1.§0w§);
                  if(!(_loc19_ && param1))
                  {
                     §§push(§§pop().m_xf);
                     if(_loc18_ || param1)
                     {
                        §§push(§§pop().position);
                        if(_loc18_ || _loc3_)
                        {
                           §§push(§§pop().x);
                           if(!(_loc19_ && param1))
                           {
                              §§push(_loc5_.col1);
                              if(!(_loc19_ && param1))
                              {
                                 §§push(§§pop().x);
                                 if(_loc18_)
                                 {
                                    §§push(_loc6_.x);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_ || param1)
                                       {
                                          addr132:
                                          §§push(_loc5_.col2);
                                          if(_loc18_ || this)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc18_ || param1)
                                             {
                                                §§push(_loc6_.y);
                                                if(_loc18_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      addr161:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                         addr164:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc19_)
                                                            {
                                                               addr175:
                                                               _loc9_ = §§pop();
                                                               if(_loc18_)
                                                               {
                                                                  addr180:
                                                                  §§push(param1.§0w§.m_xf);
                                                                  if(_loc18_)
                                                                  {
                                                                     addr184:
                                                                     §§push(§§pop().position.y);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr189:
                                                                        §§push(_loc5_.col1.y);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(_loc18_)
                                                                           {
                                                                              addr196:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr199:
                                                                                 addr201:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                 }
                                                                                 addr208:
                                                                                 §§push(§§pop() + (§§pop() + §§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr212:
                                                                                    _loc10_ = §§pop();
                                                                                    _loc5_ = param1.§^2§.m_xf.R;
                                                                                    _loc6_ = param1.§7!4§[0].localPoint;
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §§push(param1.§^2§);
                                                                                       loop0:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().m_xf);
                                                                                          addr629:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().position);
                                                                                             addr630:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr631:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.col1);
                                                                                                   addr633:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr639:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_.col2);
                                                                                                               addr641:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr642:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     addr644:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr645:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr443:
                                                                                                            if(!(_loc18_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr453:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc19_ && this))
                                                                                                               {
                                                                                                                  addr461:
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr471:
                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr478:
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr495:
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr505:
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr512:
                                                                                                                                             §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   loop45:
                                                                                                                                                   while(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                      loop46:
                                                                                                                                                      while(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§-n§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§-n§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    loop37:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop35:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§4!a§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                          addr305:
                                                                                                                                                                                          loop47:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr280:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§4!a§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§2!i§[0] = _loc13_ * this.§-n§.x + _loc14_ * this.§-n§.y - param1.radius;
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr336:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                 addr538:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          addr542:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr543:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                break loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr541:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                    §§goto(addr461);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr647:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break loop46;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr625:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        loop31:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr401:
                                                                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc18_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr416:
                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr443);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr614:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr615:
                                                                                                                                                                                                         while(_loc18_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr624:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr625);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr639);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr614:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr642);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc5_.col2);
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr614);
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr644);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr614);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr641);
                                                                                                                                                                                                   addr592:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr614);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr453);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                             §§goto(addr416);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr592);
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr401);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr645);
                                                                                                                                                                                          addr585:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr614);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr541);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr495);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr505);
                                                                                                                                                                        }
                                                                                                                                                                        addr528:
                                                                                                                                                                        while(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr534);
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              §§goto(addr471);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr542);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr615);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(!(_loc19_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr528);
                                                                                                                                                         §§goto(addr478);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                §§goto(addr351);
                                                                                                                                                §§push(this.§-n§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                          §§goto(addr623);
                                                                                                                                       }
                                                                                                                                       §§goto(addr521);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr647);
                                                                                                                                    }
                                                                                                                                    addr646:
                                                                                                                                 }
                                                                                                                                 §§goto(addr512);
                                                                                                                              }
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                           §§goto(addr527);
                                                                                                                        }
                                                                                                                        §§goto(addr531);
                                                                                                                     }
                                                                                                                     §§goto(addr505);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            §§goto(addr512);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr646);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           addr206:
                                                                           §§goto(addr208);
                                                                           §§push(§§pop() * _loc6_.y);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr180);
               }
               §§goto(addr212);
            case 1:
               §§goto(addr655);
            case 2:
               _loc5_ = param1.§^2§.m_xf.R;
               _loc6_ = param1.§[!<§;
               §§push(param1.§0w§.m_xf);
               if(_loc18_)
               {
                  §§push(this.§-n§);
                  if(!_loc19_)
                  {
                     §§push(_loc5_.col1);
                     if(_loc18_ || param1)
                     {
                        §§push(§§pop().x);
                        if(!(_loc19_ && this))
                        {
                           §§push(_loc6_.x);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc19_ && param1))
                              {
                                 §§push(_loc5_.col2);
                                 if(_loc18_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc19_)
                                    {
                                       addr1216:
                                       §§push(_loc6_.y);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc19_)
                                          {
                                             addr1223:
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_)
                                             {
                                                addr1226:
                                                §§pop().x = §§pop();
                                                if(!_loc19_)
                                                {
                                                   addr1233:
                                                   §§push(this.§-n§);
                                                   §§push(_loc5_.col1.y);
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(_loc18_)
                                                      {
                                                         addr1240:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_ || this)
                                                         {
                                                            addr1248:
                                                            §§push(_loc5_.col2.y);
                                                            if(_loc18_)
                                                            {
                                                               addr1256:
                                                               §§push(§§pop() + §§pop() * _loc6_.y);
                                                            }
                                                            §§goto(addr1256);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr1258:
                                                         _loc5_ = param1.§^2§.m_xf.R;
                                                         _loc6_ = param1.localPoint;
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(param1.§^2§);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(§§pop().m_xf);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().position);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc5_.col1);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              §§push(_loc6_.x);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc19_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc5_.col2);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr1336:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr1339:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                      {
                                                                                                         addr1355:
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr1360:
                                                                                                            §§push(param1.§^2§.m_xf);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr1364:
                                                                                                               §§push(§§pop().position.y);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr1367:
                                                                                                                  §§push(_loc5_.col1.y);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr1377:
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr1403:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc19_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr1412:
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           _loc5_ = param1.§0w§.m_xf.R;
                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                    }
                                                                                                                                    addr1666:
                                                                                                                                 }
                                                                                                                                 addr1672:
                                                                                                                                 §§push(this.§-n§);
                                                                                                                                 if(!(_loc19_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§-n§);
                                                                                                                                    if(!(_loc19_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(-1);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1711:
                                                                                                                                                   §§push(this.§-n§);
                                                                                                                                                   §§push(this.§-n§.y);
                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr1721:
                                                                                                                                                      §§pop().y = §§pop() * -1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1721);
                                                                                                                                                }
                                                                                                                                                addr1722:
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1721);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1711);
                                                                                                                              }
                                                                                                                              loop73:
                                                                                                                              while(§§pop() < param1.§@!#§)
                                                                                                                              {
                                                                                                                                 _loc6_ = param1.§7!4§[_loc2_].localPoint;
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§0w§);
                                                                                                                                    loop74:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().m_xf);
                                                                                                                                       addr1633:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().position);
                                                                                                                                          addr1634:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr1635:
                                                                                                                                             loop77:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.col1);
                                                                                                                                                addr1637:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      loop79:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.col2);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr1658:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                  addr1660:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr1661:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1567:
                                                                                                                                                               §§push(_loc5_.col2);
                                                                                                                                                               if(_loc19_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr1584:
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr1596:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop79;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr1614:
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop77;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                 loop88:
                                                                                                                                                                                 for(; _loc18_; if(_loc19_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },if(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                 },§§goto(addr1474))
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§2!i§[_loc2_] = (_loc3_ - _loc7_) * this.§-n§.x + (_loc4_ - _loc8_) * this.§-n§.y - param1.radius;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1474:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§4!a§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                             do
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc2_++;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc19_ && param1);
                                                                                                                                                                                             
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop74;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              addr1663:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                              continue loop74;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1662:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr1662:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1663);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1660);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1661);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1596);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1662);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1629);
                                                                                                                                 §§goto(addr1666);
                                                                                                                              }
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1672);
                                                                                                                              }
                                                                                                                              §§goto(addr1722);
                                                                                                                           }
                                                                                                                           §§goto(addr1672);
                                                                                                                        }
                                                                                                                        §§goto(addr1412);
                                                                                                                     }
                                                                                                                     addr1402:
                                                                                                                     §§goto(addr1403);
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr1401:
                                                                                                                     §§goto(addr1402);
                                                                                                                     §§push(§§pop() * _loc6_.y);
                                                                                                                  }
                                                                                                                  §§goto(addr1402);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1412);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1367);
                                                                                                }
                                                                                                §§goto(addr1403);
                                                                                             }
                                                                                             §§goto(addr1402);
                                                                                          }
                                                                                          §§goto(addr1401);
                                                                                       }
                                                                                       §§goto(addr1336);
                                                                                    }
                                                                                    §§goto(addr1367);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1377);
                                                                           }
                                                                           §§goto(addr1339);
                                                                        }
                                                                        §§goto(addr1367);
                                                                     }
                                                                     §§goto(addr1355);
                                                                  }
                                                                  §§goto(addr1364);
                                                               }
                                                               §§goto(addr1412);
                                                            }
                                                            §§goto(addr1360);
                                                         }
                                                         §§goto(addr1412);
                                                      }
                                                      §§goto(addr1256);
                                                   }
                                                   §§goto(addr1248);
                                                }
                                                §§goto(addr1258);
                                             }
                                             §§goto(addr1248);
                                          }
                                          §§goto(addr1240);
                                       }
                                       §§goto(addr1256);
                                    }
                                    §§goto(addr1223);
                                 }
                              }
                              §§goto(addr1248);
                           }
                           §§goto(addr1216);
                        }
                        §§goto(addr1226);
                     }
                  }
               }
               §§goto(addr1233);
         }
      }
   }
}
