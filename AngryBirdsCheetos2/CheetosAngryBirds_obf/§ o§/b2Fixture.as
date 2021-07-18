package § o§
{
   import §"0§.b2internal;
   import §-r§.§@C§;
   import §-r§.b2AABB;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §]!S§.b2MassData;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §#!F§:b2MassData;
      
      b2internal var §<D§:b2AABB;
      
      b2internal var §!n§:Number;
      
      b2internal var §-![§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §^!+§:b2Shape;
      
      b2internal var §-U§:Number;
      
      b2internal var §=!h§:Number;
      
      b2internal var §4!W§;
      
      b2internal var §2]§:b2FilterData;
      
      b2internal var §"W§:Boolean;
      
      b2internal var §&!i§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§2]§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§<D§ = new b2AABB();
                  while(true)
                  {
                     this.§&!i§ = null;
                     loop3:
                     for(; !(_loc1_ && _loc2_); loop6:
                     for(; !(_loc1_ && _loc1_); if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           return;
                           addr49:
                        }
                        continue loop1;
                     })
                     {
                        this.§!n§ = 0;
                        loop7:
                        while(!_loc1_)
                        {
                           this.§-U§ = 0;
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop7;
                              addr68:
                              this.§=!h§ = 0;
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr92);
                     })
                     {
                        this.m_body = null;
                        while(true)
                        {
                           this.§-![§ = null;
                           addr92:
                           while(!_loc1_)
                           {
                              this.§^!+§ = null;
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr49);
      }
      
      public function §7!_§() : int
      {
         return this.§^!+§.§7!_§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§^!+§;
      }
      
      public function §,!W§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§"W§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§"W§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                           if(_loc7_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc7_ && _loc2_)
                           {
                              §§goto(addr75);
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
                  var _loc2_:b2ContactEdge = §§pop().§!!R§();
                  for(; _loc2_; _loc2_ = _loc2_.§23§)
                  {
                     _loc3_ = _loc2_.§4§;
                     _loc4_ = _loc3_.§`u§();
                     _loc5_ = _loc3_.§7t§();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_ == this);
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!_loc6_)
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
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc4_.§;>§());
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc7_ && param1))
                           {
                              addr156:
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    addr165:
                                    §§pop();
                                    addr166:
                                    §§push(_loc5_.§;>§());
                                    if(_loc7_ && _loc3_)
                                    {
                                    }
                                    addr186:
                                    §§pop().§,!W§(§§pop());
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr166);
                  }
                  return;
               }
               §§goto(addr49);
            }
            addr75:
            return;
         }
         addr49:
      }
      
      public function §;>§() : Boolean
      {
         return this.§"W§;
      }
      
      public function §=!K§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            this.§2]§ = param1.Copy();
            if(_loc6_ || _loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr46);
         }
         addr38:
         §§push(this.m_body);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(!_loc7_)
               {
                  return;
               }
               addr46:
               §§push(this.m_body);
            }
            §§goto(addr46);
         }
         var _loc2_:b2ContactEdge = §§pop().§!!R§();
         for(; _loc2_; _loc2_ = _loc2_.§23§)
         {
            _loc3_ = _loc2_.§4§;
            _loc4_ = _loc3_.§`u§();
            _loc5_ = _loc3_.§7t§();
            if(!_loc7_)
            {
               §§push(_loc4_ == this);
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
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
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     _loc3_.§[]§();
                  }
               }
            }
         }
      }
      
      public function §+R§() : b2FilterData
      {
         return this.§2]§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §;!B§() : b2Fixture
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!i§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§^!+§.TestPoint(this.m_body.§2!i§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§^!+§.RayCast(param1,param2,this.m_body.§2!i§());
      }
      
      public function §6Y§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(_loc2_)
               {
                  param1 = new b2MassData();
                  addr47:
                  this.§^!+§.ComputeMass(param1,this.§!n§);
                  addr33:
               }
               return param1;
            }
            §§goto(addr47);
         }
         §§goto(addr33);
      }
      
      public function §?!8§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!n§ = param1;
         }
      }
      
      public function § i§() : Number
      {
         return this.§!n§;
      }
      
      public function §<!7§() : Number
      {
         return this.§-U§;
      }
      
      public function §`!f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-U§ = param1;
         }
      }
      
      public function §'L§() : Number
      {
         return this.§=!h§;
      }
      
      public function §6K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=!h§ = param1;
         }
      }
      
      public function §[!@§() : b2AABB
      {
         return this.§<D§;
      }
      
      b2internal function §#!M§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§&!i§ = param3.§["§;
            loop0:
            while(true)
            {
               this.§-U§ = param3.friction;
               addr127:
               while(true)
               {
                  this.§=!h§ = param3.restitution;
                  addr111:
                  while(true)
                  {
                     this.m_body = param1;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      b2internal function §[!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!+§ = null;
         }
      }
      
      b2internal function §1<§(param1:§@C§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§^!+§.ComputeAABB(this.§<D§,param2);
            do
            {
               this.§4!W§ = param1.§1<§(this.§<D§,this);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      b2internal function §%!4§(param1:§@C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§4!W§ != null)
            {
               do
               {
                  param1.§%!4§(this.§4!W§);
                  do
                  {
                     this.§4!W§ = null;
                  }
                  while(_loc2_ && param1);
                  
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      b2internal function §,N§(param1:§@C§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            if(!this.§4!W§)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(!_loc8_)
            {
               §§push(this.§^!+§);
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.§^!+§);
                     if(_loc8_ && param2)
                     {
                        break;
                     }
                     §§pop().ComputeAABB(_loc5_,param3);
                     do
                     {
                        this.§<D§.§]y§(_loc4_,_loc5_);
                     }
                     while(!_loc7_);
                     
                     if(!(_loc8_ && this))
                     {
                        if(true)
                        {
                           var _loc6_:b2Vec2 = b2Math.§=_§(param3.position,param2.position);
                           if(!(_loc8_ && param1))
                           {
                              param1.§-H§(this.§4!W§,this.§<D§,_loc6_);
                           }
                        }
                        continue;
                        return;
                     }
                     addr91:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr91);
         }
         addr33:
      }
   }
}
