package § D§
{
   import §&!-§.§>D§;
   import §&!-§.b2AABB;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §0!'§.b2MassData;
   import §0!'§.b2Shape;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §3o§:b2MassData;
      
      b2internal var §@!$§:b2AABB;
      
      b2internal var §&-§:Number;
      
      b2internal var §7n§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §>!C§:b2Shape;
      
      b2internal var §^M§:Number;
      
      b2internal var §!!+§:Number;
      
      b2internal var §"!X§;
      
      b2internal var §!!4§:b2FilterData;
      
      b2internal var §]f§:Boolean;
      
      b2internal var §>a§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§!!4§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§@!$§ = new b2AABB();
                  loop2:
                  while(true)
                  {
                     this.§>a§ = null;
                     loop3:
                     while(!_loc1_)
                     {
                        this.m_body = null;
                        while(true)
                        {
                           this.§7n§ = null;
                           loop6:
                           for(; _loc2_ || this; while(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 this.§!!+§ = 0;
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr35);
                                 continue;
                              }
                              continue loop0;
                           })
                           {
                              this.§&-§ = 0;
                              while(true)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       this.§^M§ = 0;
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 addr109:
                                 while(true)
                                 {
                                    this.§>!C§ = null;
                                    continue loop6;
                                 }
                                 addr35:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §0!@§() : int
      {
         return this.§>!C§.§0!@§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§>!C§;
      }
      
      public function §#!<§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_ || this)
         {
            if(this.§]f§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§]f§ = param1;
                  loop1:
                  while(_loc6_)
                  {
                     while(true)
                     {
                        §§push(this.m_body);
                        if(_loc6_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc7_)
                              {
                                 return;
                              }
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue loop0;
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
                     var _loc2_:b2ContactEdge = §§pop().§=!-§();
                     for(; _loc2_; _loc2_ = _loc2_.§0e§)
                     {
                        _loc3_ = _loc2_.§58§;
                        _loc4_ = _loc3_.§5J§();
                        _loc5_ = _loc3_.§@!X§();
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(_loc4_ == this);
                           if(!(_loc7_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§pop();
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    addr130:
                                    §§push(_loc5_ == this);
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              §§push(_loc4_.§0?§());
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc6_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop();
                                          addr166:
                                          §§push(_loc5_.§0?§());
                                          if(_loc7_)
                                          {
                                          }
                                          addr171:
                                          §§pop().§#!<§(§§pop());
                                          continue;
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr130);
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §0?§() : Boolean
      {
         return this.§]f§;
      }
      
      public function §]_§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc7_ && _loc2_))
         {
            this.§!!4§ = param1.Copy();
            if(!_loc7_)
            {
               §§push(this.m_body);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr45);
                     }
                     else
                     {
                        addr46:
                        §§push(this.m_body);
                     }
                  }
                  §§goto(addr46);
               }
               var _loc2_:b2ContactEdge = §§pop().§=!-§();
               for(; _loc2_; _loc2_ = _loc2_.§0e§)
               {
                  _loc3_ = _loc2_.§58§;
                  _loc4_ = _loc3_.§5J§();
                  _loc5_ = _loc3_.§@!X§();
                  if(!_loc7_)
                  {
                     §§push(_loc4_ == this);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              §§pop();
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              addr109:
                              §§push(_loc5_ == this);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc7_ && this))
                        {
                           _loc3_.§?d§();
                        }
                     }
                     continue;
                  }
                  §§goto(addr109);
               }
               return;
            }
            §§goto(addr46);
         }
         addr45:
      }
      
      public function §[J§() : b2FilterData
      {
         return this.§!!4§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §2!g§() : b2Fixture
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>a§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§>!C§.TestPoint(this.m_body.§+!C§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§>!C§.RayCast(param1,param2,this.m_body.§+!C§());
      }
      
      public function § !^§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  addr33:
                  param1 = new b2MassData();
                  addr37:
                  this.§>!C§.ComputeMass(param1,this.§&-§);
               }
               return param1;
            }
            §§goto(addr37);
         }
         §§goto(addr33);
      }
      
      public function §%!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&-§ = param1;
         }
      }
      
      public function §"P§() : Number
      {
         return this.§&-§;
      }
      
      public function §&w§() : Number
      {
         return this.§^M§;
      }
      
      public function §>!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^M§ = param1;
         }
      }
      
      public function §,O§() : Number
      {
         return this.§!!+§;
      }
      
      public function §9D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!+§ = param1;
         }
      }
      
      public function §!A§() : b2AABB
      {
         return this.§@!$§;
      }
      
      b2internal function §5=§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§>a§ = param3.§1o§;
            loop0:
            while(true)
            {
               this.§^M§ = param3.friction;
               while(true)
               {
                  this.§!!+§ = param3.restitution;
                  loop2:
                  while(true)
                  {
                     this.m_body = param1;
                     loop3:
                     while(true)
                     {
                        this.§7n§ = null;
                        loop4:
                        while(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           this.§!!4§ = param3.filter.Copy();
                           while(true)
                           {
                              this.§]f§ = param3.each;
                              addr62:
                              if(_loc5_ || param3)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      b2internal function §"L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§>!C§ = null;
         }
      }
      
      b2internal function §2!9§(param1:§>D§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§>!C§.ComputeAABB(this.§@!$§,param2);
         }
         do
         {
            this.§"!X§ = param1.§2!9§(this.§@!$§,this);
         }
         while(!(_loc3_ || param1));
         
      }
      
      b2internal function §"!=§(param1:§>D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§"!X§ == null)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr75);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr58);
                  }
               }
            }
            addr58:
            while(true)
            {
               param1.§"!=§(this.§"!X§);
               do
               {
                  this.§"!X§ = null;
               }
               while(_loc2_ && _loc2_);
               
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr75:
      }
      
      b2internal function §^o§(param1:§>D§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            if(!this.§"!X§)
            {
               if(!(_loc7_ && param1))
               {
                  §§goto(addr34);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(!_loc7_)
            {
               §§push(this.§>!C§);
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.§>!C§);
                     if(!(_loc8_ || param2))
                     {
                        break;
                     }
                     §§pop().ComputeAABB(_loc5_,param3);
                     do
                     {
                        this.§@!$§.§"!#§(_loc4_,_loc5_);
                     }
                     while(_loc7_ && this);
                     
                     if(_loc8_)
                     {
                        if(true)
                        {
                           var _loc6_:b2Vec2 = b2Math.§>G§(param3.position,param2.position);
                           if(!(_loc7_ && param2))
                           {
                              param1.§5!O§(this.§"!X§,this.§@!$§,_loc6_);
                           }
                        }
                        continue;
                        return;
                     }
                     addr102:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         addr34:
      }
   }
}
