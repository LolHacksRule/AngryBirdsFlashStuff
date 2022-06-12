package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §55§.b2AABB;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §<!`§.b2MassData;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var § !j§:b2MassData;
      
      b2internal var §#M§:b2AABB;
      
      b2internal var §]!l§:Number;
      
      b2internal var §%"@§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §7;§:b2Shape;
      
      b2internal var §1!S§:Number;
      
      b2internal var §6"#§:Number;
      
      b2internal var §=!;§;
      
      b2internal var §^!t§:b2FilterData;
      
      b2internal var §"!K§:Boolean;
      
      b2internal var §6r§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!t§ = new b2FilterData();
            while(true)
            {
               super();
               addr121:
               while(true)
               {
                  this.§#M§ = new b2AABB();
               }
               addr41:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§6"#§ = 0;
               addr58:
               if(_loc2_)
               {
                  if(!_loc1_)
                  {
                     if(_loc1_)
                     {
                        while(_loc2_ || this)
                        {
                           this.§%"@§ = null;
                           loop5:
                           while(true)
                           {
                              this.§7;§ = null;
                              while(true)
                              {
                                 this.§]!l§ = 0;
                                 addr63:
                                 while(_loc2_)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§6r§ = null;
                           §§goto(addr109);
                           §§goto(addr97);
                        }
                        addr97:
                        addr117:
                     }
                     return;
                  }
                  §§goto(addr63);
               }
               §§goto(addr39);
            }
         }
         §§goto(addr117);
      }
      
      public function §"r§() : int
      {
         return this.§7;§.§"r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§7;§;
      }
      
      public function §>B§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_)
         {
            if(this.§"!K§ == param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
               while(true)
               {
                  loop2:
                  while(_loc7_ || this)
                  {
                     while(true)
                     {
                        §§push(this.m_body);
                        if(_loc7_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc7_)
                              {
                                 return;
                              }
                              if(!_loc7_)
                              {
                                 continue loop2;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§"!K§ = param1;
                                    continue loop2;
                                 }
                                 addr43:
                              }
                           }
                           §§push(this.m_body);
                           break;
                        }
                        break;
                     }
                     var _loc2_:b2ContactEdge = §§pop().§0!@§();
                     for(; _loc2_; _loc2_ = _loc2_.§5"&§)
                     {
                        _loc3_ = _loc2_.§0q§;
                        _loc4_ = _loc3_.§5§();
                        _loc5_ = _loc3_.§]h§();
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc4_ == this);
                           if(_loc7_ || this)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || this)
                                 {
                                    §§pop();
                                    if(!(_loc6_ && param1))
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
                                    if(_loc7_ || param1)
                                    {
                                       §§push(_loc4_.§ !,§());
                                       if(_loc7_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc7_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   addr176:
                                                   §§pop();
                                                   §§push(_loc5_.§ !,§());
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                             }
                                          }
                                          §§pop().§>B§(§§pop());
                                          continue;
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                              }
                           }
                        }
                        §§goto(addr134);
                     }
                     return;
                  }
               }
            }
            §§goto(addr43);
         }
         §§goto(addr54);
      }
      
      public function § !,§() : Boolean
      {
         return this.§"!K§;
      }
      
      public function §0!l§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_)
         {
            this.§^!t§ = param1.Copy();
            if(_loc7_ || this)
            {
               §§goto(addr39);
            }
            §§goto(addr67);
         }
         addr39:
         §§push(this.m_body);
         if(!(_loc6_ && this))
         {
            if(§§pop())
            {
               if(_loc7_ || this)
               {
                  return;
               }
               addr67:
               §§push(this.m_body);
            }
            §§goto(addr67);
         }
         var _loc2_:b2ContactEdge = §§pop().§0!@§();
         for(; _loc2_; _loc2_ = _loc2_.§5"&§)
         {
            _loc3_ = _loc2_.§0q§;
            _loc4_ = _loc3_.§5§();
            _loc5_ = _loc3_.§]h§();
            if(_loc6_)
            {
               continue;
            }
            §§push(_loc4_ == this);
            if(_loc7_)
            {
               if(!§§pop())
               {
                  if(_loc7_ || _loc2_)
                  {
                     §§pop();
                     if(!(_loc6_ && _loc2_))
                     {
                        addr123:
                        if(_loc5_ != this)
                        {
                           continue;
                        }
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                     }
                     _loc3_.§6"F§();
                     continue;
                  }
               }
            }
            §§goto(addr123);
         }
      }
      
      public function §1!=§() : b2FilterData
      {
         return this.§^!t§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §8!+§() : b2Fixture
      {
         return this.§%"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§6r§;
      }
      
      public function §<L§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6r§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§7;§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§7;§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §3Q§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr38:
                  param1 = new b2MassData();
                  addr42:
                  this.§7;§.ComputeMass(param1,this.§]!l§);
               }
               return param1;
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      public function §1"0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]!l§ = param1;
         }
      }
      
      public function §`""§() : Number
      {
         return this.§]!l§;
      }
      
      public function §0o§() : Number
      {
         return this.§1!S§;
      }
      
      public function §[!<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!S§ = param1;
         }
      }
      
      public function §]!g§() : Number
      {
         return this.§6"#§;
      }
      
      public function §54§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6"#§ = param1;
         }
      }
      
      public function §["#§() : b2AABB
      {
         return this.§#M§;
      }
      
      b2internal function §?!Q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§6r§ = param3.§6"&§;
            loop0:
            while(true)
            {
               this.§1!S§ = param3.friction;
               loop1:
               while(true)
               {
                  this.§6"#§ = param3.restitution;
                  loop2:
                  for(; !_loc4_; while(_loc5_ || this)
                  {
                     this.§]!l§ = param3.density;
                     if(!(_loc5_ || param2))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        addr38:
                        if(!(_loc4_ && param1))
                        {
                           return;
                        }
                        addr89:
                        addr89:
                        while(!(_loc4_ && param3))
                        {
                           this.§"!K§ = param3.§9!V§;
                           §§goto(addr38);
                        }
                        continue loop1;
                     }
                     §§goto(addr75);
                  })
                  {
                     this.m_body = param1;
                     while(true)
                     {
                        this.§%"@§ = null;
                        continue loop1;
                        addr75:
                        while(!(_loc4_ && param2))
                        {
                           this.§7;§ = param3.shape.Copy();
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§^!t§ = param3.filter.Copy();
            §§goto(addr89);
         }
      }
      
      b2internal function §'S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7;§ = null;
         }
      }
      
      b2internal function §'X§(param1:§0!K§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§7;§.ComputeAABB(this.§#M§,param2);
            do
            {
               this.§=!;§ = param1.§'X§(this.§#M§,this);
            }
            while(!_loc3_);
            
         }
      }
      
      b2internal function §,K§(param1:§0!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§=!;§ != null)
            {
               while(true)
               {
                  param1.§,K§(this.§=!;§);
                  loop1:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§=!;§ = null;
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      b2internal function §9x§(param1:§0!K§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            if(!this.§=!;§)
            {
               if(!_loc8_)
               {
                  §§goto(addr28);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(_loc7_)
            {
               §§push(this.§7;§);
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
               }
               addr93:
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(this.§7;§);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§pop().ComputeAABB(_loc5_,param3);
                  while(_loc7_ || param2)
                  {
                     this.§#M§.§[!-§(_loc4_,_loc5_);
                     if(_loc7_ || param3)
                     {
                        if(true)
                        {
                           var _loc6_:b2Vec2 = b2Math.§0!1§(param3.position,param2.position);
                           if(_loc7_ || param3)
                           {
                              param1.§"!,§(this.§=!;§,this.§#M§,_loc6_);
                           }
                        }
                        continue loop2;
                        return;
                     }
                  }
                  continue loop1;
               }
               §§goto(addr93);
            }
         }
         addr28:
      }
   }
}
