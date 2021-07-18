package §0"!§
{
   import §!§.§5!u§;
   import §!§.b2AABB;
   import §!§.b2RayCastInput;
   import §!§.b2RayCastOutput;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §=!!§.b2MassData;
   import §=!!§.b2Shape;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §-!i§:b2MassData;
      
      b2internal var §`!F§:b2AABB;
      
      b2internal var §^"'§:Number;
      
      b2internal var §6!c§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#!O§:b2Shape;
      
      b2internal var §]T§:Number;
      
      b2internal var §1!k§:Number;
      
      b2internal var §^!N§;
      
      b2internal var §1!_§:b2FilterData;
      
      b2internal var §=!r§:Boolean;
      
      b2internal var §finally§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!_§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§`!F§ = new b2AABB();
                  while(true)
                  {
                     this.§finally§ = null;
                     loop3:
                     while(true)
                     {
                        this.m_body = null;
                        addr105:
                        while(true)
                        {
                           this.§6!c§ = null;
                           continue loop3;
                        }
                     }
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §§goto(addr50);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §4!v§() : int
      {
         return this.§#!O§.§4!v§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#!O§;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            if(this.§=!r§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§=!r§ = param1;
                  loop1:
                  while(_loc7_)
                  {
                     while(true)
                     {
                        §§push(this.m_body);
                        if(!(_loc6_ && param1))
                        {
                           if(§§pop() == null)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
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
                     var _loc2_:b2ContactEdge = §§pop().§@d§();
                     for(; _loc2_; _loc2_ = _loc2_.next)
                     {
                        _loc3_ = _loc2_.§@"6§;
                        _loc4_ = _loc3_.§6!'§();
                        _loc5_ = _loc3_.§]O§();
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(_loc4_ == this);
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr113:
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc5_ == this);
                                 }
                              }
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              addr122:
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(_loc4_.§5!V§());
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             addr142:
                                             §§push(_loc5_.§5!V§());
                                             if(_loc7_)
                                             {
                                                addr156:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          §§goto(addr156);
                                       }
                                       §§pop().§]4§(§§pop());
                                       continue;
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr122);
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §5!V§() : Boolean
      {
         return this.§=!r§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            this.§1!_§ = param1.Copy();
            if(!(_loc7_ && param1))
            {
               §§push(this.m_body);
               if(!(_loc7_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr50);
                     }
                  }
                  §§push(this.m_body);
               }
               var _loc2_:b2ContactEdge = §§pop().§@d§();
               for(; _loc2_; _loc2_ = _loc2_.next)
               {
                  _loc3_ = _loc2_.§@"6§;
                  _loc4_ = _loc3_.§6!'§();
                  _loc5_ = _loc3_.§]O§();
                  if(_loc6_ || _loc2_)
                  {
                     §§push(_loc4_ == this);
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && this))
                           {
                              §§pop();
                              addr120:
                              if(_loc6_)
                              {
                                 §§push(_loc5_ == this);
                              }
                              _loc3_.§]!V§();
                              continue;
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
                  §§goto(addr120);
               }
               return;
            }
         }
         addr50:
      }
      
      public function §9!l§() : b2FilterData
      {
         return this.§1!_§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §2!9§() : b2Fixture
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§finally§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#!O§.TestPoint(this.m_body.§%X§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#!O§.RayCast(param1,param2,this.m_body.§%X§());
      }
      
      public function §&D§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 == null)
            {
               if(_loc3_ || param1)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr64);
            }
            this.§#!O§.ComputeMass(param1,this.§^"'§);
         }
         addr64:
         return param1;
      }
      
      public function § !u§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^"'§ = param1;
         }
      }
      
      public function GetDensity() : Number
      {
         return this.§^"'§;
      }
      
      public function §8!>§() : Number
      {
         return this.§]T§;
      }
      
      public function §-!e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]T§ = param1;
         }
      }
      
      public function §?2§() : Number
      {
         return this.§1!k§;
      }
      
      public function §,!C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!k§ = param1;
         }
      }
      
      public function §5=§() : b2AABB
      {
         return this.§`!F§;
      }
      
      b2internal function §'!D§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§finally§ = param3.userData;
            while(true)
            {
               this.§]T§ = param3.friction;
               loop1:
               while(true)
               {
                  this.§1!k§ = param3.restitution;
                  loop2:
                  while(true)
                  {
                     this.m_body = param1;
                     addr95:
                     while(true)
                     {
                        this.§6!c§ = null;
                        while(_loc5_)
                        {
                           this.§1!_§ = param3.filter.Copy();
                           while(!_loc4_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      b2internal function §7!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#!O§ = null;
         }
      }
      
      b2internal function §=!b§(param1:§5!u§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§#!O§.ComputeAABB(this.§`!F§,param2);
         }
         do
         {
            this.§^!N§ = param1.§=!b§(this.§`!F§,this);
         }
         while(_loc3_);
         
      }
      
      b2internal function §4d§(param1:§5!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^!N§ != null)
            {
               loop0:
               while(true)
               {
                  param1.§4d§(this.§^!N§);
                  do
                  {
                     this.§^!N§ = null;
                  }
                  while(_loc3_);
                  
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  addr80:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      b2internal function §3g§(param1:§5!u§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            if(!this.§^!N§)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(_loc7_)
         {
            §§push(this.§#!O§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               addr96:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
   }
}
