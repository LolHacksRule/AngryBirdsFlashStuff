package §+S§
{
   import §"!9§.b2MassData;
   import §"!9§.b2Shape;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.§#!M§;
   import §5!o§.b2AABB;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §1!x§:b2MassData;
      
      b2internal var §]"+§:b2AABB;
      
      b2internal var §-&§:Number;
      
      b2internal var §>""§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#j§:b2Shape;
      
      b2internal var §?!a§:Number;
      
      b2internal var § try§:Number;
      
      b2internal var §-!]§;
      
      b2internal var §&!<§:b2FilterData;
      
      b2internal var §-!W§:Boolean;
      
      b2internal var §6g§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&!<§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§]"+§ = new b2AABB();
                  while(!_loc2_)
                  {
                     this.§6g§ = null;
                     while(!_loc2_)
                     {
                        this.m_body = null;
                        loop4:
                        while(true)
                        {
                           this.§>""§ = null;
                           addr86:
                           while(true)
                           {
                              this.§#j§ = null;
                              continue loop4;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§-&§ = 0;
            §§goto(addr50);
         }
      }
      
      public function §+!O§() : int
      {
         return this.§#j§.§+!O§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#j§;
      }
      
      public function §@u§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            if(this.§-!W§ != param1)
            {
               while(true)
               {
                  this.§-!W§ = param1;
                  §§goto(addr50);
               }
            }
            §§goto(addr55);
         }
         addr50:
         while(true)
         {
            §§push(this.m_body);
            if(!_loc7_)
            {
               if(§§pop() == null)
               {
                  if(!_loc7_)
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           return;
                        }
                        addr55:
                        return;
                     }
                     continue;
                  }
                  if(_loc7_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue loop0;
                  }
               }
               §§push(this.m_body);
               break;
            }
            break;
         }
         var _loc2_:b2ContactEdge = §§pop().§4!T§();
         for(; _loc2_; _loc2_ = _loc2_.§9!V§)
         {
            _loc3_ = _loc2_.§3w§;
            _loc4_ = _loc3_.§=!'§();
            _loc5_ = _loc3_.§&O§();
            if(!_loc6_)
            {
               continue;
            }
            §§push(_loc4_ == this);
            if(_loc6_ || this)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        addr108:
                        if(_loc5_ != this)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(_loc4_.§]!h§());
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc7_ && _loc3_))
                           {
                              addr131:
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§pop();
                                    addr141:
                                    §§push(_loc5_.§]!h§());
                                    if(_loc6_ || param1)
                                    {
                                    }
                                    addr161:
                                    §§pop().§@u§(§§pop());
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr141);
                  }
               }
            }
            §§goto(addr108);
         }
      }
      
      public function §]!h§() : Boolean
      {
         return this.§-!W§;
      }
      
      public function §"!G§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            this.§&!<§ = param1.Copy();
            if(!(_loc6_ && param1))
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
               if(!_loc6_)
               {
                  return;
               }
               addr47:
               §§push(this.m_body);
            }
            §§goto(addr47);
         }
         var _loc2_:b2ContactEdge = §§pop().§4!T§();
         for(; _loc2_; _loc2_ = _loc2_.§9!V§)
         {
            _loc3_ = _loc2_.§3w§;
            _loc4_ = _loc3_.§=!'§();
            _loc5_ = _loc3_.§&O§();
            if(!_loc7_)
            {
               continue;
            }
            §§push(_loc4_ == this);
            if(!(_loc6_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc7_)
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
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                     _loc3_.§6L§();
                     continue;
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr92);
         }
      }
      
      public function §%!$§() : b2FilterData
      {
         return this.§&!<§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'!q§() : b2Fixture
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6g§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#j§.TestPoint(this.m_body.§?^§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#j§.RayCast(param1,param2,this.m_body.§?^§());
      }
      
      public function §9!B§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  param1 = new b2MassData();
                  addr58:
                  this.§#j§.ComputeMass(param1,this.§-&§);
                  addr44:
               }
               return param1;
            }
            §§goto(addr58);
         }
         §§goto(addr44);
      }
      
      public function §,!p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-&§ = param1;
         }
      }
      
      public function §11§() : Number
      {
         return this.§-&§;
      }
      
      public function §2!U§() : Number
      {
         return this.§?!a§;
      }
      
      public function §=!i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!a§ = param1;
         }
      }
      
      public function §^"'§() : Number
      {
         return this.§ try§;
      }
      
      public function §8!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ try§ = param1;
         }
      }
      
      public function §1!^§() : b2AABB
      {
         return this.§]"+§;
      }
      
      b2internal function §-!x§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§6g§ = param3.§1P§;
            while(true)
            {
               this.§?!a§ = param3.friction;
               addr136:
               while(true)
               {
                  this.§ try§ = param3.restitution;
               }
               loop7:
               while(!(_loc5_ && this))
               {
                  this.§-&§ = param3.density;
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  addr35:
                  if(_loc4_ || param1)
                  {
                     addr42:
                     if(!_loc4_)
                     {
                        while(_loc4_ || param1)
                        {
                           this.§-!W§ = param3.§1!P§;
                           while(true)
                           {
                              this.§#j§ = param3.shape.Copy();
                              continue loop7;
                              §§goto(addr35);
                           }
                           §§goto(addr42);
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              this.§&!<§ = param3.filter.Copy();
                              continue;
                           }
                           loop3:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 this.§>""§ = null;
                                 continue loop4;
                              }
                              addr120:
                              while(true)
                              {
                                 this.m_body = param1;
                                 continue loop3;
                              }
                           }
                        }
                        addr81:
                        §§goto(addr136);
                     }
                     return;
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr120);
      }
      
      b2internal function §;&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#j§ = null;
         }
      }
      
      b2internal function §>!#§(param1:§#!M§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§#j§.ComputeAABB(this.§]"+§,param2);
            do
            {
               this.§-!]§ = param1.§>!#§(this.§]"+§,this);
            }
            while(_loc4_ && this);
            
         }
      }
      
      b2internal function §`4§(param1:§#!M§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§-!]§ != null)
            {
               loop0:
               while(true)
               {
                  param1.§`4§(this.§-!]§);
                  do
                  {
                     this.§-!]§ = null;
                  }
                  while(_loc3_);
                  
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  addr80:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      b2internal function §";§(param1:§#!M§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            if(!this.§-!]§)
            {
               if(!(_loc7_ && param2))
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!_loc7_)
         {
            §§push(this.§#j§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§#j§);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§pop().ComputeAABB(_loc5_,param3);
                     loop3:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§]"+§.§%!]§(_loc4_,_loc5_);
                           if(_loc8_ || this)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        var _loc6_:b2Vec2 = b2Math.§'!%§(param3.position,param2.position);
                        if(!(_loc7_ && param2))
                        {
                           param1.§-!?§(this.§-!]§,this.§]"+§,_loc6_);
                        }
                        return;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
   }
}
