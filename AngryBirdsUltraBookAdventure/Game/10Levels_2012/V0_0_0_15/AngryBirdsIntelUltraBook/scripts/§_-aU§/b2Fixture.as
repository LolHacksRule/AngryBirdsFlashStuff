package §_-aU§
{
   import §_-03n§.b2MassData;
   import §_-03n§.b2Shape;
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-5§.b2internal;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.§_-We§;
   import §_-gE§.b2AABB;
   import §_-gE§.b2RayCastInput;
   import §_-gE§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-zG§:b2MassData;
      
      b2internal var §_-bn§:b2AABB;
      
      b2internal var §_-9C§:Number;
      
      b2internal var §_-oz§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-JV§:b2Shape;
      
      b2internal var §_-ns§:Number;
      
      b2internal var §_-O9§:Number;
      
      b2internal var §_-Xg§;
      
      b2internal var §_-Qj§:b2FilterData;
      
      b2internal var §_-n9§:Boolean;
      
      b2internal var §_-oP§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-Qj§ = new b2FilterData();
            while(true)
            {
               super();
               loop4:
               while(!(_loc2_ && _loc1_))
               {
                  this.§_-oz§ = null;
                  loop5:
                  while(true)
                  {
                     this.§_-JV§ = null;
                     loop6:
                     while(true)
                     {
                        this.§_-9C§ = 0;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           this.§_-ns§ = 0;
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    addr50:
                                    if(!(_loc1_ || this))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop6;
                           }
                           while(_loc1_ || _loc2_)
                           {
                              this.m_body = null;
                              continue loop4;
                              §§goto(addr50);
                           }
                           while(true)
                           {
                              this.§_-oP§ = null;
                              §§goto(addr113);
                           }
                           addr113:
                           if(!(_loc2_ && this))
                           {
                              return;
                           }
                        }
                        addr130:
                        while(true)
                        {
                           this.§_-bn§ = new b2AABB();
                           §§goto(addr126);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public function §_-oF§() : int
      {
         return this.§_-JV§.§_-oF§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-JV§;
      }
      
      public function §_-Jq§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_ || this)
         {
            if(this.§_-n9§ == param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
               while(true)
               {
               }
               addr67:
            }
            loop1:
            while(true)
            {
               this.§_-n9§ = param1;
               while(true)
               {
                  §§push(this.m_body);
                  if(_loc7_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              return;
                           }
                           continue;
                        }
                        if(!_loc6_)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr48:
                        }
                        else
                        {
                           §§goto(addr67);
                        }
                     }
                     §§push(this.m_body);
                     break;
                  }
                  break;
               }
               var _loc2_:b2ContactEdge = §§pop().§_-qw§();
               for(; _loc2_; _loc2_ = _loc2_.§_-Oh§)
               {
                  _loc3_ = _loc2_.§_-20§;
                  _loc4_ = _loc3_.§_-k-§();
                  _loc5_ = _loc3_.§_-7G§();
                  if(_loc7_ || this)
                  {
                     §§push(_loc4_ == this);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 continue;
                              }
                              addr121:
                              §§push(_loc5_ == this);
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        §§push(_loc4_.§_-07V§());
                        if(_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§pop();
                                    addr157:
                                    §§push(_loc5_.§_-07V§());
                                    if(_loc6_ && _loc3_)
                                    {
                                    }
                                    addr167:
                                    §§pop().§_-Jq§(§§pop());
                                    continue;
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr121);
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §_-07V§() : Boolean
      {
         return this.§_-n9§;
      }
      
      public function §_-fL§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_ || param1)
         {
            this.§_-Qj§ = param1.Copy();
            if(_loc6_ || _loc2_)
            {
               §§goto(addr43);
            }
            §§goto(addr65);
         }
         addr43:
         §§push(this.m_body);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(_loc6_ || param1)
               {
                  addr65:
                  return;
               }
            }
            §§push(this.m_body);
         }
         var _loc2_:b2ContactEdge = §§pop().§_-qw§();
         for(; _loc2_; _loc2_ = _loc2_.§_-Oh§)
         {
            _loc3_ = _loc2_.§_-20§;
            _loc4_ = _loc3_.§_-k-§();
            _loc5_ = _loc3_.§_-7G§();
            if(_loc7_)
            {
               continue;
            }
            §§push(_loc4_ == this);
            if(_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     addr106:
                     §§pop();
                     if(_loc6_)
                     {
                        addr112:
                        if(_loc5_ != this)
                        {
                           continue;
                        }
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                     }
                     _loc3_.§_-FN§();
                     continue;
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr106);
         }
      }
      
      public function §_-et§() : b2FilterData
      {
         return this.§_-Qj§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-02g§() : b2Fixture
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-oP§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-JV§.TestPoint(this.m_body.§_-tg§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-JV§.RayCast(param1,param2,this.m_body.§_-tg§());
      }
      
      public function §_-N5§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr38:
                  param1 = new b2MassData();
                  addr42:
                  this.§_-JV§.ComputeMass(param1,this.§_-9C§);
               }
               return param1;
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      public function §_-xg§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-9C§ = param1;
         }
      }
      
      public function §_-G-§() : Number
      {
         return this.§_-9C§;
      }
      
      public function §_-8c§() : Number
      {
         return this.§_-ns§;
      }
      
      public function §_-04G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ns§ = param1;
         }
      }
      
      public function §_-LZ§() : Number
      {
         return this.§_-O9§;
      }
      
      public function §_-in§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-O9§ = param1;
         }
      }
      
      public function override() : b2AABB
      {
         return this.§_-bn§;
      }
      
      b2internal function §_-xb§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§_-oP§ = param3.§_-05u§;
            loop0:
            while(true)
            {
               this.§_-ns§ = param3.friction;
               loop1:
               while(true)
               {
                  this.§_-O9§ = param3.restitution;
                  while(true)
                  {
                     this.m_body = param1;
                     while(true)
                     {
                        this.§_-oz§ = null;
                        while(_loc5_)
                        {
                           if(_loc5_)
                           {
                              this.§_-Qj§ = param3.filter.Copy();
                              while(!(_loc4_ && this))
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     addr63:
                     loop6:
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           this.§_-JV§ = param3.shape.Copy();
                           while(!(_loc4_ && param1))
                           {
                              this.§_-9C§ = param3.density;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr33);
                              }
                              else
                              {
                                 §§goto(addr77);
                              }
                           }
                           continue loop6;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      b2internal function §_-01§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-JV§ = null;
         }
      }
      
      b2internal function §_-7Y§(param1:§_-We§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-JV§.ComputeAABB(this.§_-bn§,param2);
            do
            {
               this.§_-Xg§ = param1.§_-7Y§(this.§_-bn§,this);
            }
            while(_loc3_);
            
         }
      }
      
      b2internal function §_-yw§(param1:§_-We§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-Xg§ == null)
            {
               if(!_loc3_)
               {
                  return;
               }
               addr55:
               while(true)
               {
               }
               addr55:
            }
            while(true)
            {
               param1.§_-yw§(this.§_-Xg§);
               while(_loc2_)
               {
                  this.§_-Xg§ = null;
                  if(_loc2_)
                  {
                     return;
                  }
               }
               §§goto(addr55);
            }
         }
         §§goto(addr55);
      }
      
      b2internal function §_-OO§(param1:§_-We§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            if(!this.§_-Xg§)
            {
               if(_loc8_ || param2)
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(!(_loc7_ && param3))
         {
            §§push(this.§_-JV§);
            loop0:
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
               addr102:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr71);
         }
         var _loc6_:b2Vec2 = b2Math.§_-DO§(param3.position,param2.position);
         if(_loc8_ || param2)
         {
            param1.§_-BG§(this.§_-Xg§,this.§_-bn§,_loc6_);
         }
      }
   }
}
