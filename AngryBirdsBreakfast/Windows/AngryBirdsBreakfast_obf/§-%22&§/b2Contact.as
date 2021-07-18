package §-"&§
{
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2ContactListener;
   import §3!`§.b2Fixture;
   import §6Z§.b2Sweep;
   import §6Z§.b2Transform;
   import §^9§.b2ContactID;
   import §^9§.b2Manifold;
   import §^9§.b2ManifoldPoint;
   import §^9§.b2TOIInput;
   import §^9§.b2TimeOfImpact;
   import §^9§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §,R§:uint = 1;
      
      b2internal static var §#!q§:uint = 2;
      
      b2internal static var §24§:uint = 4;
      
      b2internal static var §,"-§:uint = 8;
      
      b2internal static var §<[§:uint = 16;
      
      b2internal static var §[!]§:uint = 32;
      
      b2internal static var §"8§:uint = 64;
      
      private static var §^u§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §,R§ = 1;
            loop0:
            while(true)
            {
               §#!q§ = 2;
               while(true)
               {
                  §24§ = 4;
                  addr96:
                  while(_loc2_)
                  {
                     §,"-§ = 8;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §<[§ = 16;
            §§goto(addr77);
         }
      }
      
      b2internal var §,[§:uint;
      
      b2internal var §0!^§:b2Contact;
      
      b2internal var §0!>§:b2Contact;
      
      b2internal var §`!i§:b2ContactEdge;
      
      b2internal var §5!A§:b2ContactEdge;
      
      b2internal var §]R§:b2Fixture;
      
      b2internal var §7!&§:b2Fixture;
      
      b2internal var §=!P§:b2Manifold;
      
      b2internal var §]a§:b2Manifold;
      
      b2internal var §!S§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`!i§ = new b2ContactEdge();
            while(true)
            {
               this.§5!A§ = new b2ContactEdge();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  this.§=!P§ = new b2Manifold();
                  while(true)
                  {
                     this.§]a§ = new b2Manifold();
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        while(true)
                        {
                           super();
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §"!^§() : b2Manifold
      {
         return this.§=!P§;
      }
      
      public function §;d§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§]R§.GetBody();
         var _loc3_:b2Body = this.§7!&§.GetBody();
         var _loc4_:b2Shape = this.§]R§.GetShape();
         var _loc5_:b2Shape = this.§7!&§.GetShape();
         if(!(_loc7_ && this))
         {
            param1.§",§(this.§=!P§,_loc2_.§#%§(),_loc4_.§,!;§,_loc3_.§#%§(),_loc5_.§,!;§);
         }
      }
      
      public function §0&§() : Boolean
      {
         return (this.§,[§ & b2internal::<[) == b2internal::<[;
      }
      
      public function §8!6§() : Boolean
      {
         return (this.§,[§ & b2internal::#!q) == b2internal::#!q;
      }
      
      public function §`!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               this.§,[§ &= ~b2internal::,R;
               if(_loc2_ || _loc3_)
               {
                  addr55:
               }
               else
               {
                  addr81:
               }
               return;
            }
            if(_loc2_ || _loc2_)
            {
               this.§,[§ |= b2internal::,R;
            }
            §§goto(addr81);
         }
         §§goto(addr55);
      }
      
      public function §'5§() : Boolean
      {
         return (this.§,[§ & b2internal::,R) == b2internal::,R;
      }
      
      public function §'j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§,[§ &= ~b2internal::[!];
               if(_loc2_ || this)
               {
                  if(_loc3_ && _loc2_)
                  {
                     addr70:
                     this.§,[§ |= b2internal::[!];
                     addr76:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr70);
      }
      
      public function §'9§() : Boolean
      {
         return (this.§,[§ & b2internal::[!]) == b2internal::[!];
      }
      
      public function §>X§() : b2Contact
      {
         return this.§0!>§;
      }
      
      public function §&R§() : b2Fixture
      {
         return this.§]R§;
      }
      
      public function §@!,§() : b2Fixture
      {
         return this.§7!&§;
      }
      
      public function §<t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,[§ |= b2internal::"8;
         }
      }
      
      b2internal function §?!r§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§,[§ = b2internal::[!];
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
                           addr132:
                           while(true)
                           {
                              §§push(!param2);
                              addr109:
                              while(!(_loc6_ || param2))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1.§'5§());
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ && this)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(!_loc5_)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(param2.§'5§());
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            while(§§pop())
                                                            {
                                                               continue loop8;
                                                            }
                                                            var _loc3_:b2Body = param1.GetBody();
                                                            var _loc4_:b2Body = param2.GetBody();
                                                            if(_loc6_ || this)
                                                            {
                                                               addr448:
                                                               §§push(_loc3_.§<!A§() == b2Body.b2_dynamicBody);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr467:
                                                                  addr468:
                                                                  §§push(!§§pop());
                                                                  if(!!§§pop())
                                                                  {
                                                                     addr469:
                                                                     §§pop();
                                                                     §§push(Boolean(_loc3_.§@V§()));
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                     }
                                                                     §§goto(addr469);
                                                                     addr470:
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr442:
                                                                     §§pop();
                                                                     addr443:
                                                                     §§push(_loc4_.§<!A§());
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(b2Body.b2_dynamicBody);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr416:
                                                                              §§push(!§§pop());
                                                                              §§push(!§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr422:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr427:
                                                                                             §§push(_loc4_.§@V§());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr389:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr393:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr395:
                                                                                                               this.§,[§ |= b2internal::#!q;
                                                                                                               addr401:
                                                                                                            }
                                                                                                            this.§]R§ = param1;
                                                                                                            this.§7!&§ = param2;
                                                                                                            this.§=!P§.§26§ = 0;
                                                                                                            addr373:
                                                                                                            addr368:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               this.§0!^§ = null;
                                                                                                               addr348:
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  this.§0!>§ = null;
                                                                                                                  addr321:
                                                                                                                  this.§`!i§.§;%§ = null;
                                                                                                                  addr322:
                                                                                                                  addr343:
                                                                                                                  addr320:
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           addr315:
                                                                                                                           this.§`!i§.§9!b§ = null;
                                                                                                                           addr316:
                                                                                                                           §§push(this.§`!i§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr302:
                                                                                                                              §§push(null);
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop().next = §§pop();
                                                                                                                                 addr310:
                                                                                                                                 §§push(this.§`!i§);
                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(null);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§pop().§-!3§ = §§pop();
                                                                                                                                             addr274:
                                                                                                                                             if(!(_loc5_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr250:
                                                                                                                                                      this.§5!A§.§;%§ = null;
                                                                                                                                                      addr249:
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr222:
                                                                                                                                                            §§push(this.§5!A§);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr235:
                                                                                                                                                               §§pop().§9!b§ = null;
                                                                                                                                                               addr236:
                                                                                                                                                               if(!(_loc5_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr213:
                                                                                                                                                                     §§push(this.§5!A§);
                                                                                                                                                                     §§push(null);
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().next = §§pop();
                                                                                                                                                                        addr216:
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5!A§);
                                                                                                                                                                           if(_loc6_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(null);
                                                                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§-!3§ = §§pop();
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr373);
                                                                                                                                                                                                }
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr316);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr236);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr216);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr250);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr213);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr222);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr213);
                                                                                                                                                                           addr218:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr250);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr235);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr368);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr274);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr249);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr322);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr310);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr401);
                                                                                                                                                }
                                                                                                                                                §§goto(addr373);
                                                                                                                                             }
                                                                                                                                             §§goto(addr343);
                                                                                                                                          }
                                                                                                                                          §§goto(addr321);
                                                                                                                                       }
                                                                                                                                       §§goto(addr302);
                                                                                                                                    }
                                                                                                                                    §§goto(addr320);
                                                                                                                                 }
                                                                                                                                 §§goto(addr316);
                                                                                                                              }
                                                                                                                              §§goto(addr315);
                                                                                                                           }
                                                                                                                           addr314:
                                                                                                                           §§goto(addr314);
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr395);
                                                                                                                  }
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr469);
                                                                                                      }
                                                                                                      §§goto(addr416);
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             §§goto(addr389);
                                                                                          }
                                                                                          §§goto(addr467);
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                              §§goto(addr467);
                                                                           }
                                                                           §§goto(addr422);
                                                                        }
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         else
                                                         {
                                                            addr118:
                                                            if(_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            this.§]R§ = null;
                                                         }
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr40);
                                    }
                                    continue loop2;
                                    addr67:
                                 }
                                 break;
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr118);
                     }
                     this.§7!&§ = null;
                     §§goto(addr105);
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      b2internal function §3v§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§]a§;
         if(_loc17_)
         {
            this.§]a§ = this.§=!P§;
            loop0:
            while(true)
            {
               addr64:
               while(true)
               {
                  this.§=!P§ = _loc2_;
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        this.§,[§ |= b2internal::[!];
                        if(!(_loc18_ && _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr64);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§,[§ & b2internal::<[) == b2internal::<[;
         var _loc5_:b2Body = this.§]R§.m_body;
         var _loc6_:b2Body = this.§7!&§.m_body;
         §§push(this.§]R§.§#M§.§]",§(this.§7!&§.§#M§));
         if(!(_loc18_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc18_)
         {
            §§push(this.§,[§);
            if(_loc17_)
            {
               §§push(b2internal::,R);
               if(_loc17_ || param1)
               {
                  §§push(§§pop() & §§pop());
                  if(_loc17_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc17_ || param1)
                        {
                           §§push(_loc7_);
                           if(!(_loc18_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    _loc8_ = this.§]R§.GetShape();
                                    _loc9_ = this.§7!&§.GetShape();
                                    _loc10_ = _loc5_.§#%§();
                                    _loc11_ = _loc6_.§#%§();
                                    if(_loc17_)
                                    {
                                       §§push(b2Shape.§]",§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(!_loc18_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr187:
                                       §§push(this.§=!P§);
                                       if(!(_loc18_ && param1))
                                       {
                                          §§pop().§26§ = 0;
                                          if(_loc17_)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop21:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§,[§ &= ~b2internal::<[;
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            addr730:
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       loop31:
                                                                                       while(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          while(_loc17_ || _loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         param1.BeginContact(this);
                                                                                                         loop35:
                                                                                                         for(; _loc17_ || param1; if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            continue loop34;
                                                                                                         })
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr757:
                                                                                                                  }
                                                                                                                  §§push(true);
                                                                                                                  loop38:
                                                                                                                  while(!(_loc18_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop41:
                                                                                                                                    while(!(_loc18_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc17_ || this))
                                                                                                                                       {
                                                                                                                                          addr759:
                                                                                                                                          _loc5_.SetAwake(true);
                                                                                                                                          break loop34;
                                                                                                                                       }
                                                                                                                                       param1.EndContact(this);
                                                                                                                                       loop42:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr521:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§,[§ & b2internal::,R);
                                                                                                                                             addr526:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr527:
                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                addr517:
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop42;
                                                                                                                                                }
                                                                                                                                                addr546:
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                continue loop41;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr755:
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 §§goto(addr521);
                                                                                                                              }
                                                                                                                              addr619:
                                                                                                                           }
                                                                                                                           §§push(false);
                                                                                                                           if(_loc18_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              continue loop38;
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           if(!(_loc17_ || param1))
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           §§goto(addr608);
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr668);
                                                                                                                  }
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§,[§ |= b2internal::<[;
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         addr734:
                                                                                                      }
                                                                                                      break;
                                                                                                      if(_loc18_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr517);
                                                                                                   }
                                                                                                   _loc6_.SetAwake(true);
                                                                                                   §§goto(addr755);
                                                                                                }
                                                                                                §§goto(addr639);
                                                                                             }
                                                                                             if(_loc18_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§goto(addr619);
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr759);
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
                                                            addr705:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr705);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr734);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc6_.§<!A§());
                                                if(_loc17_)
                                                {
                                                   §§push(b2Body.b2_dynamicBody);
                                                   if(!(_loc18_ && _loc3_))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc17_ || param1)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc17_ || _loc2_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.§@V§());
                                                                              loop17:
                                                                              while(!_loc18_)
                                                                              {
                                                                                 if(!(_loc17_ || param1))
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 continue loop15;
                                                                                 loop54:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc18_ && param1)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    loop61:
                                                                                    while(true)
                                                                                    {
                                                                                       this.Evaluate();
                                                                                       addr265:
                                                                                       while(_loc18_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       loop60:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§=!P§);
                                                                                          addr236:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§26§);
                                                                                             loop50:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > 0);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue loop54;
                                                                                                }
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop51:
                                                                                                   while(!_loc18_)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc17_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop50;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc12_ = §§pop();
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue loop51;
                                                                                                            }
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        addr483:
                                                                                                                        §§push(_loc12_);
                                                                                                                     }
                                                                                                                     continue loop60;
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(this.§=!P§.§26§);
                                                                                                                        if(_loc17_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§=!P§);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 (_loc13_ = §§pop().§"A§[_loc12_]).§4!p§ = 0;
                                                                                                                                 if(_loc17_ || param1)
                                                                                                                                 {
                                                                                                                                    _loc13_.§#!h§ = 0;
                                                                                                                                 }
                                                                                                                                 _loc14_ = _loc13_.m_id;
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       addr482:
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr477:
                                                                                                                                          §§push(_loc15_);
                                                                                                                                       }
                                                                                                                                       _loc12_++;
                                                                                                                                       §§goto(addr483);
                                                                                                                                    }
                                                                                                                                    if(§§pop() >= this.§]a§.§26§)
                                                                                                                                    {
                                                                                                                                       §§goto(addr482);
                                                                                                                                    }
                                                                                                                                    if((_loc16_ = this.§]a§.§"A§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          _loc13_.§4!p§ = _loc16_.§4!p§;
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             addr457:
                                                                                                                                             _loc13_.§#!h§ = _loc16_.§#!h§;
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                §§goto(addr482);
                                                                                                                                             }
                                                                                                                                             §§goto(addr483);
                                                                                                                                          }
                                                                                                                                          §§goto(addr477);
                                                                                                                                       }
                                                                                                                                       §§goto(addr457);
                                                                                                                                    }
                                                                                                                                    _loc15_++;
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr477);
                                                                                                                                    }
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              addr507:
                                                                                                                              §§pop().§26§ = 0;
                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                              {
                                                                                                                                 addr756:
                                                                                                                                 §§goto(addr757);
                                                                                                                                 §§push(_loc3_);
                                                                                                                              }
                                                                                                                              §§goto(addr671);
                                                                                                                           }
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr756);
                                                                                                                           }
                                                                                                                           §§goto(addr730);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               addr301:
                                                                                                               addr301:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§,[§ |= b2internal::#!q;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr314:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§@V§());
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr390:
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        addr389:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr526);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr278:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr278:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop54;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                §§goto(addr391);
                                                                                             }
                                                                                             continue loop54;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(!§§pop())
                                                                     {
                                                                        this.§,[§ &= ~b2internal::#!q;
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop11;
                                                               }
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr385:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc17_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                      addr385:
                                                   }
                                                   §§goto(addr389);
                                                }
                                                else
                                                {
                                                   addr383:
                                                   while(true)
                                                   {
                                                      §§goto(addr385);
                                                   }
                                                   addr383:
                                                }
                                                §§goto(addr385);
                                             }
                                          }
                                          §§goto(addr671);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr366);
                        }
                        §§goto(addr314);
                     }
                     else
                     {
                        §§goto(addr383);
                        §§push(_loc5_.§<!A§());
                     }
                     §§goto(addr383);
                  }
                  §§goto(addr210);
               }
               §§goto(addr385);
            }
            §§goto(addr383);
         }
         §§goto(addr278);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §1!$§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(§^u§);
            while(true)
            {
               §§pop().§2J§.Set(this.§]R§.GetShape());
               loop1:
               while(true)
               {
                  §§push(§^u§);
                  while(true)
                  {
                     §§pop().§4"$§.Set(this.§7!&§.GetShape());
                     loop3:
                     do
                     {
                        §§push(§^u§);
                        loop4:
                        while(true)
                        {
                           §§pop().§]!^§ = param1;
                           addr92:
                           while(true)
                           {
                              §§push(§^u§);
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     while(!_loc3_);
                     
                     if(!(_loc3_ || param2))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         return b2TimeOfImpact.§!J§(§^u§);
      }
   }
}
