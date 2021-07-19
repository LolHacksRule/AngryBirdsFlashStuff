package §3!R§
{
   import §!4§.§!s§;
   import §!4§.b2AABB;
   import §!4§.b2RayCastInput;
   import §!4§.b2RayCastOutput;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §7q§.b2MassData;
   import §7q§.b2Shape;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;M§:b2MassData;
      
      b2internal var § !+§:b2AABB;
      
      b2internal var §6!A§:Number;
      
      b2internal var §>W§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §9S§:b2Shape;
      
      b2internal var §^!>§:Number;
      
      b2internal var §1!T§:Number;
      
      b2internal var §&<§;
      
      b2internal var § 3§:b2FilterData;
      
      b2internal var §'!M§:Boolean;
      
      b2internal var §,!&§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§ 3§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§ !+§ = new b2AABB();
                  while(true)
                  {
                     this.§,!&§ = null;
                     addr111:
                     addr94:
                     while(true)
                     {
                        this.m_body = null;
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        this.§9S§ = null;
                        loop6:
                        while(_loc2_)
                        {
                           this.§6!A§ = 0;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 this.§^!>§ = 0;
                                 while(true)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr111);
                                 continue loop6;
                              }
                              continue loop0;
                              addr35:
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr94);
                           }
                           §§goto(addr106);
                        }
                     }
                  }
               }
            }
         }
         addr106:
         while(true)
         {
            this.§>W§ = null;
            continue loop5;
         }
         addr49:
      }
      
      public function §0i§() : int
      {
         return this.§9S§.§0i§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§9S§;
      }
      
      public function §@!_§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_ || _loc3_)
         {
            if(this.§'!M§ == param1)
            {
               if(!_loc6_)
               {
                  §§goto(addr76);
               }
               else
               {
                  while(true)
                  {
                     addr48:
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr55);
                  }
               }
            }
            loop1:
            while(true)
            {
               this.§'!M§ = param1;
               while(true)
               {
                  §§push(this.m_body);
                  if(_loc7_)
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr48);
                        }
                        else
                        {
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop1;
                           }
                        }
                     }
                     §§push(this.m_body);
                     break;
                  }
                  break;
               }
               var _loc2_:b2ContactEdge = §§pop().§!+§();
               for(; _loc2_; _loc2_ = _loc2_.§+m§)
               {
                  _loc3_ = _loc2_.§-!$§;
                  _loc4_ = _loc3_.§#!D§();
                  _loc5_ = _loc3_.§''§();
                  if(!_loc6_)
                  {
                     §§push(_loc4_ == this);
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(_loc7_)
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
                              if(_loc7_)
                              {
                                 §§push(_loc4_.§4!B§());
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc7_ || this)
                                          {
                                             §§pop();
                                             addr152:
                                             §§push(_loc5_.§4!B§());
                                             if(_loc7_ || param1)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§pop().§@!_§(§§pop());
                                 continue;
                              }
                              §§goto(addr152);
                           }
                        }
                     }
                  }
                  §§goto(addr124);
               }
               return;
            }
            addr55:
            return;
         }
         addr76:
      }
      
      public function §4!B§() : Boolean
      {
         return this.§'!M§;
      }
      
      public function §8a§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_)
         {
            this.§ 3§ = param1.Copy();
            if(_loc7_ || _loc3_)
            {
               §§goto(addr39);
            }
            §§goto(addr47);
         }
         addr39:
         §§push(this.m_body);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(_loc7_)
               {
                  return;
               }
               addr47:
               §§push(this.m_body);
            }
            §§goto(addr47);
         }
         var _loc2_:b2ContactEdge = §§pop().§!+§();
         for(; _loc2_; _loc2_ = _loc2_.§+m§)
         {
            _loc3_ = _loc2_.§-!$§;
            _loc4_ = _loc3_.§#!D§();
            _loc5_ = _loc3_.§''§();
            if(!_loc6_)
            {
               §§push(_loc4_ == this);
               if(_loc7_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr92:
                        §§pop();
                        if(_loc7_)
                        {
                           addr98:
                           if(_loc5_ != this)
                           {
                              continue;
                           }
                           if(!(_loc7_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        _loc3_.§[!R§();
                        continue;
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr92);
            }
            §§goto(addr98);
         }
      }
      
      public function §5[§() : b2FilterData
      {
         return this.§ 3§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5!J§() : b2Fixture
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!&§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§9S§.TestPoint(this.m_body.§6V§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§9S§.RayCast(param1,param2,this.m_body.§6V§());
      }
      
      public function §3_§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_ || this)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr59);
            }
            this.§9S§.ComputeMass(param1,this.§6!A§);
         }
         addr59:
         return param1;
      }
      
      public function §;!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6!A§ = param1;
         }
      }
      
      public function § !E§() : Number
      {
         return this.§6!A§;
      }
      
      public function §+!c§() : Number
      {
         return this.§^!>§;
      }
      
      public function §@9§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^!>§ = param1;
         }
      }
      
      public function §]!_§() : Number
      {
         return this.§1!T§;
      }
      
      public function §>!X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!T§ = param1;
         }
      }
      
      public function §;!V§() : b2AABB
      {
         return this.§ !+§;
      }
      
      b2internal function §;O§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§,!&§ = param3.§<!B§;
         }
         loop0:
         while(true)
         {
            this.§^!>§ = param3.friction;
            loop1:
            while(true)
            {
               this.§1!T§ = param3.restitution;
               loop2:
               while(true)
               {
                  this.m_body = param1;
                  loop3:
                  while(_loc5_)
                  {
                     this.§>W§ = null;
                     loop4:
                     while(true)
                     {
                        this.§ 3§ = param3.filter.Copy();
                        while(!_loc4_)
                        {
                           this.§'!M§ = param3.§0h§;
                           do
                           {
                              this.§9S§ = param3.shape.Copy();
                              continue loop4;
                           }
                           while(!_loc5_);
                           
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      b2internal function §;!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9S§ = null;
         }
      }
      
      b2internal function §+!#§(param1:§!s§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9S§.ComputeAABB(this.§ !+§,param2);
            do
            {
               this.§&<§ = param1.§+!#§(this.§ !+§,this);
            }
            while(_loc3_);
            
         }
      }
      
      b2internal function §&R§(param1:§!s§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§&<§ != null)
            {
               while(true)
               {
                  param1.§&R§(this.§&<§);
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§&<§ = null;
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      b2internal function §8!6§(param1:§!s§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(!this.§&<§)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!_loc7_)
         {
            §§push(this.§9S§);
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
            }
            addr74:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               §§push(this.§9S§);
               if(!_loc8_)
               {
                  break;
               }
               §§pop().ComputeAABB(_loc5_,param3);
               while(!_loc7_)
               {
                  this.§ !+§.§#2§(_loc4_,_loc5_);
                  if(_loc8_ || param1)
                  {
                     if(true)
                     {
                        var _loc6_:b2Vec2 = b2Math.§8!Y§(param3.position,param2.position);
                        if(_loc8_)
                        {
                           param1.§&W§(this.§&<§,this.§ !+§,_loc6_);
                        }
                     }
                     continue loop2;
                     return;
                  }
               }
               continue loop1;
            }
            §§goto(addr74);
         }
      }
   }
}
