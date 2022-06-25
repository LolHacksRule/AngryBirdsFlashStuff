package §`w§
{
   import §2!+§.b2MassData;
   import §2!+§.b2Shape;
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §72§.b2AABB;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §+=§:b2MassData;
      
      b2internal var §^!5§:b2AABB;
      
      b2internal var §7!%§:Number;
      
      b2internal var §3=§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!$§:b2Shape;
      
      b2internal var §-!$§:Number;
      
      b2internal var §&!]§:Number;
      
      b2internal var §!!o§;
      
      b2internal var §<j§:b2FilterData;
      
      b2internal var §?!h§:Boolean;
      
      b2internal var §?f§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<j§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr125:
               while(true)
               {
                  this.§^!5§ = new b2AABB();
                  continue loop0;
               }
            }
         }
         loop7:
         while(true)
         {
            this.§-!$§ = 0;
            while(true)
            {
               if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop7;
            }
            §§goto(addr108);
         }
         §§goto(addr43);
      }
      
      public function §2!r§() : int
      {
         return this.§2!$§.§2!r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!$§;
      }
      
      public function §[!G§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            if(this.§?!h§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§?!h§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    return;
                                 }
                                 addr65:
                                 return;
                              }
                              continue;
                           }
                           if(!(_loc6_ || this))
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
                  var _loc2_:b2ContactEdge = §§pop().§"x§();
                  for(; _loc2_; _loc2_ = _loc2_.§-!3§)
                  {
                     _loc3_ = _loc2_.§+2§;
                     _loc4_ = _loc3_.§?!l§();
                     _loc5_ = _loc3_.§0+§();
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc4_ == this);
                        if(!_loc7_)
                        {
                           if(!§§pop())
                           {
                              if(_loc6_ || param1)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§push(_loc5_ == this);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(_loc4_.§2r§());
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_ || _loc3_)
                           {
                              addr156:
                              if(!§§pop())
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§pop();
                                    addr166:
                                    §§push(_loc5_.§2r§());
                                    if(_loc7_)
                                    {
                                    }
                                    addr171:
                                    §§pop().§[!G§(§§pop());
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr166);
                  }
                  return;
               }
            }
            §§goto(addr65);
         }
         §§goto(addr54);
      }
      
      public function §2r§() : Boolean
      {
         return this.§?!h§;
      }
      
      public function §0S§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            this.§<j§ = param1.Copy();
            if(_loc6_ || param1)
            {
               §§push(this.m_body);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§goto(addr45);
                     }
                     else
                     {
                        addr46:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr46);
               }
               var _loc2_:b2ContactEdge = §§pop().§"x§();
               for(; _loc2_; _loc2_ = _loc2_.§-!3§)
               {
                  _loc3_ = _loc2_.§+2§;
                  _loc4_ = _loc3_.§?!l§();
                  _loc5_ = _loc3_.§0+§();
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(_loc4_ == this);
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           addr106:
                           §§pop();
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§push(_loc5_ == this);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           _loc3_.§=!<§();
                        }
                     }
                     continue;
                  }
                  §§goto(addr106);
               }
               return;
            }
            addr45:
            return;
         }
         §§goto(addr46);
      }
      
      public function §,`§() : b2FilterData
      {
         return this.§<j§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+!N§() : b2Fixture
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?f§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!$§.TestPoint(this.m_body.§2!0§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!$§.RayCast(param1,param2,this.m_body.§2!0§());
      }
      
      public function §!!+§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr43);
            }
            this.§2!$§.ComputeMass(param1,this.§7!%§);
         }
         addr43:
         return param1;
      }
      
      public function §3N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!%§ = param1;
         }
      }
      
      public function §>z§() : Number
      {
         return this.§7!%§;
      }
      
      public function §7!!§() : Number
      {
         return this.§-!$§;
      }
      
      public function §&!V§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-!$§ = param1;
         }
      }
      
      public function §`#§() : Number
      {
         return this.§&!]§;
      }
      
      public function §,t§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&!]§ = param1;
         }
      }
      
      public function §=g§() : b2AABB
      {
         return this.§^!5§;
      }
      
      b2internal function §`4§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§?f§ = param3.§+!+§;
         }
         while(true)
         {
            this.§-!$§ = param3.friction;
            loop1:
            while(true)
            {
               this.§&!]§ = param3.restitution;
               while(true)
               {
                  this.m_body = param1;
                  addr96:
                  while(_loc5_ || this)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      b2internal function §[M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§2!$§ = null;
         }
      }
      
      b2internal function §0!S§(param1:§<X§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§2!$§.ComputeAABB(this.§^!5§,param2);
         }
         do
         {
            this.§!!o§ = param1.§0!S§(this.§^!5§,this);
         }
         while(_loc3_);
         
      }
      
      b2internal function §!O§(param1:§<X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§!!o§ != null)
            {
               loop0:
               do
               {
                  param1.§!O§(this.§!!o§);
                  while(_loc3_)
                  {
                     this.§!!o§ = null;
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      b2internal function §'!@§(param1:§<X§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(!this.§!!o§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(_loc8_ || param1)
         {
            §§push(this.§2!$§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               addr92:
               while(true)
               {
                  addr68:
                  while(true)
                  {
                     §§push(this.§2!$§);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§pop().ComputeAABB(_loc5_,param3);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§^!5§.§%q§(_loc4_,_loc5_);
            if(_loc7_ && param2)
            {
               continue;
            }
            if(!_loc7_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr68);
            }
            §§goto(addr92);
         }
         var _loc6_:b2Vec2 = b2Math.§54§(param3.position,param2.position);
         if(_loc8_ || param2)
         {
            param1.§`=§(this.§!!o§,this.§^!5§,_loc6_);
         }
      }
   }
}
