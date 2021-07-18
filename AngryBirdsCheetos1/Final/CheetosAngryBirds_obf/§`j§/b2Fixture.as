package §`j§
{
   import §&U§.b2MassData;
   import §&U§.b2Shape;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §9"§.§>![§;
   import §9"§.b2AABB;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §'R§:b2MassData;
      
      b2internal var §^T§:b2AABB;
      
      b2internal var §4U§:Number;
      
      b2internal var §#!&§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §&l§:b2Shape;
      
      b2internal var §!@§:Number;
      
      b2internal var §3!&§:Number;
      
      b2internal var §!§;
      
      b2internal var §'!X§:b2FilterData;
      
      b2internal var §'Z§:Boolean;
      
      b2internal var §'8§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'!X§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr136:
               while(true)
               {
                  this.§^T§ = new b2AABB();
                  while(_loc2_)
                  {
                     this.§'8§ = null;
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.m_body = null;
            loop4:
            while(true)
            {
               this.§#!&§ = null;
               loop5:
               for(; !_loc1_; while(_loc2_ || _loc2_)
               {
                  continue loop4;
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               })
               {
                  this.§&l§ = null;
                  while(true)
                  {
                     this.§4U§ = 0;
                     continue loop5;
                  }
               }
               §§goto(addr136);
               if(_loc2_ || _loc2_)
               {
                  this.§!@§ = 0;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr97);
                  }
                  continue loop3;
               }
            }
         }
      }
      
      public function §"!M§() : int
      {
         return this.§&l§.§"!M§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§&l§;
      }
      
      public function §5!_§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            if(this.§'Z§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§'Z§ = param1;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§push(this.m_body);
                        if(!_loc7_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc6_)
                              {
                                 return;
                              }
                              if(_loc7_)
                              {
                                 continue;
                              }
                              if(_loc7_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              while(false)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(this.m_body);
                           break;
                        }
                        break;
                     }
                  }
                  var _loc2_:b2ContactEdge = §§pop().§6q§();
                  for(; _loc2_; _loc2_ = _loc2_.§%Y§)
                  {
                     _loc3_ = _loc2_.§"!$§;
                     _loc4_ = _loc3_.§&^§();
                     _loc5_ = _loc3_.§7I§();
                     if(!(_loc7_ && param1))
                     {
                        §§push(_loc4_ == this);
                        if(_loc6_ || this)
                        {
                           if(!§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 addr121:
                                 if(!_loc7_)
                                 {
                                    §§push(_loc5_ == this);
                                 }
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    §§push(_loc4_.§`3§());
                                    if(_loc6_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          addr141:
                                          if(!§§pop())
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§pop();
                                                addr151:
                                                §§push(_loc5_.§`3§());
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                          }
                                       }
                                       §§pop().§5!_§(§§pop());
                                       continue;
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr151);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr121);
                  }
                  return;
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §`3§() : Boolean
      {
         return this.§'Z§;
      }
      
      public function § !5§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_ || this)
         {
            this.§'!X§ = param1.Copy();
            if(_loc6_ || _loc3_)
            {
               §§push(this.m_body);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr55);
                     }
                     else
                     {
                        addr56:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr56);
               }
               var _loc2_:b2ContactEdge = §§pop().§6q§();
               for(; _loc2_; _loc2_ = _loc2_.§%Y§)
               {
                  _loc3_ = _loc2_.§"!$§;
                  _loc4_ = _loc3_.§&^§();
                  _loc5_ = _loc3_.§7I§();
                  if(!_loc7_)
                  {
                     §§push(_loc4_ == this);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc6_ || _loc3_)
                           {
                              addr101:
                              §§pop();
                              addr125:
                              if(_loc6_)
                              {
                                 §§push(_loc5_ == this);
                              }
                              _loc3_.§@!0§();
                              continue;
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr101);
               }
               return;
            }
            §§goto(addr56);
         }
         addr55:
      }
      
      public function §;5§() : b2FilterData
      {
         return this.§'!X§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §[;§() : b2Fixture
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'8§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§&l§.TestPoint(this.m_body.§4!P§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§&l§.RayCast(param1,param2,this.m_body.§4!P§());
      }
      
      public function §%`§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_ || param1)
               {
                  param1 = new b2MassData();
                  addr53:
                  this.§&l§.ComputeMass(param1,this.§4U§);
                  addr39:
               }
               return param1;
            }
            §§goto(addr53);
         }
         §§goto(addr39);
      }
      
      public function §8!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4U§ = param1;
         }
      }
      
      public function §#p§() : Number
      {
         return this.§4U§;
      }
      
      public function §^]§() : Number
      {
         return this.§!@§;
      }
      
      public function §&]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!@§ = param1;
         }
      }
      
      public function §]9§() : Number
      {
         return this.§3!&§;
      }
      
      public function §7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!&§ = param1;
         }
      }
      
      public function §17§() : b2AABB
      {
         return this.§^T§;
      }
      
      b2internal function §>y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§'8§ = param3.§4!E§;
         }
         while(true)
         {
            this.§!@§ = param3.friction;
            loop1:
            while(true)
            {
               this.§3!&§ = param3.restitution;
               loop2:
               while(true)
               {
                  this.m_body = param1;
                  loop3:
                  while(true)
                  {
                     this.§#!&§ = null;
                     while(true)
                     {
                        this.§'!X§ = param3.filter.Copy();
                        loop5:
                        while(true)
                        {
                           this.§'Z§ = param3.§0!N§;
                           addr66:
                           while(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    this.§&l§ = param3.shape.Copy();
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      b2internal function §;@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&l§ = null;
         }
      }
      
      b2internal function §case§(param1:§>![§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§&l§.ComputeAABB(this.§^T§,param2);
         }
         do
         {
            this.§!§ = param1.§case§(this.§^T§,this);
         }
         while(!_loc4_);
         
      }
      
      b2internal function §^<§(param1:§>![§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§!§ != null)
            {
               loop0:
               while(true)
               {
                  param1.§^<§(this.§!§);
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc2_ && param1)
                        {
                           break;
                        }
                        this.§!§ = null;
                        if(_loc3_)
                        {
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      b2internal function §=!P§(param1:§>![§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§!§)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!(_loc8_ && param3))
         {
            §§push(this.§&l§);
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               loop2:
               while(true)
               {
                  §§push(this.§&l§);
                  if(!(_loc7_ || this))
                  {
                     break;
                  }
                  §§pop().ComputeAABB(_loc5_,param3);
                  while(!_loc8_)
                  {
                     this.§^T§.§8h§(_loc4_,_loc5_);
                     if(!(_loc8_ && param2))
                     {
                        if(true)
                        {
                           var _loc6_:b2Vec2 = b2Math.§4_§(param3.position,param2.position);
                           if(!_loc8_)
                           {
                              param1.§5! §(this.§!§,this.§^T§,_loc6_);
                           }
                        }
                        continue loop2;
                        return;
                     }
                  }
                  while(true)
                  {
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
