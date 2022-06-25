package §#V§
{
   import §,C§.b2MassData;
   import §,C§.b2Shape;
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §8w§.b2AABB;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §4<§:b2MassData;
      
      b2internal var each:b2AABB;
      
      b2internal var §?!T§:Number;
      
      b2internal var §@o§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §"!w§:b2Shape;
      
      b2internal var §@s§:Number;
      
      b2internal var §]!&§:Number;
      
      b2internal var § !P§;
      
      b2internal var §>R§:b2FilterData;
      
      b2internal var § !B§:Boolean;
      
      b2internal var §,h§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>R§ = new b2FilterData();
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.each = new b2AABB();
               while(true)
               {
                  this.§,h§ = null;
                  while(!(_loc2_ && _loc2_))
                  {
                     this.m_body = null;
                     while(_loc1_)
                     {
                        this.§@o§ = null;
                        loop5:
                        while(true)
                        {
                           this.§"!w§ = null;
                           addr67:
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop1;
                              }
                              continue loop5;
                           }
                           continue loop1;
                        }
                        if(!(_loc2_ && this))
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §'!_§() : int
      {
         return this.§"!w§.§'!_§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§"!w§;
      }
      
      public function §#=§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§ !B§ == param1)
            {
               if(_loc6_ || _loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr71:
            }
            loop1:
            while(true)
            {
               this.§ !B§ = param1;
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(this.m_body);
                     if(!(_loc7_ && this))
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
                           while(false)
                           {
                              continue loop1;
                           }
                        }
                        §§push(this.m_body);
                        break;
                     }
                     break;
                  }
                  §§goto(addr71);
               }
               var _loc2_:b2ContactEdge = §§pop().§ !S§();
               for(; _loc2_; _loc2_ = _loc2_.§#!R§)
               {
                  _loc3_ = _loc2_.§80§;
                  _loc4_ = _loc3_.§68§();
                  _loc5_ = _loc3_.§[t§();
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§push(_loc4_ == this);
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || _loc2_)
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
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     §§push(_loc4_.§0S§());
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc7_ && _loc3_))
                        {
                           if(!§§pop())
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 addr175:
                                 §§pop();
                                 addr176:
                                 §§push(_loc5_.§0S§());
                                 if(_loc7_ && this)
                                 {
                                 }
                                 addr186:
                                 §§pop().§#=§(§§pop());
                                 continue;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr176);
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §0S§() : Boolean
      {
         return this.§ !B§;
      }
      
      public function §6!U§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            this.§>R§ = param1.Copy();
            if(_loc6_)
            {
               §§goto(addr33);
            }
            §§goto(addr45);
         }
         addr33:
         §§push(this.m_body);
         if(!(_loc7_ && _loc3_))
         {
            if(§§pop())
            {
               if(!_loc7_)
               {
                  addr45:
                  return;
               }
            }
            §§push(this.m_body);
         }
         var _loc2_:b2ContactEdge = §§pop().§ !S§();
         for(; _loc2_; _loc2_ = _loc2_.§#!R§)
         {
            _loc3_ = _loc2_.§80§;
            _loc4_ = _loc3_.§68§();
            _loc5_ = _loc3_.§[t§();
            if(_loc6_)
            {
               §§push(_loc4_ == this);
               if(!(_loc7_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        addr106:
                        §§pop();
                        if(_loc7_)
                        {
                           continue;
                        }
                        §§push(_loc5_ == this);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr115:
                        _loc3_.§9!E§();
                     }
                  }
                  continue;
               }
               §§goto(addr106);
            }
            §§goto(addr115);
         }
      }
      
      public function §%!v§() : b2FilterData
      {
         return this.§>R§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>H§() : b2Fixture
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,h§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§"!w§.TestPoint(this.m_body.§7§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§"!w§.RayCast(param1,param2,this.m_body.§7§());
      }
      
      public function §-!`§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr38:
                  param1 = new b2MassData();
                  addr42:
                  this.§"!w§.ComputeMass(param1,this.§?!T§);
               }
               return param1;
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      public function §!_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?!T§ = param1;
         }
      }
      
      public function §9q§() : Number
      {
         return this.§?!T§;
      }
      
      public function §-! §() : Number
      {
         return this.§@s§;
      }
      
      public function §?!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@s§ = param1;
         }
      }
      
      public function § !@§() : Number
      {
         return this.§]!&§;
      }
      
      public function §6+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!&§ = param1;
         }
      }
      
      public function §"Y§() : b2AABB
      {
         return this.each;
      }
      
      b2internal function §1#§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§,h§ = param3.§#+§;
            loop0:
            while(true)
            {
               this.§@s§ = param3.friction;
               while(true)
               {
                  this.§]!&§ = param3.restitution;
                  while(true)
                  {
                     this.m_body = param1;
                     addr95:
                     while(_loc4_ || param1)
                     {
                        continue loop0;
                     }
                  }
                  addr71:
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  this.§"!w§ = param3.shape.Copy();
                  loop7:
                  for(; !(_loc5_ && this); this.§?!T§ = param3.density,if(_loc4_)
                  {
                     return;
                  })
                  {
                     if(!_loc5_)
                     {
                        addr46:
                        if(_loc4_ || param3)
                        {
                           continue;
                        }
                        addr90:
                        while(true)
                        {
                           this.§>R§ = param3.filter.Copy();
                           §§goto(addr46);
                        }
                     }
                     while(true)
                     {
                        this.§ !B§ = param3.§>'§;
                        break loop7;
                     }
                  }
                  while(_loc4_)
                  {
                     §§goto(addr71);
                     §§goto(addr37);
                  }
                  addr37:
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr90);
      }
      
      b2internal function §,!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"!w§ = null;
         }
      }
      
      b2internal function §1!@§(param1:§2U§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§"!w§.ComputeAABB(this.each,param2);
            do
            {
               this.§ !P§ = param1.§1!@§(this.each,this);
            }
            while(_loc4_);
            
         }
      }
      
      b2internal function §for §(param1:§2U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§ !P§ != null)
            {
               do
               {
                  param1.§for §(this.§ !P§);
                  do
                  {
                     this.§ !P§ = null;
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(_loc2_ && param1);
               
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      b2internal function §^!7§(param1:§2U§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            if(!this.§ !P§)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(_loc7_)
            {
               §§push(this.§"!w§);
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
            while(false)
            {
               §§goto(addr65);
            }
            var _loc6_:b2Vec2 = b2Math.§9!<§(param3.position,param2.position);
            if(_loc7_ || this)
            {
               param1.§&!N§(this.§ !P§,this.each,_loc6_);
            }
            return;
         }
         addr33:
      }
   }
}
