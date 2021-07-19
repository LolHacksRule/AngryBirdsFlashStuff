package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2ContactListener;
   import §'!&§.b2Fixture;
   import §,Z§.b2Shape;
   import §3c§.b2ContactID;
   import §3c§.b2Manifold;
   import §3c§.b2ManifoldPoint;
   import §3c§.b2TOIInput;
   import §3c§.b2TimeOfImpact;
   import §3c§.b2WorldManifold;
   import §9t§.b2Sweep;
   import §9t§.b2Transform;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §0"&§:uint = 1;
      
      b2internal static var § "3§:uint = 2;
      
      b2internal static var §]9§:uint = 4;
      
      b2internal static var §-j§:uint = 8;
      
      b2internal static var §`!&§:uint = 16;
      
      b2internal static var §#!&§:uint = 32;
      
      b2internal static var §+a§:uint = 64;
      
      private static var §%!'§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0"&§ = 1;
         }
         loop0:
         while(true)
         {
            § "3§ = 2;
            loop1:
            while(true)
            {
               §]9§ = 4;
               addr107:
               while(true)
               {
                  §-j§ = 8;
                  while(!_loc2_)
                  {
                     §`!&§ = 16;
                     continue loop0;
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      b2internal var §0" §:uint;
      
      b2internal var §20§:b2Contact;
      
      b2internal var §+!o§:b2Contact;
      
      b2internal var §?s§:b2ContactEdge;
      
      b2internal var § E§:b2ContactEdge;
      
      b2internal var §;"B§:b2Fixture;
      
      b2internal var §8q§:b2Fixture;
      
      b2internal var §8!?§:b2Manifold;
      
      b2internal var §0!9§:b2Manifold;
      
      b2internal var §0H§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§?s§ = new b2ContactEdge();
         }
         loop0:
         while(true)
         {
            this.§ E§ = new b2ContactEdge();
            do
            {
               this.§8!?§ = new b2Manifold();
               do
               {
                  this.§0!9§ = new b2Manifold();
                  continue loop0;
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      public function §,X§() : b2Manifold
      {
         return this.§8!?§;
      }
      
      public function §=7§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§;"B§.GetBody();
         var _loc3_:b2Body = this.§8q§.GetBody();
         var _loc4_:b2Shape = this.§;"B§.GetShape();
         var _loc5_:b2Shape = this.§8q§.GetShape();
         if(!(_loc6_ && param1))
         {
            param1.§>`§(this.§8!?§,_loc2_.§>u§(),_loc4_.§7!m§,_loc3_.§>u§(),_loc5_.§7!m§);
         }
      }
      
      public function §]Q§() : Boolean
      {
         return (this.§0" § & b2internal::`!&) == b2internal::`!&;
      }
      
      public function §9a§() : Boolean
      {
         return (this.§0" § & b2internal:: "3) == b2internal:: "3;
      }
      
      public function §2!Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::0"&;
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr66:
                     this.§0" § |= b2internal::0"&;
                     addr72:
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr66);
      }
      
      public function §]w§() : Boolean
      {
         return (this.§0" § & b2internal::0"&) == b2internal::0"&;
      }
      
      public function §`"!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::#!&;
               if(!(_loc3_ || _loc2_))
               {
                  addr72:
               }
               return;
            }
            if(_loc3_)
            {
               addr66:
               this.§0" § |= b2internal::#!&;
            }
            §§goto(addr72);
         }
         §§goto(addr66);
      }
      
      public function §0!?§() : Boolean
      {
         return (this.§0" § & b2internal::#!&) == b2internal::#!&;
      }
      
      public function §`!y§() : b2Contact
      {
         return this.§+!o§;
      }
      
      public function §'J§() : b2Fixture
      {
         return this.§;"B§;
      }
      
      public function §#"%§() : b2Fixture
      {
         return this.§8q§;
      }
      
      public function §0]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§0" § |= b2internal::+a;
         }
      }
      
      b2internal function §`"<§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§0" § = b2internal::#!&;
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
                        while(true)
                        {
                           §§pop();
                           addr132:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr131:
                     }
                     while(true)
                     {
                        loop6:
                        for(; !§§pop(); loop8:
                        while(!(_loc5_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    loop13:
                                    while(§§pop())
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   this.§0" § |= b2internal::0"&;
                                                   addr77:
                                                   if(!_loc6_)
                                                   {
                                                      addr114:
                                                      if(_loc6_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr132);
                                                }
                                             }
                                             else if(_loc5_)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr81);
                                          }
                                          else
                                          {
                                             loop11:
                                             while(_loc6_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param2.§]w§());
                                                   if(!_loc6_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop11;
                                                      }
                                                      addr96:
                                                   }
                                                }
                                             }
                                             this.§8q§ = null;
                                             addr125:
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr77);
                                    }
                                    var _loc3_:b2Body = param1.GetBody();
                                    var _loc4_:b2Body = param2.GetBody();
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr453:
                                       §§push(_loc3_.§@!N§() != b2Body.b2_dynamicBody || _loc3_.§9!0§());
                                       §§push(_loc3_.§@!N§() != b2Body.b2_dynamicBody || _loc3_.§9!0§());
                                       if(_loc6_ || param2)
                                       {
                                          if(!§§pop())
                                          {
                                             addr462:
                                             if(_loc6_)
                                             {
                                                §§pop();
                                                addr465:
                                                §§push(_loc4_.§@!N§());
                                                if(!_loc5_)
                                                {
                                                   §§push(b2Body.b2_dynamicBody);
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr425:
                                                               §§push(§§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr430:
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              addr447:
                                                                              §§push(_loc4_.§9!0§());
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       addr390:
                                                                                       addr389:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr391:
                                                                                          this.§0" § |= b2internal:: "3;
                                                                                          addr397:
                                                                                       }
                                                                                       this.§;"B§ = param1;
                                                                                       addr371:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          this.§8q§ = param2;
                                                                                          this.§8!?§.§[!J§ = 0;
                                                                                          addr354:
                                                                                          addr366:
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             this.§20§ = null;
                                                                                             this.§+!o§ = null;
                                                                                             addr348:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr335:
                                                                                                this.§?s§.§%!b§ = null;
                                                                                                addr305:
                                                                                                addr336:
                                                                                                §§push(this.§?s§);
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§pop().§8!$§ = null;
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_ || param2)
                                                                                                         {
                                                                                                            addr287:
                                                                                                            §§push(this.§?s§);
                                                                                                            §§push(null);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().§ X§ = §§pop();
                                                                                                               addr295:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(this.§?s§);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§pop().§1!>§ = §§pop();
                                                                                                                                    addr273:
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr248:
                                                                                                                                          this.§ E§.§%!b§ = null;
                                                                                                                                          addr242:
                                                                                                                                          this.§ E§.§8!$§ = null;
                                                                                                                                          addr249:
                                                                                                                                          addr243:
                                                                                                                                          addr247:
                                                                                                                                          §§push(this.§ E§);
                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr210:
                                                                                                                                             §§push(null);
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§pop().§ X§ = §§pop();
                                                                                                                                                   addr225:
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§ E§);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§1!>§ = §§pop();
                                                                                                                                                               if(!(_loc5_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr447);
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr273);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr249);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr243);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr225);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr210);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr247);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr249);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr354);
                                                                                                                                                }
                                                                                                                                                §§goto(addr248);
                                                                                                                                             }
                                                                                                                                             §§goto(addr242);
                                                                                                                                          }
                                                                                                                                          addr241:
                                                                                                                                          §§goto(addr241);
                                                                                                                                       }
                                                                                                                                       §§goto(addr348);
                                                                                                                                    }
                                                                                                                                    §§goto(addr295);
                                                                                                                                 }
                                                                                                                                 §§goto(addr313);
                                                                                                                              }
                                                                                                                              §§goto(addr287);
                                                                                                                           }
                                                                                                                           §§goto(addr305);
                                                                                                                        }
                                                                                                                        §§goto(addr287);
                                                                                                                     }
                                                                                                                     §§goto(addr485);
                                                                                                                  }
                                                                                                                  §§goto(addr336);
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                         §§goto(addr397);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                addr334:
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr465);
                                                                                    }
                                                                                    §§goto(addr453);
                                                                                 }
                                                                                 §§goto(addr430);
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           §§goto(addr453);
                                                                        }
                                                                        §§goto(addr484);
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                            §§goto(addr430);
                                                         }
                                                         §§goto(addr484);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                }
                                             }
                                             §§goto(addr453);
                                          }
                                          §§goto(addr425);
                                       }
                                       §§goto(addr453);
                                    }
                                    §§goto(addr391);
                                 }
                                 addr46:
                              }
                              §§goto(addr96);
                           }
                           continue loop2;
                        })
                        {
                           while(true)
                           {
                              §§push(param1.§]w§());
                              continue loop6;
                           }
                        }
                        this.§;"B§ = null;
                        §§goto(addr125);
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§goto(addr46);
                  §§push(Boolean(§§pop()));
               }
            }
         }
         §§goto(addr104);
      }
      
      b2internal function §]P§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§0!9§;
         if(_loc17_ || _loc2_)
         {
            this.§0!9§ = this.§8!?§;
         }
         loop0:
         while(true)
         {
            addr64:
            addr81:
            while(true)
            {
               this.§8!?§ = _loc2_;
               continue loop0;
            }
            var _loc3_:* = false;
            var _loc4_:* = (this.§0" § & b2internal::`!&) == b2internal::`!&;
            var _loc5_:b2Body = this.§;"B§.m_body;
            var _loc6_:b2Body = this.§8q§.m_body;
            addr110:
            §§push(this.§;"B§.§9G§.§5"0§(this.§8q§.§9G§));
            if(!_loc18_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc17_)
            {
               §§push(this.§0" §);
               if(!_loc18_)
               {
                  §§push(b2internal::0"&);
                  if(!_loc18_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!_loc18_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc18_ && _loc3_))
                           {
                              §§push(_loc7_);
                              if(_loc17_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc17_ || param1)
                                    {
                                       _loc8_ = this.§;"B§.GetShape();
                                       _loc9_ = this.§8q§.GetShape();
                                       _loc10_ = _loc5_.§>u§();
                                       _loc11_ = _loc6_.§>u§();
                                       if(_loc17_ || this)
                                       {
                                          §§push(b2Shape.§5"0§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(!_loc18_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr182:
                                          §§push(this.§8!?§);
                                          if(_loc17_)
                                          {
                                             §§pop().§[!J§ = 0;
                                             if(_loc17_)
                                             {
                                                loop55:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop56:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§0" § &= ~b2internal::`!&;
                                                         loop57:
                                                         while(!(_loc18_ && _loc2_))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr720:
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        addr693:
                                                                     }
                                                                     loop31:
                                                                     while(_loc17_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr697:
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr747:
                                                                                 §§push(_loc4_);
                                                                                 break loop31;
                                                                              }
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr670:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                       }
                                                                                       addr673:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr693);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr697:
                                                                        }
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    param1.BeginContact(this);
                                                                                    addr679:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr676:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 loop37:
                                                                                 while(_loc17_ || param1)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       addr651:
                                                                                    }
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr721:
                                                                                          loop40:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr730:
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         if(_loc18_ && _loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(!(_loc17_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop39;
                                                                                                            }
                                                                                                            if(_loc18_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            if(_loc18_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                         }
                                                                                                         if(!(_loc17_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop40;
                                                                                                         }
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              if(_loc18_ && this)
                                                                                                                              {
                                                                                                                                 continue loop57;
                                                                                                                              }
                                                                                                                              param1.EndContact(this);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr535:
                                                                                                                              if(!(_loc17_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    param1.PreSolve(this,this.§0!9§);
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 addr749:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc5_.SetAwake(true);
                                                                                                                                    addr752:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_.SetAwake(true);
                                                                                                                                       break loop57;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr700);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr632:
                                                                                                                        }
                                                                                                                        loop44:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§0" § & b2internal::0"&);
                                                                                                                           addr526:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr527:
                                                                                                                              if(§§pop() != 0)
                                                                                                                              {
                                                                                                                                 break loop44;
                                                                                                                              }
                                                                                                                              if(!(_loc17_ || this))
                                                                                                                              {
                                                                                                                                 continue loop41;
                                                                                                                              }
                                                                                                                              §§goto(addr535);
                                                                                                                           }
                                                                                                                           §§goto(addr632);
                                                                                                                        }
                                                                                                                        addr517:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     continue loop57;
                                                                                                                     addr613:
                                                                                                                  }
                                                                                                                  continue loop56;
                                                                                                               }
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                         §§goto(addr651);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      addr730:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr679);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§0" § |= b2internal::`!&;
                                                                                                   §§goto(addr730);
                                                                                                }
                                                                                                addr724:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr697);
                                                                                             }
                                                                                             §§goto(addr700);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop55;
                                                                                          }
                                                                                          continue loop29;
                                                                                          addr721:
                                                                                       }
                                                                                       §§goto(addr613);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr670);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§goto(addr749);
                                                                     }
                                                                     §§goto(addr721);
                                                                  }
                                                                  §§goto(addr697);
                                                               }
                                                            }
                                                            §§goto(addr752);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr721);
                                                            §§goto(addr711);
                                                         }
                                                         addr711:
                                                      }
                                                      §§goto(addr724);
                                                   }
                                                }
                                                addr190:
                                             }
                                             else
                                             {
                                                loop67:
                                                while(true)
                                                {
                                                   this.§0" § |= b2internal:: "3;
                                                   loop68:
                                                   while(true)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop13:
                                                         while(!(_loc18_ && _loc3_))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr235:
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           this.Evaluate();
                                                                        }
                                                                        loop14:
                                                                        while(_loc17_)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8!?§);
                                                                                    addr205:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§[!J§);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > 0);
                                                                                          if(_loc18_ && this)
                                                                                          {
                                                                                             break;
                                                                                             addr216:
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_ || this)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop68;
                                                                                          }
                                                                                          continue loop68;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.§9!0§());
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr365:
                                                                                                   §§pop();
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.§@!N§());
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(b2Body.b2_dynamicBody);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§push(!§§pop());
                                                                                                               loop5:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc17_ || param1)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc17_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc17_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       addr384:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr385:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr383:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                              addr340:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr292:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 this.§0" § &= ~b2internal:: "3;
                                                                                                                                 break loop14;
                                                                                                                              }
                                                                                                                              while(_loc17_ || param1)
                                                                                                                              {
                                                                                                                                 continue loop67;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(_loc17_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§9!0§());
                                                                                                                              continue loop5;
                                                                                                                              §§goto(addr294);
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     addr328:
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr235);
                                                                                                            }
                                                                                                            addr318:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr382:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr382:
                                                                                                         }
                                                                                                         §§goto(addr383);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr380:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         addr380:
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   addr366:
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§8!?§);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr301:
                                             }
                                             §§goto(addr730);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr366);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr190);
                        }
                        else
                        {
                           §§goto(addr380);
                           §§push(_loc5_.§@!N§());
                        }
                        §§goto(addr380);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr382);
               }
               §§goto(addr380);
            }
            §§goto(addr301);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §?!l§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§%!'§);
            while(true)
            {
               §§pop().§3">§.Set(this.§;"B§.GetShape());
               addr48:
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§pop().§>s§ = b2Settings.b2_linearSlop;
               if(!(_loc3_ && _loc3_))
               {
                  addr75:
                  if(_loc3_ && param2)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(§%!'§);
                        addr97:
                        loop4:
                        for(; _loc4_ || this; if(!(_loc4_ || param2))
                        {
                           continue;
                        },§§goto(addr48))
                        {
                           §§pop().§3v§ = param1;
                           loop5:
                           for(; _loc4_; while(true)
                           {
                              if(_loc3_ && param1)
                              {
                                 continue loop5;
                              }
                              §§goto(addr94);
                           },continue loop4)
                           {
                              §§push(§%!'§);
                              while(true)
                              {
                                 §§pop().§]x§ = param2;
                                 §§push(§%!'§);
                                 addr94:
                                 continue loop5;
                                 if(_loc4_ || param2)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§%!'§);
                              break loop4;
                           }
                        }
                        while(true)
                        {
                           §§pop().§&!"§.Set(this.§8q§.GetShape());
                           continue loop3;
                           §§goto(addr97);
                        }
                     }
                  }
                  return b2TimeOfImpact.§9Y§(§%!'§);
               }
               §§goto(addr87);
            }
         }
         §§goto(addr133);
      }
   }
}
