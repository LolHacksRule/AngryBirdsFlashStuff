package §]=§
{
   import §#!"§.b2MassData;
   import §#!"§.b2Shape;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.§8!b§;
   import §'s§.b2AABB;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §7!g§:b2MassData;
      
      b2internal var §!!7§:b2AABB;
      
      b2internal var §5!2§:Number;
      
      b2internal var §,1§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!d§:b2Shape;
      
      b2internal var §`!T§:Number;
      
      b2internal var §7!a§:Number;
      
      b2internal var §<V§;
      
      b2internal var §&!j§:b2FilterData;
      
      b2internal var §%R§:Boolean;
      
      b2internal var §8!B§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&!j§ = new b2FilterData();
            while(true)
            {
               super();
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§!!7§ = new b2AABB();
                     loop3:
                     while(true)
                     {
                        this.§8!B§ = null;
                        loop4:
                        while(true)
                        {
                           this.m_body = null;
                           loop5:
                           for(; !_loc2_; if(!(_loc2_ && this))
                           {
                              continue loop4;
                           })
                           {
                              this.§,1§ = null;
                              loop6:
                              while(true)
                              {
                                 this.§2!d§ = null;
                                 while(true)
                                 {
                                    this.§5!2§ = 0;
                                    continue loop6;
                                    addr48:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr79);
                        }
                     }
                  }
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function §-V§() : int
      {
         return this.§2!d§.§-V§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!d§;
      }
      
      public function §`7§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            if(this.§%R§ == param1)
            {
               if(_loc6_)
               {
                  return;
               }
               while(true)
               {
                  addr40:
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        this.§%R§ = param1;
                        while(true)
                        {
                           §§push(this.m_body);
                           if(_loc6_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr37);
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr40);
                              }
                              addr62:
                              §§push(this.m_body);
                              break;
                           }
                           break;
                        }
                        var _loc2_:b2ContactEdge = §§pop().§[7§();
                        for(; _loc2_; _loc2_ = _loc2_.§2B§)
                        {
                           _loc3_ = _loc2_.§4! §;
                           _loc4_ = _loc3_.§2!N§();
                           _loc5_ = _loc3_.§`!Q§();
                           if(_loc6_)
                           {
                              §§push(_loc4_ == this);
                              if(!(_loc7_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc5_ == this);
                                          if(!_loc6_)
                                          {
                                          }
                                          addr127:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!(_loc6_ || param1))
                                          {
                                             continue;
                                          }
                                          addr135:
                                          §§push(_loc3_);
                                          if(!_loc7_)
                                          {
                                             §§push(_loc4_.§?!V§());
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         addr177:
                                                         §§pop();
                                                         addr178:
                                                         §§push(_loc5_.§?!V§());
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                         }
                                                         addr188:
                                                         §§pop().§`7§(§§pop());
                                                         continue;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr188);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr135);
                        }
                        return;
                     }
                     addr49:
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr49);
         }
         addr37:
      }
      
      public function §?!V§() : Boolean
      {
         return this.§%R§;
      }
      
      public function §7!]§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            this.§&!j§ = param1.Copy();
            if(_loc6_)
            {
               §§push(this.m_body);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr41);
                     }
                     else
                     {
                        addr42:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr42);
               }
               var _loc2_:b2ContactEdge = §§pop().§[7§();
               for(; _loc2_; _loc2_ = _loc2_.§2B§)
               {
                  _loc3_ = _loc2_.§4! §;
                  _loc4_ = _loc3_.§2!N§();
                  _loc5_ = _loc3_.§`!Q§();
                  if(_loc6_ || _loc3_)
                  {
                     §§push(_loc4_ == this);
                     if(_loc6_ || this)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_ || param1)
                        {
                           addr96:
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§push(_loc5_ == this);
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr130:
                              _loc3_.§>0§();
                           }
                        }
                        continue;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr130);
               }
               return;
            }
            §§goto(addr42);
         }
         addr41:
      }
      
      public function §^!M§() : b2FilterData
      {
         return this.§&!j§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §70§() : b2Fixture
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!B§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!d§.TestPoint(this.m_body.§%!B§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!d§.RayCast(param1,param2,this.m_body.§%!B§());
      }
      
      public function §2!6§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc2_ || _loc2_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr54);
            }
            this.§2!d§.ComputeMass(param1,this.§5!2§);
         }
         addr54:
         return param1;
      }
      
      public function §#!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5!2§ = param1;
         }
      }
      
      public function §]!&§() : Number
      {
         return this.§5!2§;
      }
      
      public function §6p§() : Number
      {
         return this.§`!T§;
      }
      
      public function §9!$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!T§ = param1;
         }
      }
      
      public function §@x§() : Number
      {
         return this.§7!a§;
      }
      
      public function §9!_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7!a§ = param1;
         }
      }
      
      public function §=!;§() : b2AABB
      {
         return this.§!!7§;
      }
      
      b2internal function §]!U§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§8!B§ = param3.§?!X§;
            while(true)
            {
               this.§`!T§ = param3.friction;
               addr114:
               while(_loc4_)
               {
                  this.§7!a§ = param3.restitution;
               }
            }
         }
         loop2:
         while(true)
         {
            this.m_body = param1;
            loop3:
            while(true)
            {
               this.§,1§ = null;
               loop4:
               while(true)
               {
                  this.§&!j§ = param3.filter.Copy();
                  loop5:
                  while(!_loc5_)
                  {
                     this.§%R§ = param3.§ !4§;
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           this.§2!d§ = param3.shape.Copy();
                           while(_loc4_)
                           {
                              continue loop4;
                              this.§5!2§ = param3.density;
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr30);
                           }
                           continue loop5;
                        }
                        §§goto(addr114);
                        if(_loc4_ || param3)
                        {
                           return;
                        }
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      b2internal function §"P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§2!d§ = null;
         }
      }
      
      b2internal function §6K§(param1:§8!b§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§2!d§.ComputeAABB(this.§!!7§,param2);
         }
         do
         {
            this.§<V§ = param1.§6K§(this.§!!7§,this);
         }
         while(!(_loc3_ || param1));
         
      }
      
      b2internal function §[!3§(param1:§8!b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§<V§ != null)
            {
               do
               {
                  param1.§[!3§(this.§<V§);
                  do
                  {
                     this.§<V§ = null;
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_);
               
               if(_loc2_ || _loc2_)
               {
                  return;
                  addr48:
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      b2internal function §5X§(param1:§8!b§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§<V§)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!(_loc8_ && this))
         {
            §§push(this.§2!d§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               while(true)
               {
                  continue loop0;
                  §§goto(addr83);
               }
            }
         }
         addr83:
         while(true)
         {
            this.§!!7§.§1b§(_loc4_,_loc5_);
            if(!_loc8_)
            {
               if(!_loc8_)
               {
                  if(true)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
         var _loc6_:b2Vec2 = b2Math.§;v§(param3.position,param2.position);
         if(!(_loc8_ && param1))
         {
            param1.§]O§(this.§<V§,this.§!!7§,_loc6_);
         }
      }
   }
}
