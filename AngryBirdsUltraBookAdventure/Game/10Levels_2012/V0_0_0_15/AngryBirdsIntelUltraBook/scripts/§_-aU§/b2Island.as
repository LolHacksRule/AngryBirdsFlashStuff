package §_-aU§
{
   import §_-09-§.*;
   import §_-0DM§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-NH§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-NH§ = new b2ContactImpulse();
         }
      }
      
      private var §_-qZ§;
      
      private var §_-Te§:b2ContactListener;
      
      private var §_-ol§:b2ContactSolver;
      
      b2internal var §_-oa§:Vector.<b2Body>;
      
      b2internal var §_-03H§:Vector.<b2Contact>;
      
      b2internal var §_-tI§:Vector.<b2Joint>;
      
      b2internal var §_-F9§:int;
      
      b2internal var §_-ug§:int;
      
      b2internal var §_-09s§:int;
      
      private var §_-01L§:int;
      
      b2internal var §_-Fy§:int;
      
      b2internal var §_-068§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§_-oa§ = new Vector.<b2Body>();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            this.§_-03H§ = new Vector.<b2Contact>();
            do
            {
               this.§_-tI§ = new Vector.<b2Joint>();
            }
            while(_loc1_);
            
            if(_loc2_)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §_-bL§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(_loc8_ || param1)
         {
            this.§_-01L§ = param1;
            while(true)
            {
               this.§_-Fy§ = param2;
               while(_loc8_)
               {
                  loop9:
                  while(_loc8_ || param2)
                  {
                     _loc7_ = this.§_-oa§.length;
                     if(_loc9_)
                     {
                        continue;
                     }
                     if(_loc8_)
                     {
                        addr181:
                        if(!(_loc9_ && param3))
                        {
                           addr188:
                           if(_loc9_ && param3)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§_-qZ§ = param4;
                                 addr236:
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       this.§_-Te§ = param5;
                                       addr212:
                                       loop8:
                                       while(_loc8_ || this)
                                       {
                                          if(!_loc9_)
                                          {
                                             this.§_-ol§ = param6;
                                             continue loop9;
                                          }
                                          addr258:
                                          while(true)
                                          {
                                             this.§_-F9§ = 0;
                                             break loop8;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§_-09s§ = 0;
                                          break loop7;
                                          §§goto(addr212);
                                       }
                                       addr212:
                                    }
                                    break;
                                    §§goto(addr181);
                                 }
                                 while(true)
                                 {
                                    this.§_-ug§ = 0;
                                    continue loop6;
                                 }
                              }
                           }
                           addr142:
                           §§push(_loc7_);
                           if(_loc8_ || param3)
                           {
                              addr152:
                              if(§§pop() >= param1)
                              {
                                 addr157:
                                 _loc7_ = this.§_-03H§.length;
                                 addr153:
                                 addr158:
                                 §§push(_loc7_);
                                 if(!(_loc9_ && this))
                                 {
                                    addr109:
                                    if(§§pop() >= param2)
                                    {
                                       addr110:
                                       if(!_loc9_)
                                       {
                                          addr126:
                                          _loc7_ = this.§_-tI§.length;
                                          addr26:
                                          addr127:
                                          §§push(_loc7_);
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(param3);
                                                if(!(_loc9_ && this))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc8_ || param3)
                                                         {
                                                            if(!(_loc8_ || this))
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                            return;
                                                         }
                                                         addr62:
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr26);
                                                               }
                                                               addr130:
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr153);
                                                               }
                                                               addr161:
                                                               §§goto(addr142);
                                                            }
                                                            §§goto(addr110);
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  _loc7_++;
                                                                  §§goto(addr62);
                                                               }
                                                               _loc7_++;
                                                               §§goto(addr161);
                                                               addr170:
                                                            }
                                                            _loc7_++;
                                                            §§goto(addr130);
                                                            addr141:
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      this.§_-tI§[_loc7_] = null;
                                                      §§goto(addr62);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr109);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr158);
                                    }
                                    this.§_-03H§[_loc7_] = null;
                                    §§goto(addr141);
                                 }
                                 §§goto(addr126);
                              }
                              this.§_-oa§[_loc7_] = null;
                              §§goto(addr170);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr212);
                  }
               }
            }
         }
         while(true)
         {
            this.§_-068§ = param3;
            §§goto(addr258);
         }
      }
      
      public function §_-p7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-F9§ = 0;
            while(true)
            {
               this.§_-09s§ = 0;
               while(!(_loc1_ && _loc1_))
               {
                  this.§_-ug§ = 0;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §_-NQ§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         if(_loc19_ || param2)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§_-F9§)
         {
            if((_loc6_ = this.§_-oa§[_loc4_]).§_-oF§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc18_ && param2))
               {
                  loop17:
                  while(true)
                  {
                     _loc4_++;
                     if(!_loc18_)
                     {
                        addr170:
                        if(_loc19_ || this)
                        {
                           loop12:
                           for(; false; §§goto(addr170))
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(!(_loc18_ && param3))
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§_-pn§);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_.§_-cz§);
                                    }
                                    §§push(§§pop() * §§pop().§_-ZK§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr205:
                                 addr248:
                                 loop14:
                                 while(!_loc18_)
                                 {
                                    if(!(_loc18_ && this))
                                    {
                                       continue loop17;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.m_angularVelocity);
                                       if(_loc19_)
                                       {
                                          §§push(param1.§_-pn§);
                                          if(_loc19_ || this)
                                          {
                                             §§push(_loc6_.§_-Dz§);
                                             if(_loc19_ || param1)
                                             {
                                                addr280:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr278:
                                                   §§push(§§pop() * _loc6_.§_-cH§);
                                                }
                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§_-kZ§);
                                                   if(!(_loc18_ && param3))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(b2Math);
                                                         §§push(1);
                                                         §§push(param1.§_-pn§);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(§§pop() * _loc6_.§_-aS§);
                                                         }
                                                         §§push(§§pop().§_-ZK§(§§pop() - §§pop(),0,1));
                                                         if(!_loc18_)
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               §§pop().§_-mx§(§§pop());
                                                               break loop14;
                                                            }
                                                            break loop5;
                                                         }
                                                         addr321:
                                                         while(true)
                                                         {
                                                            §§pop().y = §§pop();
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr225:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§_-kZ§);
                                                         addr286:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            break loop5;
                                                         }
                                                      }
                                                      addr284:
                                                   }
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§_-pn§);
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param2.y);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(_loc6_.§_-03A§);
                                                            if(!(_loc18_ && param3))
                                                            {
                                                               addr314:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_.§_-wp§);
                                                                  addr316:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     addr317:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr314:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         addr319:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      addr296:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr321);
                                                   }
                                                }
                                                addr281:
                                             }
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr280);
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop13;
                                 }
                              }
                           }
                           continue loop0;
                           addr177:
                        }
                        §§goto(addr281);
                     }
                     §§goto(addr205);
                  }
               }
               §§goto(addr248);
            }
            else
            {
               §§push(_loc6_.§_-kZ§);
               if(!_loc18_)
               {
                  §§push(_loc6_.§_-kZ§);
                  if(!(_loc18_ && param2))
                  {
                     §§push(§§pop().x);
                     if(!_loc18_)
                     {
                        §§push(param1.§_-pn§);
                        if(_loc19_ || param3)
                        {
                           §§push(param2.x);
                           if(!(_loc18_ && param3))
                           {
                              §§push(_loc6_.§_-03A§);
                              if(_loc19_ || param2)
                              {
                                 §§push(_loc6_.§_-wp§);
                                 if(_loc19_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc19_ || param3)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_ || this)
                                          {
                                             addr146:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param2))
                                             {
                                                addr154:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr157:
                                                   §§pop().x = §§pop();
                                                   if(!(_loc18_ && this))
                                                   {
                                                      §§goto(addr284);
                                                      §§push(_loc6_.§_-kZ§);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr296);
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr317);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr286);
               }
            }
            §§goto(addr225);
         }
         if(_loc19_ || param3)
         {
            §§push(this.§_-ol§);
            if(_loc19_)
            {
               §§pop().§_-bL§(param1,this.§_-03H§,this.§_-09s§,this.§_-qZ§);
               addr346:
               §§push(this.§_-ol§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc18_ && param1))
            {
               §§push(0);
               if(!(_loc18_ && param2))
               {
                  _loc4_ = §§pop();
                  if(!_loc18_)
                  {
                     loop20:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_ || this)
                        {
                           §§push(this.§_-ug§);
                           if(!(_loc18_ && param3))
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§_-tI§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    addr408:
                                    _loc4_ = §§pop();
                                    if(!_loc18_)
                                    {
                                       loop143:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             §§push(param1.§_-lE§);
                                             if(_loc19_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(0);
                                                      if(!_loc18_)
                                                      {
                                                         break loop20;
                                                      }
                                                      loop145:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-ug§);
                                                         if(!_loc18_)
                                                         {
                                                            loop58:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc8_.§_-dm§();
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc18_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!_loc18_)
                                                                           {
                                                                              loop81:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-F9§);
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   addr1033:
                                                                                                   §§push(0);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      break loop143;
                                                                                                   }
                                                                                                   break loop58;
                                                                                                }
                                                                                                addr1662:
                                                                                                §§push(0);
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   §§goto(addr1670);
                                                                                                }
                                                                                                §§goto(addr1708);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if((_loc6_ = this.§_-oa§[_loc4_]).§_-oF§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      loop132:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               continue loop81;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_.§_-da§();
                                                                                                               addr649:
                                                                                                            }
                                                                                                            addr582:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           loop86:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§_-kZ§);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§_-kZ§);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          if(!(_loc19_ || param3))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(b2Settings.b2_maxTranslation);
                                                                                                                                          if(!(_loc18_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(param1.§_-00-§);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr952:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr955:
                                                                                                                                                   §§pop().y = §§pop() * §§pop();
                                                                                                                                                   loop87:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      loop88:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§_-pn§);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr814:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr860:
                                                                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc19_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr875:
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop128:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr886:
                                                                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                     loop89:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        addr889:
                                                                                                                                                                                                                        while(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr907:
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§_-00-§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                       loop101:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr755:
                                                                                                                                                                                                                                          loop91:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                             loop92:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                                addr763:
                                                                                                                                                                                                                                                addr785:
                                                                                                                                                                                                                                                loop93:
                                                                                                                                                                                                                                                while(!(_loc18_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop101;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                   loop94:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                      loop95:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().a0 = §§pop();
                                                                                                                                                                                                                                                            addr754:
                                                                                                                                                                                                                                                            loop102:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                               loop103:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                                                                                                                  loop104:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                     loop105:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                                                                        loop106:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           if(_loc19_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param1.§_-pn§);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                                                                                                                 addr738:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                    addr739:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       addr740:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr736:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              addr742:
                                                                                                                                                                                                                                                                              loop112:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                       loop113:
                                                                                                                                                                                                                                                                                       for(; _loc19_; while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop103;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                                                                          if(!(_loc19_ || param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop104;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop105;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop106;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc19_ || param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop112;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(param1.§_-pn§);
                                                                                                                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr717:
                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                            addr716:
                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr739);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr736);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr740);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr716);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr717);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop94;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop87;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop93;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop92;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop95;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§_-pn§);
                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop102;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().a = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc19_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        loop116:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                                                                           addr987:
                                                                                                                                                                                                                                                                           loop97:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                              addr988:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 addr989:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop97;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1011:
                                                                                                                                                                                                                                                                                    addr1011:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                       continue loop116;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop116;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr992:
                                                                                                                                                                                                                                                                           §§push(§§pop() + _loc10_ * _loc10_);
                                                                                                                                                                                                                                                                           addr995:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                                                                                                              break loop89;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1001:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                                                                                                           addr962:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              if(_loc18_ && param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop86;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param1.§_-00-§);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr981:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 continue loop86;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr649);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr998:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop91;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop128;
                                                                                                                                                                                                                                                   §§goto(addr763);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                                                                                   addr1000:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().Normalize();
                                                                                                                                                                                                                                                      §§goto(addr1001);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr907);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr894:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * param1.§_-00-§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr785);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1009:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr1010:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1011);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1009:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1011);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr886);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop88;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr888:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr998);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr755);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr988);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr889);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr877:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr995);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr888);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr992);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr889);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr992);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr860);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr989);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr875);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr860);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1010);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr987);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr814);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr982);
                                                                                                                                             }
                                                                                                                                             §§goto(addr981);
                                                                                                                                          }
                                                                                                                                          §§goto(addr952);
                                                                                                                                       }
                                                                                                                                       §§goto(addr955);
                                                                                                                                    }
                                                                                                                                    §§goto(addr962);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1000);
                                                                                                                              }
                                                                                                                              §§goto(addr960);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr894);
                                                                                                                     }
                                                                                                                     §§goto(addr754);
                                                                                                                  }
                                                                                                                  §§goto(addr742);
                                                                                                               }
                                                                                                               §§goto(addr718);
                                                                                                            }
                                                                                                            §§goto(addr640);
                                                                                                            §§goto(addr582);
                                                                                                         }
                                                                                                         addr602:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop132;
                                                                                                         }
                                                                                                         continue loop81;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1001);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(param1.§_-pn§);
                                                                                                   if(!(_loc18_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc6_.§_-kZ§);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(param1.§_-pn§);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr1008:
                                                                                                                        §§goto(addr1009);
                                                                                                                        §§push(_loc6_.§_-kZ§.y);
                                                                                                                     }
                                                                                                                     §§goto(addr1011);
                                                                                                                  }
                                                                                                                  §§goto(addr602);
                                                                                                               }
                                                                                                               §§goto(addr992);
                                                                                                            }
                                                                                                            §§goto(addr877);
                                                                                                         }
                                                                                                         §§goto(addr1009);
                                                                                                      }
                                                                                                      §§goto(addr1008);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1011);
                                                                                             }
                                                                                          }
                                                                                          addr1025:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    loop134:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!(_loc18_ && param2))
                                                                                             {
                                                                                                addr1103:
                                                                                                _loc12_ = §§pop();
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop72:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  if(!(_loc18_ && param3))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr1688);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1670);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1081:
                                                                                                         }
                                                                                                         addr1202:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               addr1205:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              addr1364:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              loop71:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr1343:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§_-0B5§(_loc8_.§_-PC§);
                                                                                                                                             if(_loc19_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(param3);
                                                                                                                                                if(_loc18_ && param3)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(Number.MAX_VALUE));
                                                                                                                                                            loop69:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr1327:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                     loop76:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                        loop77:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop78:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              while(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop77;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop76;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop78;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop76;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1652);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop78;
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                    addr1229:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1688);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop69;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1652);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1327:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1670);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1321:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1670);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1670);
                                                                                                                                          }
                                                                                                                                          continue loop71;
                                                                                                                                       }
                                                                                                                                       addr1342:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1662);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    _loc4_++;
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             addr1332:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§_-u5§);
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   continue loop134;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1710);
                                                                                                                                             }
                                                                                                                                             addr1332:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1708);
                                                                                                                                       }
                                                                                                                                       addr1329:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1670:
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                 {
                                                                                                                                    addr1688:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       addr1708:
                                                                                                                                       loop57:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-F9§);
                                                                                                                                          addr1710:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                (_loc6_ = this.§_-oa§[_loc4_]).SetAwake(false);
                                                                                                                                                if(!(_loc18_ && param3))
                                                                                                                                                {
                                                                                                                                                   _loc4_++;
                                                                                                                                                }
                                                                                                                                                continue loop57;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                              addr1364:
                                                                                                                           }
                                                                                                                           §§goto(addr1364);
                                                                                                                        }
                                                                                                                        §§goto(addr1327);
                                                                                                                     }
                                                                                                                     §§goto(addr1318);
                                                                                                                  }
                                                                                                                  §§goto(addr1364);
                                                                                                               }
                                                                                                               addr1205:
                                                                                                            }
                                                                                                            §§goto(addr1318);
                                                                                                            continue loop72;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1111:
                                                                                                }
                                                                                                §§goto(addr1652);
                                                                                             }
                                                                                             §§goto(addr1205);
                                                                                          }
                                                                                          §§goto(addr1103);
                                                                                       }
                                                                                       §§goto(addr1342);
                                                                                    }
                                                                                    addr1016:
                                                                                 }
                                                                                 §§goto(addr1708);
                                                                              }
                                                                           }
                                                                           §§goto(addr1033);
                                                                        }
                                                                        §§goto(addr1016);
                                                                     }
                                                                     §§goto(addr1111);
                                                                  }
                                                                  §§goto(addr1652);
                                                               }
                                                               else
                                                               {
                                                                  (_loc7_ = this.§_-tI§[_loc4_]).§_-dm§();
                                                                  if(_loc19_)
                                                                  {
                                                                     _loc4_++;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc19_ || param3))
                                                                     {
                                                                        break loop58;
                                                                     }
                                                                     continue loop145;
                                                                  }
                                                                  addr499:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§_-F9§);
                                                               if(_loc19_)
                                                               {
                                                                  §§goto(addr1643);
                                                               }
                                                               §§goto(addr1710);
                                                            }
                                                            addr511:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§goto(addr1202);
                                                                  }
                                                                  §§goto(addr1205);
                                                               }
                                                               addr1199:
                                                            }
                                                            §§goto(addr1327);
                                                         }
                                                         else
                                                         {
                                                            §§push((_loc7_ = this.§_-tI§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                            if(!_loc18_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc18_)
                                                               {
                                                                  addr1129:
                                                                  _loc14_ = §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop64:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop65:
                                                                                 while(true)
                                                                                 {
                                                                                    loop66:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc14_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                             loop63:
                                                                                             while(true)
                                                                                             {
                                                                                                addr1164:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop63;
                                                                                                }
                                                                                             }
                                                                                             addr1163:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc18_ && this)
                                                                                          {
                                                                                             continue loop64;
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                          do
                                                                                          {
                                                                                             _loc5_++;
                                                                                          }
                                                                                          while(_loc18_ && this);
                                                                                          
                                                                                          if(_loc18_ && this)
                                                                                          {
                                                                                             continue loop65;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop66;
                                                                                          }
                                                                                          §§goto(addr1189);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1187:
                                                                           }
                                                                           §§goto(addr1163);
                                                                        }
                                                                     }
                                                                     §§goto(addr1187);
                                                                  }
                                                                  §§goto(addr1173);
                                                               }
                                                               §§goto(addr1164);
                                                            }
                                                            §§goto(addr1129);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1321);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc18_)
                                                   {
                                                      break loop20;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc19_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc18_ && param2))
                                                            {
                                                               §§push(this.§_-ug§);
                                                               if(_loc19_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§_-tI§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!_loc18_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc4_++;
                                                                           if(_loc18_ && param3)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop143;
                                                                        }
                                                                        addr452:
                                                                        §§goto(addr1329);
                                                                        addr1044:
                                                                        addr452:
                                                                     }
                                                                     §§goto(addr1662);
                                                                  }
                                                                  §§goto(addr1688);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr511);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1332);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr1081);
                                                }
                                             }
                                             §§goto(addr1025);
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc18_ && param2))
                                       {
                                          §§goto(addr1044);
                                       }
                                       §§goto(addr1662);
                                    }
                                    §§goto(addr1343);
                                 }
                                 §§goto(addr416);
                              }
                              §§goto(addr1033);
                           }
                           §§goto(addr1643);
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     if(!(_loc18_ && param3))
                     {
                        §§goto(addr499);
                     }
                     §§goto(addr1199);
                  }
                  §§goto(addr452);
               }
               §§goto(addr408);
            }
            §§goto(addr452);
         }
         §§goto(addr346);
      }
      
      public function §_-Fk§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         if(!(_loc14_ && _loc3_))
         {
            §§push(this.§_-ol§);
            if(!(_loc14_ && this))
            {
               §§pop().§_-bL§(param1,this.§_-03H§,this.§_-09s§,this.§_-qZ§);
               addr59:
               §§push(this.§_-ol§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!_loc14_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§_-ug§);
                  if(_loc13_ || _loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc14_ && param1))
                        {
                           §§push(0);
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr191:
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc14_ && this))
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(param1.§_-lE§);
                                       if(!_loc14_)
                                       {
                                          if(!_loc14_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc13_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           addr790:
                                                                           §§push(_loc2_);
                                                                           break;
                                                                        }
                                                                        addr131:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr133:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-ug§);
                                                                              addr135:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    while(!_loc14_)
                                                                                    {
                                                                                       _loc2_++;
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr794:
                                                                                          §§push(0.75);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr1043:
                                                                                             _loc2_ = 0;
                                                                                             addr806:
                                                                                             addr1044:
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc14_ && this))
                                                                                             {
                                                                                                if(_loc13_ || _loc2_)
                                                                                                {
                                                                                                   §§push(param1.§_-u5§);
                                                                                                   if(!(_loc14_ && param1))
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(!(_loc14_ && param1))
                                                                                                               {
                                                                                                                  addr848:
                                                                                                                  this.§_-0B5§(_loc4_.§_-PC§);
                                                                                                                  if(!(_loc13_ || this))
                                                                                                                  {
                                                                                                                     addr877:
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr848);
                                                                                                                           }
                                                                                                                           addr1022:
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr984:
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr987:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       addr997:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr998:
                                                                                                                                          §§pop();
                                                                                                                                          addr957:
                                                                                                                                          addr999:
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr967:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc14_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr978:
                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         _loc3_++;
                                                                                                                                                         addr952:
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr905:
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               addr911:
                                                                                                                                                               if(§§pop() >= this.§_-ug§)
                                                                                                                                                               {
                                                                                                                                                                  addr921:
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr939:
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr942:
                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr873:
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr875:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr877);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc2_++;
                                                                                                                                                                                             if(!(_loc14_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr806);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1044);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr942);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr939);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr921);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr873);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr905);
                                                                                                                                                                                 addr1028:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr978);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr875);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr997);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr957);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr967);
                                                                                                                                                               }
                                                                                                                                                               addr1021:
                                                                                                                                                               _loc12_ = this.§_-tI§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                                                                                                                               §§goto(addr1022);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1043);
                                                                                                                                                         }
                                                                                                                                                         addr1031:
                                                                                                                                                         _loc11_ = true;
                                                                                                                                                         _loc3_ = 0;
                                                                                                                                                         §§goto(addr1028);
                                                                                                                                                         addr1041:
                                                                                                                                                         addr1032:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr999);
                                                                                                                                                      addr976:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1031);
                                                                                                                                                }
                                                                                                                                                §§goto(addr998);
                                                                                                                                             }
                                                                                                                                             §§goto(addr984);
                                                                                                                                          }
                                                                                                                                          §§goto(addr987);
                                                                                                                                       }
                                                                                                                                       §§goto(addr976);
                                                                                                                                    }
                                                                                                                                    addr1039:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 §§goto(addr1041);
                                                                                                                              }
                                                                                                                              §§goto(addr1021);
                                                                                                                           }
                                                                                                                           §§goto(addr1032);
                                                                                                                        }
                                                                                                                        §§goto(addr952);
                                                                                                                     }
                                                                                                                     §§goto(addr921);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr860:
                                                                                                               }
                                                                                                               §§goto(addr978);
                                                                                                            }
                                                                                                            §§goto(addr875);
                                                                                                         }
                                                                                                         §§goto(addr848);
                                                                                                      }
                                                                                                      §§goto(addr1039);
                                                                                                      §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                                   }
                                                                                                   §§goto(addr911);
                                                                                                }
                                                                                                §§goto(addr952);
                                                                                             }
                                                                                             §§goto(addr905);
                                                                                          }
                                                                                          §§goto(addr860);
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr136:
                                                                                 }
                                                                                 this.§_-tI§[_loc3_].SolveVelocityConstraints(param1);
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_++;
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr131:
                                                                     }
                                                                     else
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§goto(addr131);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr170:
                                                                           }
                                                                        }
                                                                        §§goto(addr794);
                                                                     }
                                                                     §§goto(addr794);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr131);
                                                                  }
                                                               }
                                                               §§goto(addr136);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr794);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr135);
                                       }
                                       addr793:
                                       if(§§pop() < §§pop())
                                       {
                                          if((_loc6_ = this.§_-oa§[_loc2_]).§_-oF§() == b2Body.b2_staticBody)
                                          {
                                             if(_loc13_ || param1)
                                             {
                                                addr269:
                                                _loc2_++;
                                                if(_loc13_ || _loc3_)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(false)
                                                         {
                                                            addr283:
                                                            _loc6_.§_-da§();
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  §§goto(addr269);
                                                               }
                                                               addr779:
                                                               _loc6_.§_-kZ§.Normalize();
                                                               addr739:
                                                               _loc6_.§_-kZ§.x *= b2Settings.b2_maxTranslation * param1.§_-00-§;
                                                               addr740:
                                                               addr777:
                                                               addr735:
                                                               addr737:
                                                               addr738:
                                                               addr733:
                                                               addr732:
                                                               addr730:
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc6_.§_-kZ§);
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        §§push(_loc6_.§_-kZ§);
                                                                        if(!(_loc14_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§push(b2Settings.b2_maxTranslation);
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§push(param1.§_-00-§);
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             addr717:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                addr725:
                                                                                                §§pop().y = §§pop() * §§pop();
                                                                                                addr726:
                                                                                                §§push(param1.§_-pn§);
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc13_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         addr532:
                                                                                                         §§push(_loc6_.m_angularVelocity);
                                                                                                         if(_loc13_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc13_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc13_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!(_loc14_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc13_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 if(_loc13_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr597:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr605:
                                                                                                                                       §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                       if(_loc13_ || param1)
                                                                                                                                       {
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             addr615:
                                                                                                                                             if(_loc13_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr624:
                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr627:
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr634:
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr635:
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                            if(_loc13_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr653:
                                                                                                                                                               §§push(§§pop() * param1.§_-00-§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                                                                            addr463:
                                                                                                                                                            _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                            addr460:
                                                                                                                                                            addr657:
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               addr451:
                                                                                                                                                               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                                                               addr450:
                                                                                                                                                               addr448:
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr424:
                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr443:
                                                                                                                                                                     §§pop().c.x = _loc6_.m_sweep.c.x + param1.§_-pn§ * _loc6_.§_-kZ§.x;
                                                                                                                                                                     addr349:
                                                                                                                                                                     addr444:
                                                                                                                                                                     addr442:
                                                                                                                                                                     addr441:
                                                                                                                                                                     addr440:
                                                                                                                                                                     addr438:
                                                                                                                                                                     addr436:
                                                                                                                                                                     addr435:
                                                                                                                                                                     addr434:
                                                                                                                                                                     §§push(_loc6_.m_sweep.c);
                                                                                                                                                                     if(_loc13_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§_-pn§);
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.§_-kZ§);
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr398:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc13_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr406:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      addr409:
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc13_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().a);
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§_-pn§);
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                              addr343:
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr283);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr488:
                                                                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr460);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr740);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr615);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr450);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr463);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr424);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr349);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr635);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr451);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr444);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr443);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr442);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr441);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr440);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr438);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr398);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr436);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr406);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr435);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr434);
                                                                                                                                                                     }
                                                                                                                                                                     addr432:
                                                                                                                                                                     §§goto(addr432);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr448);
                                                                                                                                                                  addr459:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr657);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr653);
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      §§push(b2Settings.b2_maxRotation);
                                                                                                                                                      if(_loc13_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * param1.§_-00-§);
                                                                                                                                                      }
                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                      §§goto(addr488);
                                                                                                                                                   }
                                                                                                                                                   addr776:
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr777);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr726);
                                                                                                                                                }
                                                                                                                                                addr788:
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                             }
                                                                                                                                             addr746:
                                                                                                                                             §§push(_loc7_ * _loc7_);
                                                                                                                                             if(_loc13_ || this)
                                                                                                                                             {
                                                                                                                                                addr756:
                                                                                                                                                §§push(_loc8_ * _loc8_);
                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                {
                                                                                                                                                   addr787:
                                                                                                                                                   if(_loc13_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr772:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr776);
                                                                                                                                                         §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc6_.§_-kZ§.y);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr788);
                                                                                                                                                   §§push(Number(§§pop() * §§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr776);
                                                                                                                                             }
                                                                                                                                             §§goto(addr787);
                                                                                                                                          }
                                                                                                                                          §§goto(addr463);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr624);
                                                                                                                                 }
                                                                                                                                 §§goto(addr627);
                                                                                                                              }
                                                                                                                              §§goto(addr756);
                                                                                                                           }
                                                                                                                           §§goto(addr597);
                                                                                                                        }
                                                                                                                        §§goto(addr772);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr624);
                                                                                                               }
                                                                                                               §§goto(addr746);
                                                                                                            }
                                                                                                            §§goto(addr756);
                                                                                                         }
                                                                                                         §§goto(addr597);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr746);
                                                                                                }
                                                                                                §§goto(addr605);
                                                                                             }
                                                                                             §§goto(addr735);
                                                                                          }
                                                                                          §§goto(addr737);
                                                                                       }
                                                                                       §§goto(addr738);
                                                                                    }
                                                                                    §§goto(addr717);
                                                                                 }
                                                                                 §§goto(addr733);
                                                                              }
                                                                              §§goto(addr739);
                                                                           }
                                                                           §§goto(addr725);
                                                                        }
                                                                        §§goto(addr732);
                                                                     }
                                                                     §§goto(addr779);
                                                                  }
                                                                  §§goto(addr730);
                                                               }
                                                               addr780:
                                                               §§goto(addr780);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr790);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr772);
                                             §§push(param1.§_-pn§);
                                             addr267:
                                          }
                                          §§push(param1.§_-pn§);
                                          if(!_loc14_)
                                          {
                                             §§push(_loc6_.§_-kZ§);
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_ || _loc2_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc13_)
                                                         {
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      §§goto(addr772);
                                                   }
                                                   §§goto(addr532);
                                                }
                                                §§goto(addr634);
                                             }
                                             §§goto(addr772);
                                          }
                                          §§goto(addr605);
                                       }
                                       §§goto(addr794);
                                    }
                                    §§goto(addr133);
                                 }
                                 break;
                              }
                              §§goto(addr793);
                              §§push(this.§_-F9§);
                           }
                        }
                     }
                     else
                     {
                        this.§_-tI§[_loc2_].InitVelocityConstraints(param1);
                     }
                     _loc2_++;
                     continue loop0;
                  }
                  §§goto(addr793);
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §_-0B5§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc7_)
         {
            if(this.§_-Te§ == null)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-09s§)
         {
            _loc3_ = this.§_-03H§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc6_ || _loc3_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr171:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr91);
         }
      }
      
      public function §_-gW§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            param1.§_-Sb§ = this.§_-F9§;
         }
         var _loc2_:* = this.§_-F9§++;
         this.§_-oa§[_loc2_] = param1;
      }
      
      public function §_-ms§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-09s§++;
         this.§_-03H§[_loc2_] = param1;
      }
      
      public function §_-9S§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-ug§++;
         this.§_-tI§[_loc2_] = param1;
      }
   }
}
