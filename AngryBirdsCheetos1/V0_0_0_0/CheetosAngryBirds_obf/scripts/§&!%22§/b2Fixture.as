package §&!"§
{
   import § G§.§3!>§;
   import § G§.b2AABB;
   import § G§.b2RayCastInput;
   import § G§.b2RayCastOutput;
   import §-!C§.b2MassData;
   import §-!C§.b2Shape;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §]P§:b2MassData;
      
      b2internal var §-!B§:b2AABB;
      
      b2internal var §]V§:Number;
      
      b2internal var §0]§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §<!W§:b2Shape;
      
      b2internal var §!!F§:Number;
      
      b2internal var §#2§:Number;
      
      b2internal var §]j§;
      
      b2internal var §!5§:b2FilterData;
      
      b2internal var §=!Q§:Boolean;
      
      b2internal var § !O§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!5§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§-!B§ = new b2AABB();
                  while(_loc1_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
               loop5:
               while(true)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     continue loop0;
                  }
                  this.§0]§ = null;
                  while(true)
                  {
                     this.§<!W§ = null;
                     loop7:
                     for(; !(_loc2_ && this); while(true)
                     {
                        if(_loc1_ || this)
                        {
                           continue loop5;
                        }
                        continue loop7;
                        addr79:
                        this.§#2§ = 0;
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr29);
                     },continue loop5)
                     {
                        this.§]V§ = 0;
                        do
                        {
                           this.§!!F§ = 0;
                           continue loop7;
                        }
                        while(!(_loc1_ || _loc1_));
                        
                        §§goto(addr36);
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  addr72:
                  if(_loc1_ || this)
                  {
                     §§goto(addr79);
                  }
                  while(true)
                  {
                     this.m_body = null;
                     continue loop5;
                     §§goto(addr72);
                  }
                  addr118:
               }
            }
         }
         while(true)
         {
            this.§ !O§ = null;
            §§goto(addr118);
         }
      }
      
      public function §0!$§() : int
      {
         return this.§<!W§.§0!$§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§<!W§;
      }
      
      public function §4!N§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_)
         {
            if(this.§=!Q§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§=!Q§ = param1;
                  while(true)
                  {
                     §§push(this.m_body);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§§pop() == null)
                        {
                           if(_loc7_ || _loc2_)
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              addr66:
                              return;
                           }
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              if(false)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop0;
                              }
                              addr67:
                           }
                        }
                        §§push(this.m_body);
                        break;
                     }
                     break;
                  }
                  var _loc2_:b2ContactEdge = §§pop().§!-§();
                  for(; _loc2_; _loc2_ = _loc2_.§8L§)
                  {
                     _loc3_ = _loc2_.§^<§;
                     _loc4_ = _loc3_.§"&§();
                     _loc5_ = _loc3_.§7!Z§();
                     if(!_loc7_)
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
                              addr108:
                              §§pop();
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr119:
                                 if(_loc5_ != this)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(_loc4_.§2'§());
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_ || param1)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§pop();
                                             addr152:
                                             §§push(_loc5_.§2'§());
                                             if(!_loc7_)
                                             {
                                             }
                                             addr167:
                                             §§pop().§4!N§(§§pop());
                                             continue;
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr108);
                  }
                  return;
               }
            }
            §§goto(addr66);
         }
         §§goto(addr67);
      }
      
      public function §2'§() : Boolean
      {
         return this.§=!Q§;
      }
      
      public function §'!+§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc7_ && _loc2_))
         {
            this.§!5§ = param1.Copy();
            if(_loc6_ || _loc2_)
            {
               §§goto(addr43);
            }
            §§goto(addr51);
         }
         addr43:
         §§push(this.m_body);
         if(_loc6_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  return;
               }
               addr51:
               §§push(this.m_body);
            }
            §§goto(addr51);
         }
         var _loc2_:b2ContactEdge = §§pop().§!-§();
         for(; _loc2_; _loc2_ = _loc2_.§8L§)
         {
            _loc3_ = _loc2_.§^<§;
            _loc4_ = _loc3_.§"&§();
            _loc5_ = _loc3_.§7!Z§();
            if(!_loc7_)
            {
               §§push(_loc4_ == this);
               if(_loc6_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        addr120:
                        if(!_loc7_)
                        {
                           §§push(_loc5_ == this);
                        }
                        _loc3_.§>!A§();
                        continue;
                     }
                  }
               }
               if(!§§pop())
               {
                  continue;
               }
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
            }
            §§goto(addr120);
         }
      }
      
      public function §<!O§() : b2FilterData
      {
         return this.§!5§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §`!R§() : b2Fixture
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !O§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§<!W§.TestPoint(this.m_body.§>B§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§<!W§.RayCast(param1,param2,this.m_body.§>B§());
      }
      
      public function §-g§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  param1 = new b2MassData();
               }
               §§goto(addr58);
            }
            this.§<!W§.ComputeMass(param1,this.§]V§);
         }
         addr58:
         return param1;
      }
      
      public function §&o§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]V§ = param1;
         }
      }
      
      public function §4! §() : Number
      {
         return this.§]V§;
      }
      
      public function §0!=§() : Number
      {
         return this.§!!F§;
      }
      
      public function §"!<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!F§ = param1;
         }
      }
      
      public function §9+§() : Number
      {
         return this.§#2§;
      }
      
      public function §3-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#2§ = param1;
         }
      }
      
      public function §+P§() : b2AABB
      {
         return this.§-!B§;
      }
      
      b2internal function §?!@§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§ !O§ = param3.§7! §;
            while(true)
            {
               this.§!!F§ = param3.friction;
               loop1:
               while(_loc4_)
               {
                  this.§#2§ = param3.restitution;
                  loop2:
                  while(true)
                  {
                     this.m_body = param1;
                     loop3:
                     while(true)
                     {
                        this.§0]§ = null;
                        while(_loc4_)
                        {
                           addr69:
                           if(_loc4_ || param3)
                           {
                              if(!_loc5_)
                              {
                                 this.§<!W§ = param3.shape.Copy();
                                 while(_loc4_ || this)
                                 {
                                    this.§]V§ = param3.density;
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          return;
                                          addr37:
                                       }
                                       continue loop3;
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§=!Q§ = param3.§&4§;
                                          continue loop7;
                                       }
                                       addr85:
                                    }
                                 }
                                 addr44:
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§!5§ = param3.filter.Copy();
            §§goto(addr85);
         }
         §§goto(addr37);
      }
      
      b2internal function §4!L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!W§ = null;
         }
      }
      
      b2internal function §7=§(param1:§3!>§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<!W§.ComputeAABB(this.§-!B§,param2);
            do
            {
               this.§]j§ = param1.§7=§(this.§-!B§,this);
            }
            while(_loc4_);
            
         }
      }
      
      b2internal function §'!F§(param1:§3!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§]j§ == null)
            {
               if(!_loc3_)
               {
                  return;
               }
               addr75:
               while(true)
               {
               }
               addr75:
            }
            while(true)
            {
               param1.§'!F§(this.§]j§);
               while(!(_loc3_ && this))
               {
                  this.§]j§ = null;
                  if(_loc2_)
                  {
                     return;
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr75);
      }
      
      b2internal function §<i§(param1:§3!>§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            if(!this.§]j§)
            {
               if(!_loc7_)
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(!_loc7_)
            {
               §§push(this.§<!W§);
               loop0:
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop1:
                  while(true)
                  {
                     addr63:
                     while(true)
                     {
                        §§push(this.§<!W§);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§pop().ComputeAABB(_loc5_,param3);
                        do
                        {
                           this.§-!B§.§]!6§(_loc4_,_loc5_);
                        }
                        while(_loc7_);
                        
                        if(!_loc8_)
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
               §§goto(addr63);
            }
            var _loc6_:b2Vec2 = b2Math.§?d§(param3.position,param2.position);
            if(_loc8_)
            {
               param1.§]!T§(this.§]j§,this.§-!B§,_loc6_);
            }
            return;
         }
         addr29:
      }
   }
}
