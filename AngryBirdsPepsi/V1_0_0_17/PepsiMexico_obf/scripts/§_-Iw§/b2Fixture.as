package §_-Iw§
{
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2MassData;
   import §_-Kt§.b2Shape;
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-lh§.b2internal;
   import §_-qg§.§_-nW§;
   import §_-qg§.b2AABB;
   import §_-qg§.b2RayCastInput;
   import §_-qg§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-NJ§:b2MassData;
      
      b2internal var §_-xI§:b2AABB;
      
      b2internal var §_-9V§:Number;
      
      b2internal var §_-NA§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-o6§:b2Shape;
      
      b2internal var § null§:Number;
      
      b2internal var §_-dl§:Number;
      
      b2internal var §_-ev§;
      
      b2internal var §_-el§:b2FilterData;
      
      b2internal var §_-VZ§:Boolean;
      
      b2internal var §_-OB§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-el§ = new b2FilterData();
         super();
         if(_loc2_)
         {
            this.§_-xI§ = new b2AABB();
            if(_loc2_ || _loc2_)
            {
               this.§_-OB§ = null;
               if(_loc2_ || this)
               {
                  §§goto(addr50);
               }
               §§goto(addr58);
            }
            addr50:
            this.m_body = null;
            if(_loc2_)
            {
               addr55:
               this.§_-NA§ = null;
               addr58:
               this.§_-o6§ = null;
               this.§_-9V§ = 0;
               this.§ null§ = 0;
               this.§_-dl§ = 0;
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §_-ww§() : int
      {
         return this.§_-o6§.§_-ww§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-o6§;
      }
      
      public function §_-uP§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§_-VZ§ == param1)
            {
               if(_loc6_)
               {
                  return;
               }
               §§goto(addr48);
            }
            else
            {
               this.§_-VZ§ = param1;
               if(!(_loc7_ && _loc2_))
               {
                  addr48:
                  §§push(this.m_body);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           addr67:
                           §§push(this.m_body);
                        }
                     }
                     §§goto(addr67);
                  }
                  var _loc2_:b2ContactEdge = §§pop().§_-Xi§();
                  for(; _loc2_; _loc2_ = _loc2_.§_-Jr§)
                  {
                     _loc3_ = _loc2_.§_-bX§;
                     _loc4_ = _loc3_.§_-8S§();
                     _loc5_ = _loc3_.§_-16§();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_ == this);
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!_loc7_)
                              {
                                 addr110:
                                 if(_loc5_ != this)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 §§push(_loc4_.§_-YU§());
                                 if(_loc6_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc7_)
                                    {
                                       addr128:
                                       if(!§§pop())
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr137:
                                             §§pop();
                                             addr138:
                                             §§push(_loc5_.§_-YU§());
                                             if(_loc7_ && _loc3_)
                                             {
                                             }
                                             addr155:
                                             §§pop().§_-uP§(§§pop());
                                             continue;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     §§goto(addr110);
                  }
                  return;
               }
            }
            addr66:
            return;
         }
         §§goto(addr67);
      }
      
      public function §_-YU§() : Boolean
      {
         return this.§_-VZ§;
      }
      
      public function §_-9A§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§_-el§ = param1.Copy();
            if(!(_loc7_ && _loc3_))
            {
               §§goto(addr40);
            }
            §§goto(addr52);
         }
         addr40:
         §§push(this.m_body);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(!(_loc7_ && param1))
               {
                  addr52:
                  return;
               }
            }
            §§push(this.m_body);
         }
         var _loc2_:b2ContactEdge = §§pop().§_-Xi§();
         for(; _loc2_; _loc2_ = _loc2_.§_-Jr§)
         {
            _loc3_ = _loc2_.§_-bX§;
            _loc4_ = _loc3_.§_-8S§();
            _loc5_ = _loc3_.§_-16§();
            if(_loc6_ || _loc2_)
            {
               §§push(_loc4_ == this);
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§pop();
                        addr121:
                        if(!_loc7_)
                        {
                           §§push(_loc5_ == this);
                        }
                        _loc3_.§_-om§();
                        continue;
                     }
                  }
               }
               if(!§§pop())
               {
                  continue;
               }
               if(!(_loc6_ || this))
               {
                  continue;
               }
            }
            §§goto(addr121);
         }
      }
      
      public function §_-ys§() : b2FilterData
      {
         return this.§_-el§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-tx§() : b2Fixture
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-OB§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-o6§.TestPoint(this.m_body.§_-ZO§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-o6§.RayCast(param1,param2,this.m_body.§_-ZO§());
      }
      
      public function §_-vR§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr44);
            }
            this.§_-o6§.ComputeMass(param1,this.§_-9V§);
         }
         addr44:
         return param1;
      }
      
      public function §_-lI§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-9V§ = param1;
         }
      }
      
      public function §_-0I§() : Number
      {
         return this.§_-9V§;
      }
      
      public function §_-zC§() : Number
      {
         return this.§ null§;
      }
      
      public function §_-FW§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ null§ = param1;
         }
      }
      
      public function §_-J0§() : Number
      {
         return this.§_-dl§;
      }
      
      public function §_-6X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-dl§ = param1;
         }
      }
      
      public function §_-SE§() : b2AABB
      {
         return this.§_-xI§;
      }
      
      b2internal function §_-xO§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-OB§ = param3.§_-Vb§;
            if(_loc4_ || this)
            {
               this.§ null§ = param3.friction;
               if(_loc4_)
               {
                  addr32:
                  this.§_-dl§ = param3.restitution;
                  this.m_body = param1;
                  if(!_loc5_)
                  {
                     this.§_-NA§ = null;
                     if(_loc4_ || param2)
                     {
                        addr58:
                        this.§_-el§ = param3.filter.Copy();
                     }
                     this.§_-VZ§ = param3.§_-n0§;
                     if(!(_loc5_ && param2))
                     {
                        addr81:
                        this.§_-o6§ = param3.shape.Copy();
                        this.§_-9V§ = param3.density;
                     }
                     return;
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr58);
         }
         §§goto(addr32);
      }
      
      b2internal function §_-2A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-o6§ = null;
         }
      }
      
      b2internal function §_-mf§(param1:§_-nW§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§_-o6§.ComputeAABB(this.§_-xI§,param2);
            if(_loc4_)
            {
               this.§_-ev§ = param1.§_-mf§(this.§_-xI§,this);
            }
         }
      }
      
      b2internal function §_-aV§(param1:§_-nW§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§_-ev§ == null)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr50:
               this.§_-ev§ = null;
            }
            else
            {
               addr44:
               param1.§_-aV§(this.§_-ev§);
               if(_loc3_)
               {
                  §§goto(addr50);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      b2internal function §_-GT§(param1:§_-nW§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(!this.§_-ev§)
            {
               if(!_loc8_)
               {
                  §§goto(addr20);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(_loc7_)
            {
               §§push(this.§_-o6§);
               if(_loc7_ || param3)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  if(_loc7_)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr59);
               }
               addr54:
               this.§_-o6§.ComputeAABB(_loc5_,param3);
               §§goto(addr52);
            }
            addr52:
            if(_loc7_)
            {
               addr59:
               this.§_-xI§.§_-ot§(_loc4_,_loc5_);
            }
            var _loc6_:b2Vec2 = b2Math.§_-TD§(param3.position,param2.position);
            if(_loc7_ || param2)
            {
               param1.§_-Se§(this.§_-ev§,this.§_-xI§,_loc6_);
            }
            return;
         }
         addr20:
      }
   }
}
