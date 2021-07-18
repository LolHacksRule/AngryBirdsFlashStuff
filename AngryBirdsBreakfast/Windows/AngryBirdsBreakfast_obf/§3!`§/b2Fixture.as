package §3!`§
{
   import §"y§.b2MassData;
   import §"y§.b2Shape;
   import §'F§.b2internal;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.§`c§;
   import §^9§.b2AABB;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §=H§:b2MassData;
      
      b2internal var §#M§:b2AABB;
      
      b2internal var §;h§:Number;
      
      b2internal var §0!>§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2"#§:b2Shape;
      
      b2internal var §,e§:Number;
      
      b2internal var §"k§:Number;
      
      b2internal var §1! §;
      
      b2internal var §7"#§:b2FilterData;
      
      b2internal var §>=§:Boolean;
      
      b2internal var § D§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7"#§ = new b2FilterData();
            while(true)
            {
               super();
               addr131:
               while(true)
               {
                  this.§#M§ = new b2AABB();
               }
               addr72:
               if(!(_loc1_ && _loc1_))
               {
                  this.§"k§ = 0;
                  addr79:
                  if(!_loc2_)
                  {
                     loop8:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 addr46:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr53:
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr72);
                                    }
                                    while(true)
                                    {
                                       this.m_body = null;
                                       §§goto(addr53);
                                    }
                                    addr111:
                                 }
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    this.§0!>§ = null;
                                    §§goto(addr46);
                                 }
                                 while(true)
                                 {
                                    this.§ D§ = null;
                                    §§goto(addr111);
                                    §§goto(addr99);
                                 }
                                 addr99:
                                 addr127:
                              }
                              while(true)
                              {
                                 this.§2"#§ = null;
                              }
                           }
                           while(true)
                           {
                              this.§;h§ = 0;
                           }
                        }
                        while(true)
                        {
                           this.§,e§ = 0;
                           continue loop8;
                        }
                     }
                     §§goto(addr131);
                  }
                  return;
               }
            }
         }
         §§goto(addr127);
      }
      
      public function §<!A§() : int
      {
         return this.§2"#§.§<!A§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2"#§;
      }
      
      public function §`!x§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            if(this.§>=§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§>=§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(!_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(!(_loc6_ && this))
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr45);
                              }
                              continue;
                           }
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           if(!_loc7_)
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
                  var _loc2_:b2ContactEdge = §§pop().§9'§();
                  for(; _loc2_; _loc2_ = _loc2_.next)
                  {
                     _loc3_ = _loc2_.§;%§;
                     _loc4_ = _loc3_.§&R§();
                     _loc5_ = _loc3_.§@!,§();
                     if(_loc7_ || param1)
                     {
                        §§push(_loc4_ == this);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 §§pop();
                                 if(_loc6_)
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
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_);
                     if(_loc7_ || param1)
                     {
                        §§push(_loc4_.§'5§());
                        if(_loc7_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc6_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    addr157:
                                    §§push(_loc5_.§'5§());
                                    if(_loc7_ || this)
                                    {
                                       addr176:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§pop().§`!x§(§§pop());
                              continue;
                           }
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr157);
                  }
                  return;
               }
            }
            return;
         }
         addr45:
      }
      
      public function §'5§() : Boolean
      {
         return this.§>=§;
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
            this.§7"#§ = param1.Copy();
            if(!_loc7_)
            {
               §§push(this.m_body);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§goto(addr40);
                     }
                     else
                     {
                        addr41:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr41);
               }
               var _loc2_:b2ContactEdge = §§pop().§9'§();
               for(; _loc2_; _loc2_ = _loc2_.next)
               {
                  _loc3_ = _loc2_.§;%§;
                  _loc4_ = _loc3_.§&R§();
                  _loc5_ = _loc3_.§@!,§();
                  if(!_loc7_)
                  {
                     §§push(_loc4_ == this);
                     if(_loc6_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr89:
                              §§push(_loc5_ == this);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           _loc3_.§<t§();
                        }
                     }
                     continue;
                  }
                  §§goto(addr89);
               }
               return;
            }
            §§goto(addr41);
         }
         addr40:
      }
      
      public function §'"0§() : b2FilterData
      {
         return this.§7"#§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>X§() : b2Fixture
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ D§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2"#§.TestPoint(this.m_body.§#%§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2"#§.RayCast(param1,param2,this.m_body.§#%§());
      }
      
      public function §9!p§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr59);
            }
            this.§2"#§.ComputeMass(param1,this.§;h§);
         }
         addr59:
         return param1;
      }
      
      public function §[r§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;h§ = param1;
         }
      }
      
      public function GetDensity() : Number
      {
         return this.§;h§;
      }
      
      public function §-!C§() : Number
      {
         return this.§,e§;
      }
      
      public function §^X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,e§ = param1;
         }
      }
      
      public function §-!^§() : Number
      {
         return this.§"k§;
      }
      
      public function §'N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"k§ = param1;
         }
      }
      
      public function §#!,§() : b2AABB
      {
         return this.§#M§;
      }
      
      b2internal function §2#§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§ D§ = param3.userData;
            while(true)
            {
               this.§,e§ = param3.friction;
            }
            addr136:
         }
         loop1:
         while(true)
         {
            this.§"k§ = param3.restitution;
            while(true)
            {
               this.m_body = param1;
               continue loop1;
               addr88:
               loop4:
               for(; _loc4_ || param1; if(_loc5_)
               {
                  continue;
               },§§goto(addr68))
               {
                  this.§7"#§ = param3.filter.Copy();
                  loop5:
                  for(; !_loc5_; if(_loc4_ || this)
                  {
                     continue loop4;
                  })
                  {
                     this.§>=§ = param3.§4F§;
                     loop6:
                     while(true)
                     {
                        this.§2"#§ = param3.shape.Copy();
                        while(true)
                        {
                           if(_loc4_ || param2)
                           {
                              continue loop5;
                           }
                           continue loop6;
                           addr68:
                           this.§;h§ = param3.density;
                           if(!_loc5_)
                           {
                              return;
                           }
                        }
                        continue loop4;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      b2internal function §5f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2"#§ = null;
         }
      }
      
      b2internal function §]!J§(param1:§`c§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§2"#§.ComputeAABB(this.§#M§,param2);
         }
         do
         {
            this.§1! § = param1.§]!J§(this.§#M§,this);
         }
         while(_loc4_);
         
      }
      
      b2internal function §5!k§(param1:§`c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§1! § == null)
            {
               if(_loc3_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr58);
               }
               addr66:
            }
            while(true)
            {
               param1.§5!k§(this.§1! §);
               §§goto(addr66);
            }
         }
         addr58:
         while(true)
         {
            this.§1! § = null;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §[!$§(param1:§`c§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            if(!this.§1! §)
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
               §§push(this.§2"#§);
               loop0:
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop1:
                  while(true)
                  {
                     addr70:
                     while(true)
                     {
                        §§push(this.§2"#§);
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§pop().ComputeAABB(_loc5_,param3);
                        do
                        {
                           if(_loc7_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        while(this.§#M§.§[!g§(_loc4_,_loc5_), !(_loc7_ || param2));
                        
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr70);
            }
            var _loc6_:b2Vec2 = b2Math.§";§(param3.position,param2.position);
            if(_loc7_ || param3)
            {
               param1.§2n§(this.§1! §,this.§#M§,_loc6_);
            }
            return;
         }
         addr28:
      }
   }
}
