package §30§
{
   import § o§.b2Body;
   import § o§.b2ContactListener;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2ContactID;
   import §-r§.b2Manifold;
   import §-r§.b2ManifoldPoint;
   import §-r§.b2TOIInput;
   import §-r§.b2TimeOfImpact;
   import §-r§.b2WorldManifold;
   import §6!H§.b2Sweep;
   import §6!H§.b2Transform;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §9l§:uint = 1;
      
      b2internal static var §;u§:uint = 2;
      
      b2internal static var §[!6§:uint = 4;
      
      b2internal static var §"1§:uint = 8;
      
      b2internal static var §5q§:uint = 16;
      
      b2internal static var §[!X§:uint = 32;
      
      b2internal static var §+<§:uint = 64;
      
      private static var §7#§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §9l§ = 1;
            while(true)
            {
               §;u§ = 2;
               while(_loc2_ || b2Contact)
               {
                  §[!6§ = 4;
                  loop2:
                  while(true)
                  {
                     §"1§ = 8;
                     while(true)
                     {
                        §5q§ = 16;
                        addr82:
                        while(_loc2_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc2_ || b2Contact))
                  {
                     continue;
                  }
                  §§goto(addr48);
               }
            }
         }
         §§goto(addr77);
      }
      
      b2internal var §0b§:uint;
      
      b2internal var §`D§:b2Contact;
      
      b2internal var §-![§:b2Contact;
      
      b2internal var §9F§:b2ContactEdge;
      
      b2internal var §5!?§:b2ContactEdge;
      
      b2internal var §45§:b2Fixture;
      
      b2internal var §?G§:b2Fixture;
      
      b2internal var §-0§:b2Manifold;
      
      b2internal var §'o§:b2Manifold;
      
      b2internal var §>&§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9F§ = new b2ContactEdge();
            loop0:
            while(true)
            {
               this.§5!?§ = new b2ContactEdge();
               while(true)
               {
                  this.§-0§ = new b2Manifold();
                  loop2:
                  while(_loc1_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§'o§ = new b2Manifold();
                           do
                           {
                              super();
                           }
                           while(_loc2_ && _loc2_);
                           
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §3!#§() : b2Manifold
      {
         return this.§-0§;
      }
      
      public function §#h§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§45§.GetBody();
         var _loc3_:b2Body = this.§?G§.GetBody();
         var _loc4_:b2Shape = this.§45§.GetShape();
         var _loc5_:b2Shape = this.§?G§.GetShape();
         if(_loc6_)
         {
            param1.§#!O§(this.§-0§,_loc2_.§2!i§(),_loc4_.§#&§,_loc3_.§2!i§(),_loc5_.§#&§);
         }
      }
      
      public function §?5§() : Boolean
      {
         return (this.§0b§ & b2internal::5q) == b2internal::5q;
      }
      
      public function §=!F§() : Boolean
      {
         return (this.§0b§ & b2internal::;u) == b2internal::;u;
      }
      
      public function §,!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§0b§ &= ~b2internal::9l;
               if(_loc2_)
               {
                  if(!_loc2_)
                  {
                     addr60:
                     this.§0b§ |= b2internal::9l;
                     addr66:
                  }
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr60);
      }
      
      public function §;>§() : Boolean
      {
         return (this.§0b§ & b2internal::9l) == b2internal::9l;
      }
      
      public function §[!O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§0b§ &= ~b2internal::[!X;
               if(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     addr60:
                     this.§0b§ |= b2internal::[!X;
                     addr66:
                  }
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr60);
      }
      
      public function §0!E§() : Boolean
      {
         return (this.§0b§ & b2internal::[!X) == b2internal::[!X;
      }
      
      public function §;!B§() : b2Contact
      {
         return this.§-![§;
      }
      
      public function §`u§() : b2Fixture
      {
         return this.§45§;
      }
      
      public function §7t§() : b2Fixture
      {
         return this.§?G§;
      }
      
      public function §[]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§0b§ |= b2internal::+<;
         }
      }
      
      b2internal function §2'§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§0b§ = b2internal::[!X;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(!param2);
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 addr87:
                                 if(!(_loc6_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr102:
                                    §§push(§§pop());
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param2.§;>§());
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                while(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr132:
                                                      this.§45§ = null;
                                                      this.§?G§ = null;
                                                      addr135:
                                                   }
                                                   else
                                                   {
                                                      addr64:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr135);
                                                            }
                                                            return;
                                                            addr122:
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      else if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1.§;>§());
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr87);
                                                         }
                                                         §§goto(addr102);
                                                      }
                                                      addr82:
                                                   }
                                                   §§goto(addr122);
                                                }
                                                break;
                                                addr38:
                                             }
                                             continue loop8;
                                          }
                                          var _loc3_:b2Body = param1.GetBody();
                                          var _loc4_:b2Body = param2.GetBody();
                                          if(!(_loc5_ && param2))
                                          {
                                             addr466:
                                             §§push(_loc3_.§7!_§() == b2Body.b2_dynamicBody);
                                             if(_loc6_ || param2)
                                             {
                                                §§push(!§§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   addr493:
                                                   addr492:
                                                   if(!§§pop())
                                                   {
                                                      addr494:
                                                      §§pop();
                                                      §§push(Boolean(_loc3_.§9L§()));
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      §§goto(addr494);
                                                      addr495:
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      addr460:
                                                      §§pop();
                                                      addr461:
                                                      §§push(_loc4_.§7!_§());
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(b2Body.b2_dynamicBody);
                                                         if(!_loc5_)
                                                         {
                                                            addr434:
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr438:
                                                               §§push(!§§pop());
                                                               §§push(!§§pop());
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr449:
                                                                        §§pop();
                                                                        addr450:
                                                                        §§push(_loc4_.§9L§());
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 addr390:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr401:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr403:
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                this.§0b§ |= b2internal::;u;
                                                                                                addr416:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr360:
                                                                                                   this.§45§ = param1;
                                                                                                   this.§?G§ = param2;
                                                                                                   this.§-0§.§break§ = 0;
                                                                                                   addr352:
                                                                                                   addr359:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      this.§`D§ = null;
                                                                                                      this.§-![§ = null;
                                                                                                      addr335:
                                                                                                      this.§9F§.§4§ = null;
                                                                                                      addr309:
                                                                                                      this.§9F§.§4!N§ = null;
                                                                                                      addr310:
                                                                                                      addr341:
                                                                                                      addr336:
                                                                                                      addr334:
                                                                                                      addr308:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc5_ && this))
                                                                                                                  {
                                                                                                                     addr272:
                                                                                                                     §§push(this.§9F§);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           addr287:
                                                                                                                           §§push(null);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop().§23§ = §§pop();
                                                                                                                                 addr297:
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(this.§9F§);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(null);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          §§pop().§'!4§ = §§pop();
                                                                                                                                          addr252:
                                                                                                                                          this.§5!?§.§4§ = null;
                                                                                                                                          addr268:
                                                                                                                                          addr253:
                                                                                                                                          addr251:
                                                                                                                                          §§push(this.§5!?§);
                                                                                                                                          §§push(null);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§pop().§4!N§ = §§pop();
                                                                                                                                             addr235:
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr205:
                                                                                                                                                §§push(this.§5!?§);
                                                                                                                                                if(_loc6_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr213:
                                                                                                                                                   §§pop().§23§ = null;
                                                                                                                                                   addr214:
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§5!?§);
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(null);
                                                                                                                                                                     if(_loc6_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§'!4§ = §§pop();
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr297);
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr268);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr214);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr268);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr213);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr268);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr205);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr352);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr310);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr253);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr235);
                                                                                                                                                }
                                                                                                                                                §§goto(addr251);
                                                                                                                                             }
                                                                                                                                             §§goto(addr341);
                                                                                                                                          }
                                                                                                                                          §§goto(addr252);
                                                                                                                                       }
                                                                                                                                       §§goto(addr287);
                                                                                                                                    }
                                                                                                                                    §§goto(addr272);
                                                                                                                                 }
                                                                                                                                 §§goto(addr336);
                                                                                                                              }
                                                                                                                              §§goto(addr335);
                                                                                                                           }
                                                                                                                           §§goto(addr309);
                                                                                                                        }
                                                                                                                        §§goto(addr334);
                                                                                                                     }
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                                  §§goto(addr461);
                                                                                                               }
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      addr346:
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   addr364:
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                             §§goto(addr450);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr494);
                                                                                 }
                                                                                 §§goto(addr438);
                                                                              }
                                                                              §§goto(addr434);
                                                                           }
                                                                           §§goto(addr449);
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                               }
                                                               §§goto(addr493);
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   §§goto(addr438);
                                                }
                                                §§goto(addr494);
                                             }
                                             §§goto(addr492);
                                          }
                                          §§goto(addr360);
                                       }
                                       addr111:
                                    }
                                    §§goto(addr38);
                                 }
                                 §§goto(addr111);
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr82);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      b2internal function §do §(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:* = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§'o§;
         if(_loc17_)
         {
            this.§'o§ = this.§-0§;
            loop0:
            while(true)
            {
               addr59:
               while(true)
               {
                  this.§-0§ = _loc2_;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr59);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§0b§ & b2internal::5q) == b2internal::5q;
         var _loc5_:b2Body = this.§45§.m_body;
         var _loc6_:b2Body = this.§?G§.m_body;
         §§push(this.§45§.§<D§.§"!F§(this.§?G§.§<D§));
         if(_loc17_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc17_ || param1)
         {
            §§push(this.§0b§);
            if(!_loc18_)
            {
               §§push(b2internal::9l);
               if(!(_loc18_ && this))
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc18_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc7_);
                           if(_loc17_)
                           {
                              if(§§pop())
                              {
                                 if(_loc17_ || param1)
                                 {
                                    addr157:
                                    _loc8_ = this.§45§.GetShape();
                                    _loc9_ = this.§?G§.GetShape();
                                    _loc10_ = _loc5_.§2!i§();
                                    _loc11_ = _loc6_.§2!i§();
                                    if(!_loc18_)
                                    {
                                       §§push(b2Shape.§"!F§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(!(_loc18_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr192:
                                       §§push(this.§-0§);
                                       if(_loc17_ || _loc3_)
                                       {
                                          §§pop().§break§ = 0;
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop26:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§0b§ &= ~b2internal::5q;
                                                      loop27:
                                                      for(; _loc17_; if(!(_loc17_ || param1))
                                                      {
                                                         continue;
                                                      },if(_loc17_ || param1)
                                                      {
                                                         param1.PreSolve(this,this.§'o§);
                                                         §§goto(addr558);
                                                      },§§goto(addr727))
                                                      {
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            loop29:
                                                            while(_loc17_ || _loc2_)
                                                            {
                                                               §§push(false);
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop32:
                                                                     while(!_loc18_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 loop35:
                                                                                 while(_loc17_ || _loc2_)
                                                                                 {
                                                                                    §§push(true);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       addr649:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc18_ && param1)
                                                                                          {
                                                                                             addr722:
                                                                                             §§push(_loc4_);
                                                                                             break loop32;
                                                                                          }
                                                                                       }
                                                                                       continue loop25;
                                                                                       addr573:
                                                                                       if(!(_loc17_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr581:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(!(_loc18_ && _loc3_))
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            param1.EndContact(this);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr526);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop40:
                                                                                                            while(_loc17_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        addr629:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr630:
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr637:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                       §§goto(addr573);
                                                                                                                                    }
                                                                                                                                    §§goto(addr581);
                                                                                                                                 }
                                                                                                                                 addr637:
                                                                                                                              }
                                                                                                                              addr658:
                                                                                                                              while(!_loc18_)
                                                                                                                              {
                                                                                                                                 param1.BeginContact(this);
                                                                                                                                 break loop43;
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        addr629:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            addr724:
                                                                                                            _loc5_.SetAwake(true);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_.SetAwake(true);
                                                                                                               break loop27;
                                                                                                            }
                                                                                                            addr727:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr630);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§0b§ |= b2internal::5q;
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   addr699:
                                                                                                }
                                                                                                addr526:
                                                                                                loop48:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0b§ & b2internal::9l);
                                                                                                   addr531:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr532:
                                                                                                      if(§§pop() != 0)
                                                                                                      {
                                                                                                         break loop48;
                                                                                                      }
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                      continue loop46;
                                                                                                   }
                                                                                                }
                                                                                                addr522:
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr649);
                                                                                       }
                                                                                       §§goto(addr629);
                                                                                    }
                                                                                 }
                                                                                 continue loop31;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr658);
                                                                           }
                                                                           §§goto(addr606);
                                                                        }
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     §§goto(addr724);
                                                                  }
                                                               }
                                                            }
                                                            continue loop26;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop25;
                                                      }
                                                   }
                                                   §§goto(addr699);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   loop6:
                                                   while(!_loc18_)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc18_ && this))
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  this.Evaluate();
                                                                  loop7:
                                                                  while(_loc17_)
                                                                  {
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-0§);
                                                                        addr235:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§break§);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > 0);
                                                                              if(_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop7;
                                                                                    addr220:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       if(!(_loc17_ || _loc3_))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             addr498:
                                                                                             §§push(_loc12_);
                                                                                          }
                                                                                          continue loop8;
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(this.§-0§.§break§);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   §§push(this.§-0§);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      (_loc13_ = §§pop().§@Z§[_loc12_]).§'!?§ = 0;
                                                                                                      if(_loc17_ || this)
                                                                                                      {
                                                                                                         _loc13_.§,m§ = 0;
                                                                                                      }
                                                                                                      _loc14_ = _loc13_.m_id;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            addr497:
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr492:
                                                                                                               §§push(_loc15_);
                                                                                                            }
                                                                                                            _loc12_++;
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         if(§§pop() >= this.§'o§.§break§)
                                                                                                         {
                                                                                                            §§goto(addr497);
                                                                                                         }
                                                                                                         if((_loc16_ = this.§'o§.§@Z§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               _loc13_.§'!?§ = _loc16_.§'!?§;
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  _loc13_.§,m§ = _loc16_.§,m§;
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§goto(addr497);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr492);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         _loc15_++;
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§goto(addr492);
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                      }
                                                                                                      §§goto(addr497);
                                                                                                   }
                                                                                                   addr512:
                                                                                                   §§pop().§break§ = 0;
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      addr721:
                                                                                                      §§goto(addr722);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr637);
                                                                                                }
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§goto(addr721);
                                                                                                }
                                                                                                §§goto(addr602);
                                                                                             }
                                                                                             §§goto(addr532);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       loop55:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc17_ || _loc3_)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                this.§0b§ |= b2internal::;u;
                                                                                                break loop7;
                                                                                             }
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.§9L§());
                                                                                                addr392:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr402:
                                                                                                            loop17:
                                                                                                            for(; _loc17_ || this; while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc17_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr387:
                                                                                                                  §§pop();
                                                                                                                  §§push(_loc6_.§9L§());
                                                                                                                  break loop6;
                                                                                                                  addr388:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop55;
                                                                                                                  }
                                                                                                                  addr282:
                                                                                                                  this.§0b§ &= ~b2internal::;u;
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               §§goto(addr388);
                                                                                                            })
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr411:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.§7!_§());
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(b2Body.b2_dynamicBody);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                 }
                                                                                                                                 addr369:
                                                                                                                              }
                                                                                                                              addr370:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc17_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr366:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr415:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(b2Body.b2_dynamicBody);
                                                                                                                        }
                                                                                                                        addr415:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        addr418:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr419:
                                                                                                                           §§push(!§§pop());
                                                                                                                           §§push(!§§pop());
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr418);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              addr303:
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 if(_loc17_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                                  addr269:
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§-0§);
                                                         }
                                                         §§goto(addr512);
                                                      }
                                                      §§goto(addr419);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc17_ || this)
                                                      {
                                                         if(_loc17_ || this)
                                                         {
                                                            §§goto(addr303);
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                      §§goto(addr370);
                                                      §§goto(addr387);
                                                   }
                                                }
                                             }
                                             addr341:
                                          }
                                          §§goto(addr637);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr157);
                     }
                     else
                     {
                        §§goto(addr415);
                        §§push(_loc5_.§7!_§());
                     }
                     §§goto(addr415);
                  }
                  §§goto(addr220);
               }
               §§goto(addr366);
            }
            §§goto(addr415);
         }
         §§goto(addr157);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §[!K§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§7#§);
            while(true)
            {
               §§pop().§-C§.Set(this.§45§.GetShape());
            }
            addr97:
         }
         while(true)
         {
            §§push(§7#§);
            while(_loc3_)
            {
               §§pop().§%!J§.Set(this.§?G§.GetShape());
               loop3:
               while(true)
               {
                  §§push(§7#§);
                  loop4:
                  while(true)
                  {
                     §§pop().§;U§ = param1;
                     addr73:
                     while(_loc3_)
                     {
                        §§push(§7#§);
                        continue loop4;
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr97);
         }
      }
   }
}
