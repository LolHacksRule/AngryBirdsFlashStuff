package §;T§
{
   import §"!9§.b2Shape;
   import §+S§.b2Body;
   import §+S§.b2ContactListener;
   import §+S§.b2Fixture;
   import §2"=§.b2Sweep;
   import §2"=§.b2Transform;
   import §5!o§.b2ContactID;
   import §5!o§.b2Manifold;
   import §5!o§.b2ManifoldPoint;
   import §5!o§.b2TOIInput;
   import §5!o§.b2TimeOfImpact;
   import §5!o§.b2WorldManifold;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §+!&§:uint = 1;
      
      b2internal static var §;G§:uint = 2;
      
      b2internal static var §`Y§:uint = 4;
      
      b2internal static var §7!0§:uint = 8;
      
      b2internal static var §=s§:uint = 16;
      
      b2internal static var §%!?§:uint = 32;
      
      b2internal static var §#!>§:uint = 64;
      
      private static var §8"0§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Contact)
         {
            §+!&§ = 1;
            loop0:
            while(true)
            {
               §;G§ = 2;
               while(true)
               {
                  §`Y§ = 4;
                  addr101:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        §7!0§ = 8;
                        do
                        {
                           §=s§ = 16;
                           do
                           {
                              §%!?§ = 32;
                              continue loop0;
                           }
                           while(_loc1_);
                           
                        }
                        while(_loc1_ && _loc1_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      b2internal var §`"8§:uint;
      
      b2internal var §7b§:b2Contact;
      
      b2internal var §>""§:b2Contact;
      
      b2internal var §8I§:b2ContactEdge;
      
      b2internal var §55§:b2ContactEdge;
      
      b2internal var §5"$§:b2Fixture;
      
      b2internal var dynamic:b2Fixture;
      
      b2internal var §=&§:b2Manifold;
      
      b2internal var §'!u§:b2Manifold;
      
      b2internal var §0"2§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8I§ = new b2ContactEdge();
            loop0:
            while(true)
            {
               this.§55§ = new b2ContactEdge();
               while(true)
               {
                  this.§=&§ = new b2Manifold();
                  while(_loc2_ || this)
                  {
                     this.§'!u§ = new b2Manifold();
                     continue loop0;
                     if(_loc2_ || _loc1_)
                     {
                        return;
                        addr51:
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §%!X§() : b2Manifold
      {
         return this.§=&§;
      }
      
      public function §@w§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§5"$§.GetBody();
         var _loc3_:b2Body = this.dynamic.GetBody();
         var _loc4_:b2Shape = this.§5"$§.GetShape();
         var _loc5_:b2Shape = this.dynamic.GetShape();
         if(!(_loc6_ && _loc2_))
         {
            param1.§1o§(this.§=&§,_loc2_.§?^§(),_loc4_.§;$§,_loc3_.§?^§(),_loc5_.§;$§);
         }
      }
      
      public function §%!1§() : Boolean
      {
         return (this.§`"8§ & b2internal::=s) == b2internal::=s;
      }
      
      public function §7!&§() : Boolean
      {
         return (this.§`"8§ & b2internal::;G) == b2internal::;G;
      }
      
      public function §@u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::+!&;
               if(!(_loc2_ && param1))
               {
                  if(_loc2_ && param1)
                  {
                     addr76:
                     this.§`"8§ |= b2internal::+!&;
                     addr82:
                  }
                  else
                  {
                     addr63:
                  }
                  return;
               }
               §§goto(addr82);
            }
            §§goto(addr76);
         }
         §§goto(addr63);
      }
      
      public function §]!h§() : Boolean
      {
         return (this.§`"8§ & b2internal::+!&) == b2internal::+!&;
      }
      
      public function §&!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               this.§`"8§ &= ~b2internal::%!?;
               if(!_loc3_)
               {
                  addr72:
               }
               return;
            }
            if(_loc3_)
            {
               addr66:
               this.§`"8§ |= b2internal::%!?;
            }
            §§goto(addr72);
         }
         §§goto(addr66);
      }
      
      public function §@k§() : Boolean
      {
         return (this.§`"8§ & b2internal::%!?) == b2internal::%!?;
      }
      
      public function §'!q§() : b2Contact
      {
         return this.§>""§;
      }
      
      public function §=!'§() : b2Fixture
      {
         return this.§5"$§;
      }
      
      public function §&O§() : b2Fixture
      {
         return this.dynamic;
      }
      
      public function §6L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`"8§ |= b2internal::#!>;
         }
      }
      
      b2internal function §%i§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            this.§`"8§ = b2internal::%!?;
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
                           addr126:
                           while(true)
                           {
                              §§push(!param2);
                              addr100:
                              while(_loc5_ || _loc3_)
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              this.§5"$§ = null;
                              addr119:
                              while(true)
                              {
                                 this.dynamic = null;
                              }
                              addr119:
                           }
                           §§goto(addr119);
                        }
                        else
                        {
                           loop7:
                           while(true)
                           {
                              §§push(param1.§]!h§());
                              loop8:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && param2)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             addr84:
                                             do
                                             {
                                                §§push(param2.§]!h§());
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             while(!_loc6_);
                                             
                                             continue loop1;
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc5_)
                                             {
                                                this.§`"8§ |= b2internal::+!&;
                                             }
                                             else
                                             {
                                                while(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr119);
                                                addr92:
                                             }
                                          }
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr126);
                                          }
                                          else
                                          {
                                             §§goto(addr84);
                                          }
                                       }
                                       var _loc3_:b2Body = param1.GetBody();
                                       var _loc4_:b2Body = param2.GetBody();
                                       if(!(_loc6_ && param1))
                                       {
                                          addr427:
                                          §§push(_loc3_.§+!O§() != b2Body.b2_dynamicBody || _loc3_.§3#§());
                                          §§push(_loc3_.§+!O§() != b2Body.b2_dynamicBody || _loc3_.§3#§());
                                          if(_loc5_ || this)
                                          {
                                             if(!§§pop())
                                             {
                                                addr436:
                                                if(_loc5_ || this)
                                                {
                                                   §§pop();
                                                   addr444:
                                                   §§push(_loc4_.§+!O§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(b2Body.b2_dynamicBody);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr411:
                                                               §§push(!§§pop());
                                                               §§push(!§§pop());
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr420:
                                                                     §§pop();
                                                                     addr421:
                                                                     §§push(_loc4_.§3#§());
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr360:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr376:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr378:
                                                                                             this.§`"8§ |= b2internal::;G;
                                                                                             addr384:
                                                                                          }
                                                                                          this.§5"$§ = param1;
                                                                                          addr335:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             this.dynamic = param2;
                                                                                             addr323:
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                this.§=&§.§<!c§ = 0;
                                                                                                this.§7b§ = null;
                                                                                                addr308:
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      this.§>""§ = null;
                                                                                                      addr294:
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr288:
                                                                                                            this.§8I§.§3w§ = null;
                                                                                                            addr273:
                                                                                                            this.§8I§.§["'§ = null;
                                                                                                            addr274:
                                                                                                            addr287:
                                                                                                            addr272:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  addr253:
                                                                                                                  §§push(this.§8I§);
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr263:
                                                                                                                        §§push(null);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§pop().§9!V§ = §§pop();
                                                                                                                              addr268:
                                                                                                                              §§push(this.§8I§);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§pop().§!!m§ = §§pop();
                                                                                                                                    addr242:
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       addr221:
                                                                                                                                       this.§55§.§3w§ = null;
                                                                                                                                       addr232:
                                                                                                                                       §§push(this.§55§);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr213:
                                                                                                                                          §§pop().§["'§ = null;
                                                                                                                                          addr214:
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr184:
                                                                                                                                             §§push(this.§55§);
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr192:
                                                                                                                                                §§push(null);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§9!V§ = §§pop();
                                                                                                                                                      addr202:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§55§);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push(null);
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§!!m§ = §§pop();
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr294);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr242);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr232);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr214);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr202);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr192);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr184);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr384);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr335);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr221);
                                                                                                                                                }
                                                                                                                                                §§goto(addr213);
                                                                                                                                             }
                                                                                                                                             §§goto(addr221);
                                                                                                                                          }
                                                                                                                                          §§goto(addr268);
                                                                                                                                       }
                                                                                                                                       addr220:
                                                                                                                                       §§goto(addr220);
                                                                                                                                    }
                                                                                                                                    §§goto(addr274);
                                                                                                                                 }
                                                                                                                                 §§goto(addr263);
                                                                                                                              }
                                                                                                                              §§goto(addr253);
                                                                                                                           }
                                                                                                                           §§goto(addr288);
                                                                                                                        }
                                                                                                                        §§goto(addr273);
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  §§goto(addr272);
                                                                                                               }
                                                                                                               §§goto(addr323);
                                                                                                            }
                                                                                                            addr289:
                                                                                                            §§goto(addr289);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr308);
                                                                                                   }
                                                                                                   §§goto(addr421);
                                                                                                }
                                                                                                addr318:
                                                                                                §§goto(addr318);
                                                                                                addr330:
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr420);
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr425);
                                                                        }
                                                                        §§goto(addr436);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                   }
                                                }
                                                §§goto(addr427);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr330);
                                    }
                                    §§goto(addr100);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      b2internal function §?L§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§'!u§;
         if(!(_loc17_ && _loc3_))
         {
            this.§'!u§ = this.§=&§;
         }
         while(true)
         {
            while(true)
            {
               this.§=&§ = _loc2_;
               do
               {
                  this.§`"8§ |= b2internal::%!?;
               }
               while(_loc17_ && _loc2_);
               
               if(_loc17_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc3_:* = false;
               var _loc4_:* = (this.§`"8§ & b2internal::=s) == b2internal::=s;
               var _loc5_:b2Body = this.§5"$§.m_body;
               var _loc6_:b2Body = this.dynamic.m_body;
               §§push(this.§5"$§.§]"+§.§;c§(this.dynamic.§]"+§));
               if(_loc18_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!_loc17_)
               {
                  §§push(this.§`"8§);
                  if(_loc18_ || _loc3_)
                  {
                     §§push(b2internal::+!&);
                     if(_loc18_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc17_)
                        {
                           if(§§pop())
                           {
                              if(!_loc17_)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc17_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc18_ || _loc2_)
                                       {
                                          _loc8_ = this.§5"$§.GetShape();
                                          _loc9_ = this.dynamic.GetShape();
                                          _loc10_ = _loc5_.§?^§();
                                          _loc11_ = _loc6_.§?^§();
                                          if(!_loc17_)
                                          {
                                             §§push(b2Shape.§;c§(_loc8_,_loc10_,_loc9_,_loc11_));
                                             if(_loc18_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                          }
                                       }
                                       loop68:
                                       while(true)
                                       {
                                          loop69:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop43:
                                             while(true)
                                             {
                                                if(!(_loc17_ && _loc3_))
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§=&§);
                                                               break;
                                                            }
                                                            loop44:
                                                            while(true)
                                                            {
                                                               if(!(_loc17_ && _loc2_))
                                                               {
                                                                  addr278:
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     this.Evaluate();
                                                                     loop45:
                                                                     while(!_loc17_)
                                                                     {
                                                                        loop46:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§=&§);
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§<!c§);
                                                                              addr224:
                                                                              loop50:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > 0);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue loop43;
                                                                                 }
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          while(!_loc17_)
                                                                                          {
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                continue loop50;
                                                                                             }
                                                                                             addr393:
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.§3#§());
                                                                                                addr377:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr379:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop44;
                                                                                                               }
                                                                                                               addr381:
                                                                                                            }
                                                                                                            addr350:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr351:
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr373:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§3#§());
                                                                                                                              if(!(_loc17_ && param1))
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              addr324:
                                                                                                                              addr324:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    break loop45;
                                                                                                                                 }
                                                                                                                                 addr300:
                                                                                                                                 this.§`"8§ &= ~b2internal::;G;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop68;
                                                                                                                                    }
                                                                                                                                    addr331:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop69;
                                                                                                                                    }
                                                                                                                                    continue loop44;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        addr372:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr324);
                                                                                                                        }
                                                                                                                        addr323:
                                                                                                                     }
                                                                                                                     §§goto(addr324);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr391:
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop45;
                                                                                          addr240:
                                                                                       }
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              continue loop46;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§`"8§ |= b2internal::;G;
                                                                        §§goto(addr331);
                                                                     }
                                                                     addr325:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            loop35:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§+!O§());
                                                               if(!_loc17_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Body.b2_dynamicBody);
                                                                     if(!(_loc18_ || this))
                                                                     {
                                                                        break loop35;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        §§goto(addr350);
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  addr337:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Body.b2_dynamicBody);
                                                                     break loop35;
                                                                  }
                                                                  addr386:
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr391);
                                                      }
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr379);
                                             }
                                             §§pop().§<!c§ = 0;
                                             if(!_loc17_)
                                             {
                                                §§goto(addr732);
                                             }
                                             §§goto(addr619);
                                          }
                                       }
                                       addr302:
                                    }
                                    §§push(this.§=&§);
                                    if(_loc18_)
                                    {
                                       §§pop().§<!c§ = 0;
                                       if(_loc18_ || param1)
                                       {
                                          §§goto(addr701);
                                       }
                                       else
                                       {
                                          §§goto(addr393);
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr379);
                              }
                              §§goto(addr325);
                           }
                           else
                           {
                              §§push(_loc5_.§+!O§());
                           }
                           §§goto(addr386);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr388);
                  }
                  §§goto(addr337);
               }
               §§goto(addr302);
            }
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §!Q§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§8"0§);
            while(true)
            {
               §§pop().§^!W§.Set(this.§5"$§.GetShape());
            }
            addr98:
         }
         loop1:
         while(true)
         {
            §§push(§8"0§);
            loop2:
            while(true)
            {
               §§pop().§+!4§.Set(this.dynamic.GetShape());
               loop3:
               while(!_loc3_)
               {
                  §§push(§8"0§);
                  loop4:
                  while(true)
                  {
                     §§pop().§+!B§ = param1;
                     loop5:
                     while(true)
                     {
                        §§push(§8"0§);
                        loop6:
                        for(; !_loc3_; §§push(§8"0§),if(_loc4_)
                        {
                           continue loop2;
                        })
                        {
                           if(_loc4_)
                           {
                              §§pop().§"!b§ = param2;
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                                 addr38:
                                 §§pop().§<!$§ = b2Settings.b2_linearSlop;
                                 if(_loc4_)
                                 {
                                    return b2TimeOfImpact.§@!l§(§8"0§);
                                 }
                              }
                              continue loop3;
                           }
                           §§goto(addr98);
                        }
                        continue loop4;
                     }
                  }
               }
               continue loop1;
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr38);
            }
         }
      }
   }
}
