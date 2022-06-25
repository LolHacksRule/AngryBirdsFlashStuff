package §#I§
{
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §3b§.b2MassData;
   import §3b§.b2Shape;
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §>!Z§.§<P§;
   import §>!Z§.b2AABB;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §4`§:b2MassData;
      
      b2internal var §9v§:b2AABB;
      
      b2internal var §`!k§:Number;
      
      b2internal var §=!8§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §'!K§:b2Shape;
      
      b2internal var §9G§:Number;
      
      b2internal var §=!F§:Number;
      
      b2internal var §8""§;
      
      b2internal var §,!E§:b2FilterData;
      
      b2internal var §"!L§:Boolean;
      
      b2internal var §>g§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,!E§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§9v§ = new b2AABB();
                  loop2:
                  while(true)
                  {
                     this.§>g§ = null;
                     addr120:
                     while(true)
                     {
                        this.m_body = null;
                        while(_loc1_)
                        {
                           this.§=!8§ = null;
                           while(_loc1_)
                           {
                              continue loop2;
                              if(_loc1_ || this)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function § 5§() : int
      {
         return this.§'!K§.§ 5§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§'!K§;
      }
      
      public function §,!d§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc6_ && this))
         {
            if(this.§"!L§ == param1)
            {
               if(_loc7_)
               {
                  §§goto(addr66);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(!(_loc6_ && this))
                        {
                           §§push(this.m_body);
                           if(!_loc6_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc6_)
                                 {
                                    return;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§"!L§ = param1;
                                       continue loop2;
                                    }
                                    addr48:
                                 }
                              }
                              §§push(this.m_body);
                              break;
                           }
                           break;
                        }
                        continue loop0;
                     }
                     var _loc2_:b2ContactEdge = §§pop().§>!3§();
                     for(; _loc2_; _loc2_ = _loc2_.§`!w§)
                     {
                        _loc3_ = _loc2_.§8!m§;
                        _loc4_ = _loc3_.§`!a§();
                        _loc5_ = _loc3_.§2!s§();
                        if(!_loc6_)
                        {
                           §§push(_loc4_ == this);
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       addr124:
                                       if(_loc5_ != this)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc3_);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(_loc4_.§%u§());
                                       if(!_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§pop();
                                                   addr162:
                                                   §§push(_loc5_.§%u§());
                                                   if(_loc7_ || param1)
                                                   {
                                                   }
                                                   addr172:
                                                   §§pop().§,!d§(§§pop());
                                                   continue;
                                                }
                                             }
                                             §§goto(addr172);
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                           }
                        }
                        §§goto(addr124);
                     }
                     return;
                  }
               }
            }
            §§goto(addr48);
         }
         addr66:
      }
      
      public function §%u§() : Boolean
      {
         return this.§"!L§;
      }
      
      public function §?!o§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc6_ && this))
         {
            this.§,!E§ = param1.Copy();
            if(_loc7_ || _loc3_)
            {
               §§goto(addr44);
            }
            §§goto(addr66);
         }
         addr44:
         §§push(this.m_body);
         if(_loc7_)
         {
            if(§§pop())
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr66:
                  return;
               }
            }
            §§push(this.m_body);
         }
         var _loc2_:b2ContactEdge = §§pop().§>!3§();
         for(; _loc2_; _loc2_ = _loc2_.§`!w§)
         {
            _loc3_ = _loc2_.§8!m§;
            _loc4_ = _loc3_.§`!a§();
            _loc5_ = _loc3_.§2!s§();
            if(!_loc6_)
            {
               §§push(_loc4_ == this);
               if(_loc7_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§pop();
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        §§push(_loc5_ == this);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     _loc3_.§+q§();
                  }
               }
            }
         }
      }
      
      public function §4!Z§() : b2FilterData
      {
         return this.§,!E§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §?!^§() : b2Fixture
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>g§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§'!K§.TestPoint(this.m_body.§%J§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§'!K§.RayCast(param1,param2,this.m_body.§%J§());
      }
      
      public function §&K§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  addr39:
                  param1 = new b2MassData();
                  addr43:
                  this.§'!K§.ComputeMass(param1,this.§`!k§);
               }
               return param1;
            }
            §§goto(addr43);
         }
         §§goto(addr39);
      }
      
      public function §!!F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§`!k§ = param1;
         }
      }
      
      public function §1!v§() : Number
      {
         return this.§`!k§;
      }
      
      public function §,!B§() : Number
      {
         return this.§9G§;
      }
      
      public function §+k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9G§ = param1;
         }
      }
      
      public function §^_§() : Number
      {
         return this.§=!F§;
      }
      
      public function §5!,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!F§ = param1;
         }
      }
      
      public function §<!-§() : b2AABB
      {
         return this.§9v§;
      }
      
      b2internal function §1!Y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§>g§ = param3.§]!=§;
            while(true)
            {
               this.§9G§ = param3.friction;
            }
            addr127:
         }
         loop1:
         while(true)
         {
            this.§=!F§ = param3.restitution;
            while(!_loc4_)
            {
               this.m_body = param1;
               loop3:
               while(_loc5_ || param2)
               {
                  this.§=!8§ = null;
                  loop4:
                  while(!_loc4_)
                  {
                     this.§,!E§ = param3.filter.Copy();
                     while(_loc5_)
                     {
                        this.§"!L§ = param3.§^$§;
                        loop6:
                        do
                        {
                           this.§'!K§ = param3.shape.Copy();
                           while(!_loc4_)
                           {
                              this.§`!k§ = param3.density;
                              if(_loc5_ || param3)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop4;
                        }
                        while(!_loc5_);
                        
                        if(!(_loc4_ && param1))
                        {
                           return;
                        }
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
            }
            §§goto(addr127);
         }
      }
      
      b2internal function §=_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'!K§ = null;
         }
      }
      
      b2internal function §[E§(param1:§<P§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'!K§.ComputeAABB(this.§9v§,param2);
         }
         do
         {
            this.§8""§ = param1.§[E§(this.§9v§,this);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      b2internal function §#i§(param1:§<P§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§8""§ != null)
            {
               loop0:
               while(true)
               {
                  param1.§#i§(this.§8""§);
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§8""§ = null;
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      b2internal function §0!H§(param1:§<P§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§8""§)
            {
               if(!(_loc8_ && param3))
               {
                  §§goto(addr28);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(!(_loc8_ && param2))
            {
               §§push(this.§'!K§);
               loop0:
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  addr101:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§9v§.§5"$§(_loc4_,_loc5_);
               if(_loc8_)
               {
                  continue;
               }
               if(!(_loc8_ && param1))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               §§goto(addr101);
            }
            var _loc6_:b2Vec2 = b2Math.§%M§(param3.position,param2.position);
            if(!(_loc8_ && param2))
            {
               param1.§"d§(this.§8""§,this.§9v§,_loc6_);
            }
            return;
         }
         addr28:
      }
   }
}
