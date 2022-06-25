package §_-0DM§
{
   import §_-03n§.b2Shape;
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   import §_-aU§.b2Body;
   import §_-aU§.b2ContactListener;
   import §_-aU§.b2Fixture;
   import §_-gE§.b2ContactID;
   import §_-gE§.b2Manifold;
   import §_-gE§.b2ManifoldPoint;
   import §_-gE§.b2TOIInput;
   import §_-gE§.b2TimeOfImpact;
   import §_-gE§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-0D5§:uint = 1;
      
      b2internal static var §_-0Em§:uint = 2;
      
      b2internal static var §_-0AI§:uint = 4;
      
      b2internal static var §_-P1§:uint = 8;
      
      b2internal static var §_-an§:uint = 16;
      
      b2internal static var §_-8y§:uint = 32;
      
      b2internal static var §_-b1§:uint = 64;
      
      private static var §_-vs§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Contact)
         {
            §_-0D5§ = 1;
            while(true)
            {
               §_-0Em§ = 2;
               loop1:
               for(; _loc2_ || _loc1_; while(_loc2_ || b2Contact)
               {
                  §_-vs§ = new b2TOIInput();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     return;
                  }
                  §§goto(addr65);
               })
               {
                  while(true)
                  {
                     §_-0AI§ = 4;
                     loop3:
                     while(true)
                     {
                        §_-P1§ = 8;
                        while(true)
                        {
                           §_-an§ = 16;
                           while(_loc2_ || b2Contact)
                           {
                              if(!_loc1_)
                              {
                                 §_-8y§ = 32;
                                 while(!_loc1_)
                                 {
                                    §_-b1§ = 64;
                                    continue loop1;
                                 }
                                 continue;
                                 addr65:
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      b2internal var §_-7R§:uint;
      
      b2internal var §_-021§:b2Contact;
      
      b2internal var §_-oz§:b2Contact;
      
      b2internal var §_-a-§:b2ContactEdge;
      
      b2internal var §_-Gh§:b2ContactEdge;
      
      b2internal var §_-f-§:b2Fixture;
      
      b2internal var §_-N-§:b2Fixture;
      
      b2internal var §_-07u§:b2Manifold;
      
      b2internal var §_-y1§:b2Manifold;
      
      b2internal var §_-07y§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-a-§ = new b2ContactEdge();
            loop0:
            while(true)
            {
               this.§_-Gh§ = new b2ContactEdge();
               while(true)
               {
                  this.§_-07u§ = new b2Manifold();
                  while(!_loc2_)
                  {
                     this.§_-y1§ = new b2Manifold();
                     while(_loc1_)
                     {
                        continue loop0;
                        super();
                        if(_loc1_)
                        {
                           return;
                           addr38:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §_-4f§() : b2Manifold
      {
         return this.§_-07u§;
      }
      
      public function §null §(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§_-f-§.GetBody();
         var _loc3_:b2Body = this.§_-N-§.GetBody();
         var _loc4_:b2Shape = this.§_-f-§.GetShape();
         var _loc5_:b2Shape = this.§_-N-§.GetShape();
         if(_loc7_ || this)
         {
            param1.§_-bL§(this.§_-07u§,_loc2_.§_-tg§(),_loc4_.§_-0CZ§,_loc3_.§_-tg§(),_loc5_.§_-0CZ§);
         }
      }
      
      public function §_-bU§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-an) == b2internal::_-an;
      }
      
      public function §_-05O§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0Em) == b2internal::_-0Em;
      }
      
      public function §_-Jq§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-0D5;
               if(!_loc3_)
               {
                  if(!(_loc2_ || this))
                  {
                     addr55:
                     this.§_-7R§ |= b2internal::_-0D5;
                     addr61:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr55);
      }
      
      public function §_-07V§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0D5) == b2internal::_-0D5;
      }
      
      public function §_-lG§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-8y;
               if(!(_loc2_ && param1))
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     addr71:
                     this.§_-7R§ |= b2internal::_-8y;
                     addr77:
                  }
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr71);
      }
      
      public function §_-0Dw§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-8y) == b2internal::_-8y;
      }
      
      public function §_-02g§() : b2Contact
      {
         return this.§_-oz§;
      }
      
      public function §_-k-§() : b2Fixture
      {
         return this.§_-f-§;
      }
      
      public function §_-7G§() : b2Fixture
      {
         return this.§_-N-§;
      }
      
      public function §_-FN§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-7R§ |= b2internal::_-b1;
         }
      }
      
      b2internal function §_-8Y§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§_-7R§ = b2internal::_-8y;
            while(true)
            {
               §§push(!param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr161:
                        while(true)
                        {
                           §§pop();
                           addr162:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr161:
                     }
                     while(true)
                     {
                        addr144:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr145:
                              this.§_-f-§ = null;
                              this.§_-N-§ = null;
                              return;
                              addr148:
                              addr139:
                           }
                           else
                           {
                              addr101:
                           }
                           while(true)
                           {
                              §§push(param1.§_-07V§());
                              addr104:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr161);
            }
         }
         §§goto(addr99);
      }
      
      b2internal function §_-Gb§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-y1§;
         if(_loc17_ || _loc3_)
         {
            this.§_-y1§ = this.§_-07u§;
            loop0:
            while(true)
            {
               addr64:
               while(true)
               {
                  this.§_-07u§ = _loc2_;
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        this.§_-7R§ |= b2internal::_-8y;
                        if(!_loc18_)
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
         var _loc4_:* = (this.§_-7R§ & b2internal::_-an) == b2internal::_-an;
         var _loc5_:b2Body = this.§_-f-§.m_body;
         var _loc6_:b2Body = this.§_-N-§.m_body;
         §§push(this.§_-f-§.§_-bn§.§_-Rd§(this.§_-N-§.§_-bn§));
         if(_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc17_ || param1)
         {
            §§push(this.§_-7R§);
            if(!_loc18_)
            {
               §§push(b2internal::_-0D5);
               if(_loc17_ || _loc3_)
               {
                  §§push(§§pop() & §§pop());
                  if(_loc17_)
                  {
                     if(§§pop())
                     {
                        if(!_loc18_)
                        {
                           §§push(_loc7_);
                           if(!(_loc18_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    _loc8_ = this.§_-f-§.GetShape();
                                    _loc9_ = this.§_-N-§.GetShape();
                                    _loc10_ = _loc5_.§_-tg§();
                                    _loc11_ = _loc6_.§_-tg§();
                                    if(_loc17_ || this)
                                    {
                                       §§push(b2Shape.§_-Rd§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                    }
                                 }
                                 loop68:
                                 while(true)
                                 {
                                    loop37:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       loop38:
                                       for(; !(_loc18_ && _loc2_); continue loop37)
                                       {
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                loop57:
                                                while(true)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.Evaluate();
                                                         addr273:
                                                         loop63:
                                                         while(true)
                                                         {
                                                            loop35:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-07u§);
                                                               addr227:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§_-XO§);
                                                                  addr228:
                                                                  loop65:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > 0);
                                                                     if(_loc18_)
                                                                     {
                                                                        continue loop38;
                                                                     }
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        addr239:
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop57;
                                                                                 }
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop65;
                                                                                    }
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc17_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop63;
                                                                                    }
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          addr498:
                                                                                          §§push(_loc12_);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(this.§_-07u§.§_-XO§);
                                                                                             if(!(_loc18_ && _loc3_))
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   §§push(this.§_-07u§);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      (_loc13_ = §§pop().§_-Eg§[_loc12_]).§_-nd§ = 0;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         _loc13_.§_-sw§ = 0;
                                                                                                      }
                                                                                                      _loc14_ = _loc13_.m_id;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            addr497:
                                                                                                            if(_loc17_ || this)
                                                                                                            {
                                                                                                               addr492:
                                                                                                               §§push(_loc15_);
                                                                                                            }
                                                                                                            _loc12_++;
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         if(§§pop() >= this.§_-y1§.§_-XO§)
                                                                                                         {
                                                                                                            §§goto(addr497);
                                                                                                         }
                                                                                                         if((_loc16_ = this.§_-y1§.§_-Eg§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                         {
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               _loc13_.§_-nd§ = _loc16_.§_-nd§;
                                                                                                               if(_loc17_ || param1)
                                                                                                               {
                                                                                                                  addr482:
                                                                                                                  _loc13_.§_-sw§ = _loc16_.§_-sw§;
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr488:
                                                                                                                     §§goto(addr497);
                                                                                                                  }
                                                                                                                  §§goto(addr492);
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr482);
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
                                                                                                   addr522:
                                                                                                   §§pop().§_-XO§ = 0;
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      addr768:
                                                                                                      if(_loc3_ != _loc4_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.SetAwake(true);
                                                                                                            addr772:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_.SetAwake(true);
                                                                                                               addr765:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr769:
                                                                                                      }
                                                                                                      loop60:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr752:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  this.§_-7R§ &= ~b2internal::_-an;
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop8:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        loop9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       loop18:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param1.BeginContact(this);
                                                                                                                                                loop20:
                                                                                                                                                while(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr636:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                        addr721:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  loop28:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr675:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        loop27:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr594:
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc17_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr612:
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr694:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                       addr695:
                                                                                                                                                                                       while(_loc17_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr694:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr695);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr768);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr594);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr694);
                                                                                                                                                                                 addr663:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop24:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             param1.EndContact(this);
                                                                                                                                                                                             while(!(_loc18_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§_-7R§ & b2internal::_-0D5);
                                                                                                                                                                                                   break loop33;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr695);
                                                                                                                                                                                                if(_loc18_ && _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc18_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc17_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   param1.PreSolve(this,this.§_-y1§);
                                                                                                                                                                                                   addr573:
                                                                                                                                                                                                   if(_loc17_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr765);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§_-7R§ |= b2internal::_-an;
                                                                                                                                                                                                break loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr754:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr536);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr612);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr695);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop9;
                                                                                                                                                                  addr666:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr663);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc17_ || _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr694);
                                                                                                                                                                     §§push(true);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr768);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr679:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr768);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr666);
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr772);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr636);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr721);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr754);
                                                                                                            }
                                                                                                            continue loop60;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr714);
                                                                                                }
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr768);
                                                                                                }
                                                                                                §§goto(addr729);
                                                                                             }
                                                                                             addr542:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§goto(addr545);
                                                                                                }
                                                                                                §§goto(addr573);
                                                                                             }
                                                                                             §§goto(addr532);
                                                                                          }
                                                                                       }
                                                                                       continue loop35;
                                                                                       break loop33;
                                                                                    }
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          this.§_-7R§ |= b2internal::_-0Em;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_ || _loc3_)
                                                                                             {
                                                                                                continue loop38;
                                                                                             }
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.§_-oF§());
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                      {
                                                                                                         addr338:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  loop45:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break loop38;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr301:
                                                                                                                           while(!§§pop())
                                                                                                                           {
                                                                                                                              addr276:
                                                                                                                              this.§_-7R§ &= ~b2internal::_-0Em;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop68;
                                                                                                                                 }
                                                                                                                                 addr412:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.§_-02U§());
                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr389:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             break loop45;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr388:
                                                                                                                                    }
                                                                                                                                    addr393:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr276);
                                                                                                                              }
                                                                                                                              continue loop68;
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        addr300:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(_loc17_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr348);
                                                                                                                     }
                                                                                                                     §§goto(addr393);
                                                                                                                  }
                                                                                                                  addr348:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr411:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr412);
                                                                                                                        }
                                                                                                                        addr411:
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  addr410:
                                                                                                               }
                                                                                                               §§goto(addr389);
                                                                                                            }
                                                                                                            break loop38;
                                                                                                         }
                                                                                                         addr338:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr400:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr401:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr410);
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr400:
                                                                                                      }
                                                                                                      §§goto(addr411);
                                                                                                   }
                                                                                                   addr328:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   addr398:
                                                                                                }
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                          }
                                                                                          addr310:
                                                                                       }
                                                                                       addr366:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.§_-02U§());
                                                                                          addr290:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   §§goto(addr300);
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr338);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr310);
                                                                              }
                                                                              continue loop57;
                                                                              §§goto(addr239);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr542);
                                                                           }
                                                                           addr246:
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  continue loop35;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr271:
                                                   }
                                                   §§goto(addr284);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§_-07u§);
                                             }
                                             §§goto(addr522);
                                          }
                                          §§goto(addr393);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc18_ && param1))
                                          {
                                             §§pop();
                                             §§goto(addr366);
                                          }
                                          break;
                                          §§goto(addr338);
                                       }
                                       §§goto(addr411);
                                       continue loop68;
                                    }
                                 }
                                 addr286:
                              }
                              §§push(this.§_-07u§);
                              if(!(_loc18_ && _loc2_))
                              {
                                 §§pop().§_-XO§ = 0;
                                 if(_loc17_)
                                 {
                                    §§goto(addr752);
                                 }
                                 else
                                 {
                                    §§goto(addr271);
                                 }
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr273);
                     }
                     else
                     {
                        §§push(_loc5_.§_-oF§());
                     }
                     §§goto(addr398);
                  }
                  §§goto(addr228);
               }
               §§goto(addr400);
            }
            §§goto(addr328);
         }
         §§goto(addr286);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-gV§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§_-vs§);
            loop0:
            while(true)
            {
               §§pop().§_-05Z§.Set(this.§_-f-§.GetShape());
               addr108:
               while(true)
               {
                  §§push(§_-vs§);
                  continue loop0;
               }
            }
         }
         return b2TimeOfImpact.§_-e9§(§_-vs§);
      }
   }
}
