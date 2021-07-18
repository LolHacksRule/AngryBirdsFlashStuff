package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §'!;§.§1!p§;
   import §'!;§.b2AABB;
   import §'!;§.b2RayCastInput;
   import §'!;§.b2RayCastOutput;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var override:b2MassData;
      
      b2internal var §&#§:b2AABB;
      
      b2internal var §"x§:Number;
      
      b2internal var § <§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §5,§:b2Shape;
      
      b2internal var § r§:Number;
      
      b2internal var §`!Y§:Number;
      
      b2internal var §-!§;
      
      b2internal var §!!7§:b2FilterData;
      
      b2internal var §9!r§:Boolean;
      
      b2internal var §>!2§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§!!7§ = new b2FilterData();
         if(_loc2_ || this)
         {
            super();
            this.§&#§ = new b2AABB();
            this.§>!2§ = null;
            if(_loc2_ || _loc1_)
            {
               this.m_body = null;
               this.§ <§ = null;
               if(!_loc1_)
               {
                  this.§5,§ = null;
                  addr75:
                  this.§"x§ = 0;
               }
               this.§ r§ = 0;
            }
            this.§`!Y§ = 0;
            return;
         }
         §§goto(addr75);
      }
      
      public function §"!j§() : int
      {
         return this.§5,§.§"!j§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§5,§;
      }
      
      public function §1!C§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            if(this.§9!r§ == param1)
            {
               if(!_loc7_)
               {
                  §§goto(addr33);
               }
            }
            else
            {
               this.§9!r§ = param1;
               if(_loc6_ || _loc2_)
               {
                  §§push(this.m_body);
                  if(!_loc7_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc7_)
                        {
                           return;
                        }
                        addr55:
                        §§push(this.m_body);
                     }
                     §§goto(addr55);
                  }
                  var _loc2_:b2ContactEdge = §§pop().§>!U§();
                  for(; _loc2_; _loc2_ = _loc2_.§1!U§)
                  {
                     _loc3_ = _loc2_.§12§;
                     _loc4_ = _loc3_.§,^§();
                     _loc5_ = _loc3_.§'!+§();
                     if(_loc6_)
                     {
                        §§push(_loc4_ == this);
                        if(!(_loc7_ && _loc3_))
                        {
                           if(!§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr111:
                                    if(_loc5_ != this)
                                    {
                                       continue;
                                    }
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    §§push(_loc4_.§-!]§());
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc6_)
                                       {
                                          addr139:
                                          if(!§§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§pop();
                                                addr149:
                                                §§push(_loc5_.§-!]§());
                                                if(_loc7_)
                                                {
                                                }
                                                addr154:
                                                §§pop().§1!C§(§§pop());
                                                continue;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr149);
                              }
                           }
                        }
                     }
                     §§goto(addr111);
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         addr33:
      }
      
      public function §-!]§() : Boolean
      {
         return this.§9!r§;
      }
      
      public function §1!i§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            this.§!!7§ = param1.Copy();
            if(_loc7_ || param1)
            {
               §§push(this.m_body);
               if(_loc7_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§goto(addr51);
                     }
                     else
                     {
                        addr52:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr52);
               }
               var _loc2_:b2ContactEdge = §§pop().§>!U§();
               for(; _loc2_; _loc2_ = _loc2_.§1!U§)
               {
                  _loc3_ = _loc2_.§12§;
                  _loc4_ = _loc3_.§,^§();
                  _loc5_ = _loc3_.§'!+§();
                  if(_loc7_ || this)
                  {
                     §§push(_loc4_ == this);
                     if(_loc7_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              addr117:
                              §§pop();
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              addr125:
                              §§push(_loc5_ == this);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc7_ || _loc3_)
                           {
                              _loc3_.§%!h§();
                           }
                        }
                        continue;
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr125);
               }
               return;
            }
            §§goto(addr52);
         }
         addr51:
      }
      
      public function §[!V§() : b2FilterData
      {
         return this.§!!7§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §4!j§() : b2Fixture
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>!2§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§5,§.TestPoint(this.m_body.§>!H§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§5,§.RayCast(param1,param2,this.m_body.§>!H§());
      }
      
      public function §!I§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 == null)
            {
               if(_loc2_ || _loc2_)
               {
                  addr43:
                  param1 = new b2MassData();
                  addr47:
                  this.§5,§.ComputeMass(param1,this.§"x§);
               }
               return param1;
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      public function §8!i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"x§ = param1;
         }
      }
      
      public function §3!r§() : Number
      {
         return this.§"x§;
      }
      
      public function §+!K§() : Number
      {
         return this.§ r§;
      }
      
      public function §3R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ r§ = param1;
         }
      }
      
      public function §%!>§() : Number
      {
         return this.§`!Y§;
      }
      
      public function §<p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!Y§ = param1;
         }
      }
      
      public function §7!l§() : b2AABB
      {
         return this.§&#§;
      }
      
      b2internal function §?J§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§>!2§ = param3.§!L§;
         if(_loc5_)
         {
            this.§ r§ = param3.friction;
            this.§`!Y§ = param3.restitution;
            this.m_body = param1;
            if(!_loc4_)
            {
               this.§ <§ = null;
               if(_loc5_)
               {
                  addr61:
                  this.§!!7§ = param3.filter.Copy();
                  this.§9!r§ = param3.§]w§;
                  if(!(_loc4_ && this))
                  {
                     this.§5,§ = param3.shape.Copy();
                  }
               }
               this.§"x§ = param3.density;
               return;
            }
         }
         §§goto(addr61);
      }
      
      b2internal function §;!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5,§ = null;
         }
      }
      
      b2internal function §<!U§(param1:§1!p§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§5,§.ComputeAABB(this.§&#§,param2);
            if(_loc4_)
            {
               addr27:
               this.§-!§ = param1.§<!U§(this.§&#§,this);
            }
            return;
         }
         §§goto(addr27);
      }
      
      b2internal function §`!A§(param1:§1!p§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§-!§ == null)
            {
               if(!_loc3_)
               {
                  return;
               }
               addr48:
               this.§-!§ = null;
            }
            else
            {
               addr37:
               param1.§`!A§(this.§-!§);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr48);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      b2internal function §=!J§(param1:§1!p§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            if(!this.§-!§)
            {
               if(_loc8_ || param1)
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!_loc7_)
         {
            §§push(this.§5,§);
            if(!_loc7_)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               if(!_loc7_)
               {
                  addr66:
                  this.§5,§.ComputeAABB(_loc5_,param3);
                  if(_loc8_)
                  {
                     addr81:
                     this.§&#§.§^!C§(_loc4_,_loc5_);
                  }
                  var _loc6_:b2Vec2 = b2Math.§<b§(param3.position,param2.position);
                  if(_loc8_ || param1)
                  {
                     param1.§?"§(this.§-!§,this.§&#§,_loc6_);
                  }
                  return;
                  addr64:
               }
               §§goto(addr81);
            }
            §§goto(addr66);
         }
         §§goto(addr64);
      }
   }
}
