package §6"1§
{
   import §!"3§.b2MassData;
   import §!"3§.b2Shape;
   import §'"-§.§3Q§;
   import §'"-§.b2AABB;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"6§.b2Contact;
   import §'"6§.b2ContactEdge;
   import §,"[§.b2internal;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §&!Y§:b2MassData;
      
      b2internal var §5"&§:b2AABB;
      
      b2internal var §%!$§:Number;
      
      b2internal var §?!g§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §>!!§:b2Shape;
      
      b2internal var §8&§:Number;
      
      b2internal var §7"$§:Number;
      
      b2internal var §2!x§;
      
      b2internal var §5"9§:b2FilterData;
      
      b2internal var §#!w§:Boolean;
      
      b2internal var §]!d§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5"9§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§5"&§ = new b2AABB();
                  while(true)
                  {
                     this.§]!d§ = null;
                     continue loop1;
                     loop5:
                     while(!(_loc1_ && this))
                     {
                        while(true)
                        {
                           this.§>!!§ = null;
                           loop7:
                           while(!(_loc1_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 this.§%!$§ = 0;
                                 while(_loc2_)
                                 {
                                    this.§8&§ = 0;
                                    do
                                    {
                                       this.§7"$§ = 0;
                                    }
                                    while(_loc1_ && this);
                                    
                                    if(_loc1_ && this)
                                    {
                                       continue;
                                    }
                                    addr42:
                                    if(_loc2_ || this)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr51);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§?!g§ = null;
                                          break loop7;
                                          §§goto(addr42);
                                       }
                                       addr114:
                                    }
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop5;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §>!f§() : int
      {
         return this.§>!!§.§>!f§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§>!!§;
      }
      
      public function §<"C§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_ || this)
         {
            if(this.§#!w§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§#!w§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop() == null)
                        {
                           if(_loc7_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           addr70:
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
                  var _loc2_:b2ContactEdge = §§pop().§0!z§();
                  for(; _loc2_; _loc2_ = _loc2_.§3u§)
                  {
                     _loc3_ = _loc2_.§-"G§;
                     _loc4_ = _loc3_.§]!A§();
                     _loc5_ = _loc3_.§3!]§();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_ == this);
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr123:
                              §§pop();
                              if(!(_loc6_ && this))
                              {
                                 addr134:
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
                              if(!(_loc6_ && param1))
                              {
                                 §§push(_loc4_.§0d§());
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             addr171:
                                             §§pop();
                                             §§push(_loc5_.§0d§());
                                             if(!_loc6_)
                                             {
                                                addr176:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                       §§pop().§<"C§(§§pop());
                                       continue;
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr123);
                  }
                  return;
               }
               if(_loc7_ || _loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §0d§() : Boolean
      {
         return this.§#!w§;
      }
      
      public function §'y§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            this.§5"9§ = param1.Copy();
            if(!_loc6_)
            {
               §§push(this.m_body);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
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
               var _loc2_:b2ContactEdge = §§pop().§0!z§();
               for(; _loc2_; _loc2_ = _loc2_.§3u§)
               {
                  _loc3_ = _loc2_.§-"G§;
                  _loc4_ = _loc3_.§]!A§();
                  _loc5_ = _loc3_.§3!]§();
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§push(_loc4_ == this);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(_loc7_)
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              addr103:
                              if(_loc5_ != this)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue;
                              }
                           }
                           _loc3_.§^e§();
                           continue;
                        }
                     }
                  }
                  §§goto(addr103);
               }
               return;
            }
            addr41:
            return;
         }
         §§goto(addr42);
      }
      
      public function §%"L§() : b2FilterData
      {
         return this.§5"9§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>!v§() : b2Fixture
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!d§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§>!!§.TestPoint(this.m_body.§!"0§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§>!!§.RayCast(param1,param2,this.m_body.§!"0§());
      }
      
      public function §!!v§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr49);
            }
            this.§>!!§.ComputeMass(param1,this.§%!$§);
         }
         addr49:
         return param1;
      }
      
      public function §'!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%!$§ = param1;
         }
      }
      
      public function §?!=§() : Number
      {
         return this.§%!$§;
      }
      
      public function §,!z§() : Number
      {
         return this.§8&§;
      }
      
      public function §5L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8&§ = param1;
         }
      }
      
      public function §-"E§() : Number
      {
         return this.§7"$§;
      }
      
      public function §-!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7"$§ = param1;
         }
      }
      
      public function §+""§() : b2AABB
      {
         return this.§5"&§;
      }
      
      b2internal function §3!N§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§]!d§ = param3.§-!"§;
            addr126:
            while(true)
            {
               this.§8&§ = param3.friction;
            }
            addr126:
         }
         loop1:
         while(true)
         {
            this.§7"$§ = param3.restitution;
            loop2:
            while(true)
            {
               this.m_body = param1;
               loop3:
               while(true)
               {
                  this.§?!g§ = null;
                  while(true)
                  {
                     this.§5"9§ = param3.filter.Copy();
                     loop5:
                     while(true)
                     {
                        this.§#!w§ = param3.§"m§;
                        addr66:
                        while(true)
                        {
                           if(!(_loc5_ && param2))
                           {
                              continue loop3;
                           }
                           continue loop5;
                        }
                        §§goto(addr126);
                     }
                     addr46:
                     while(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           this.§%!$§ = param3.density;
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                           §§goto(addr66);
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      b2internal function §2!s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>!!§ = null;
         }
      }
      
      b2internal function §!!$§(param1:§3Q§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§>!!§.ComputeAABB(this.§5"&§,param2);
            do
            {
               this.§2!x§ = param1.§!!$§(this.§5"&§,this);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      b2internal function §&-§(param1:§3Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§2!x§ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr67);
               }
               addr80:
            }
            while(true)
            {
               param1.§&-§(this.§2!x§);
               §§goto(addr80);
            }
         }
         addr67:
         while(true)
         {
            this.§2!x§ = null;
            if(_loc2_ || _loc3_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §`?§(param1:§3Q§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            if(!this.§2!x§)
            {
               if(_loc8_)
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(!_loc7_)
            {
               §§push(this.§>!!§);
               loop0:
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  addr97:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr68);
            }
            var _loc6_:b2Vec2 = b2Math.§9N§(param3.position,param2.position);
            if(_loc8_ || param3)
            {
               param1.§ c§(this.§2!x§,this.§5"&§,_loc6_);
            }
            return;
         }
         addr29:
      }
   }
}
