package §"J§
{
   import §%4§.§0w§;
   import §%4§.b2AABB;
   import §%4§.b2RayCastInput;
   import §%4§.b2RayCastOutput;
   import §2k§.b2MassData;
   import §2k§.b2Shape;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §<!N§:b2MassData;
      
      b2internal var §%C§:b2AABB;
      
      b2internal var §-k§:Number;
      
      b2internal var §7!'§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#o§:b2Shape;
      
      b2internal var §+E§:Number;
      
      b2internal var §%9§:Number;
      
      b2internal var §<"3§;
      
      b2internal var §3!8§:b2FilterData;
      
      b2internal var §"s§:Boolean;
      
      b2internal var §5![§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§3!8§ = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§%C§ = new b2AABB();
                  while(true)
                  {
                     this.§5![§ = null;
                     loop3:
                     while(true)
                     {
                        this.m_body = null;
                        while(true)
                        {
                           this.§7!'§ = null;
                           addr110:
                           while(true)
                           {
                              this.§#o§ = null;
                              continue loop1;
                           }
                           addr79:
                           if(_loc1_ || _loc2_)
                           {
                              this.§+E§ = 0;
                              continue loop3;
                           }
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr72);
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§-k§ = 0;
               §§goto(addr77);
            }
         }
         §§goto(addr72);
      }
      
      public function §;!F§() : int
      {
         return this.§#o§.§;!F§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#o§;
      }
      
      public function §#p§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc6_ && this))
         {
            if(this.§"s§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§"s§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(!_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc7_)
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(_loc7_ || param1)
                              {
                                 break loop0;
                              }
                              addr67:
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                           else if(false)
                           {
                              continue loop0;
                           }
                        }
                        §§push(this.m_body);
                        break;
                     }
                     break;
                  }
                  var _loc2_:b2ContactEdge = §§pop().§3!$§();
                  for(; _loc2_; _loc2_ = _loc2_.§>"2§)
                  {
                     _loc3_ = _loc2_.§6M§;
                     _loc4_ = _loc3_.§&!K§();
                     _loc5_ = _loc3_.§ 1§();
                     if(_loc7_ || param1)
                     {
                        §§push(_loc4_ == this);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr118:
                                 §§pop();
                                 addr132:
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(_loc5_ == this);
                                 }
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(_loc4_.§;!g§());
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          addr147:
                                          if(!§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                §§pop();
                                                addr157:
                                                §§push(_loc5_.§;!g§());
                                                if(_loc6_)
                                                {
                                                }
                                                addr172:
                                                §§pop().§#p§(§§pop());
                                                continue;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr157);
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
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr118);
                  }
                  return;
               }
               if(!_loc6_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §;!g§() : Boolean
      {
         return this.§"s§;
      }
      
      public function §#!v§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            this.§3!8§ = param1.Copy();
            if(!_loc7_)
            {
               §§goto(addr33);
            }
            §§goto(addr41);
         }
         addr33:
         §§push(this.m_body);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(!_loc7_)
               {
                  return;
               }
               addr41:
               §§push(this.m_body);
            }
            §§goto(addr41);
         }
         var _loc2_:b2ContactEdge = §§pop().§3!$§();
         for(; _loc2_; _loc2_ = _loc2_.§>"2§)
         {
            _loc3_ = _loc2_.§6M§;
            _loc4_ = _loc3_.§&!K§();
            _loc5_ = _loc3_.§ 1§();
            if(_loc6_)
            {
               §§push(_loc4_ == this);
               if(_loc6_)
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
                        addr84:
                        §§push(_loc5_ == this);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc7_ && this))
                  {
                     _loc3_.§"N§();
                  }
               }
               continue;
            }
            §§goto(addr84);
         }
      }
      
      public function §9"1§() : b2FilterData
      {
         return this.§3!8§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §7"3§() : b2Fixture
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5![§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#o§.TestPoint(this.m_body.§60§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#o§.RayCast(param1,param2,this.m_body.§60§());
      }
      
      public function §!!o§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  param1 = new b2MassData();
                  addr52:
                  this.§#o§.ComputeMass(param1,this.§-k§);
                  addr38:
               }
               return param1;
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
      
      public function §5`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-k§ = param1;
         }
      }
      
      public function §^3§() : Number
      {
         return this.§-k§;
      }
      
      public function §4y§() : Number
      {
         return this.§+E§;
      }
      
      public function §!!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+E§ = param1;
         }
      }
      
      public function §#!_§() : Number
      {
         return this.§%9§;
      }
      
      public function §1!2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%9§ = param1;
         }
      }
      
      public function §1!x§() : b2AABB
      {
         return this.§%C§;
      }
      
      b2internal function §`!P§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§5![§ = param3.§ S§;
            while(true)
            {
               this.§+E§ = param3.friction;
               loop1:
               while(true)
               {
                  this.§%9§ = param3.restitution;
                  while(true)
                  {
                     this.m_body = param1;
                     continue loop1;
                     addr75:
                     if(!(_loc4_ && this))
                     {
                        this.§#o§ = param3.shape.Copy();
                        do
                        {
                           if(_loc5_ || param3)
                           {
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 addr58:
                                 if(!(_loc5_ || param3))
                                 {
                                    break;
                                 }
                                 §§goto(addr75);
                              }
                              else
                              {
                                 while(_loc5_)
                                 {
                                    this.§"s§ = param3.§]K§;
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    this.§3!8§ = param3.filter.Copy();
                                    §§goto(addr89);
                                 }
                                 addr89:
                                 addr96:
                              }
                           }
                           continue loop1;
                        }
                        while(this.§-k§ = param3.density, !(_loc5_ || param3));
                        
                        return;
                        addr36:
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      b2internal function §3!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§#o§ = null;
         }
      }
      
      b2internal function §1S§(param1:§0w§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§#o§.ComputeAABB(this.§%C§,param2);
            do
            {
               this.§<"3§ = param1.§1S§(this.§%C§,this);
            }
            while(!_loc3_);
            
         }
      }
      
      b2internal function §`q§(param1:§0w§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§<"3§ != null)
            {
               do
               {
                  param1.§`q§(this.§<"3§);
                  do
                  {
                     this.§<"3§ = null;
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(_loc2_);
               
               if(!(_loc2_ && param1))
               {
                  return;
                  addr59:
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      b2internal function §0Z§(param1:§0w§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            if(!this.§<"3§)
            {
               if(!_loc8_)
               {
                  §§goto(addr28);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(_loc7_ || param3)
            {
               §§push(this.§#o§);
               loop0:
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop1:
                  while(true)
                  {
                     addr67:
                     while(true)
                     {
                        §§push(this.§#o§);
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§pop().ComputeAABB(_loc5_,param3);
                        do
                        {
                           this.§%C§.§^!%§(_loc4_,_loc5_);
                        }
                        while(_loc8_);
                        
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr67);
            }
            var _loc6_:b2Vec2 = b2Math.§ !r§(param3.position,param2.position);
            if(!_loc8_)
            {
               param1.§4#§(this.§<"3§,this.§%C§,_loc6_);
            }
            return;
         }
         addr28:
      }
   }
}
