package §'!&§
{
   import §,Z§.b2MassData;
   import §,Z§.b2Shape;
   import §3c§.§>!e§;
   import §3c§.b2AABB;
   import §3c§.b2RayCastInput;
   import §3c§.b2RayCastOutput;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §>n§:b2MassData;
      
      b2internal var §9G§:b2AABB;
      
      b2internal var §"S§:Number;
      
      b2internal var §+!o§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#z§:b2Shape;
      
      b2internal var §7!q§:Number;
      
      b2internal var §1e§:Number;
      
      b2internal var §@L§;
      
      b2internal var §^h§:b2FilterData;
      
      b2internal var §="@§:Boolean;
      
      b2internal var §7R§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^h§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               addr120:
               while(true)
               {
                  this.§9G§ = new b2AABB();
                  addr116:
                  while(true)
                  {
                     this.§7R§ = null;
                     addr100:
                     while(true)
                     {
                        this.m_body = null;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §@!N§() : int
      {
         return this.§#z§.§@!N§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#z§;
      }
      
      public function §2!Z§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            if(this.§="@§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§="@§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(!_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc7_ || param1)
                           {
                              §§goto(addr43);
                           }
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           if(!(_loc7_ || param1))
                           {
                              break loop0;
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
                  var _loc2_:b2ContactEdge = §§pop().§<!r§();
                  for(; _loc2_; _loc2_ = _loc2_.§ X§)
                  {
                     _loc3_ = _loc2_.§%!b§;
                     _loc4_ = _loc3_.§'J§();
                     _loc5_ = _loc3_.§#"%§();
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(_loc4_ == this);
                     if(_loc7_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(!_loc7_)
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
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        §§push(_loc4_.§]w§());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr141:
                                    §§pop();
                                    addr142:
                                    §§push(_loc5_.§]w§());
                                    if(_loc7_ || _loc3_)
                                    {
                                    }
                                    addr162:
                                    §§pop().§2!Z§(§§pop());
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr142);
                  }
                  return;
               }
            }
            return;
         }
         addr43:
      }
      
      public function §]w§() : Boolean
      {
         return this.§="@§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            this.§^h§ = param1.Copy();
            if(_loc7_ || _loc3_)
            {
               §§push(this.m_body);
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        return;
                     }
                     addr57:
                     §§push(this.m_body);
                  }
                  §§goto(addr57);
               }
               var _loc2_:b2ContactEdge = §§pop().§<!r§();
               for(; _loc2_; _loc2_ = _loc2_.§ X§)
               {
                  _loc3_ = _loc2_.§%!b§;
                  _loc4_ = _loc3_.§'J§();
                  _loc5_ = _loc3_.§#"%§();
                  if(!(_loc6_ && param1))
                  {
                     §§push(_loc4_ == this);
                     if(!(_loc6_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr107:
                              §§pop();
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              §§push(_loc5_ == this);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              addr126:
                              _loc3_.§0]§();
                           }
                        }
                        continue;
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr126);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function §>"5§() : b2FilterData
      {
         return this.§^h§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §`!y§() : b2Fixture
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7R§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#z§.TestPoint(this.m_body.§>u§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#z§.RayCast(param1,param2,this.m_body.§>u§());
      }
      
      public function §7r§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  param1 = new b2MassData();
                  addr52:
                  this.§#z§.ComputeMass(param1,this.§"S§);
                  addr38:
               }
               return param1;
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
      
      public function §4"=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"S§ = param1;
         }
      }
      
      public function GetDensity() : Number
      {
         return this.§"S§;
      }
      
      public function §!"4§() : Number
      {
         return this.§7!q§;
      }
      
      public function §&X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!q§ = param1;
         }
      }
      
      public function §[![§() : Number
      {
         return this.§1e§;
      }
      
      public function §>W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1e§ = param1;
         }
      }
      
      public function §2!!§() : b2AABB
      {
         return this.§9G§;
      }
      
      b2internal function §]H§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§7R§ = param3.§!!%§;
            while(true)
            {
               this.§7!q§ = param3.friction;
               loop1:
               for(; _loc4_; if(!(_loc4_ || this))
               {
                  continue;
               },this.§+!o§ = null,while(true)
               {
                  this.§^h§ = param3.filter.Copy();
                  loop5:
                  for(; _loc4_ || param1; for(; _loc4_ || this; while(!(_loc5_ && param2))
                  {
                     this.§"S§ = param3.density;
                     if(!_loc5_)
                     {
                        return;
                     }
                  })
                  {
                     if(_loc4_)
                     {
                        this.§#z§ = param3.shape.Copy();
                        continue;
                     }
                     §§goto(addr93);
                  })
                  {
                     while(true)
                     {
                        this.§="@§ = param3.§!!h§;
                        continue loop5;
                     }
                  }
               })
               {
                  this.§1e§ = param3.restitution;
                  while(true)
                  {
                     this.m_body = param1;
                     addr93:
                     while(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      b2internal function §^!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§#z§ = null;
         }
      }
      
      b2internal function §'!C§(param1:§>!e§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§#z§.ComputeAABB(this.§9G§,param2);
            do
            {
               this.§@L§ = param1.§'!C§(this.§9G§,this);
            }
            while(_loc3_);
            
         }
      }
      
      b2internal function §&1§(param1:§>!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§@L§ != null)
            {
               while(true)
               {
                  param1.§&1§(this.§@L§);
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§@L§ = null;
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                        addr46:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      b2internal function §2$§(param1:§>!e§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(!this.§@L§)
            {
               if(!_loc8_)
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!_loc8_)
         {
            §§push(this.§#z§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               addr76:
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     §§push(this.§#z§);
                     if(_loc8_)
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
            this.§9G§.§@B§(_loc4_,_loc5_);
            if(!(_loc7_ || param3))
            {
               continue;
            }
            if(_loc7_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr62);
            }
            §§goto(addr76);
         }
         var _loc6_:b2Vec2 = b2Math.§,!`§(param3.position,param2.position);
         if(_loc7_)
         {
            param1.§1i§(this.§@L§,this.§9G§,_loc6_);
         }
      }
   }
}
