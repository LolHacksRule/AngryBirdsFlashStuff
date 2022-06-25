package §1%§
{
   import §,X§.b2MassData;
   import §,X§.b2Shape;
   import §8!H§.b2internal;
   import §>s§.b2Contact;
   import §>s§.b2ContactEdge;
   import §?!&§.b2Math;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import §`!H§.§>u§;
   import §`!H§.b2AABB;
   import §`!H§.b2RayCastInput;
   import §`!H§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §?!1§:b2MassData;
      
      b2internal var §,L§:b2AABB;
      
      b2internal var §9Y§:Number;
      
      b2internal var §!J§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §;!j§:b2Shape;
      
      b2internal var §,!i§:Number;
      
      b2internal var §"4§:Number;
      
      b2internal var §#F§;
      
      b2internal var §]9§:b2FilterData;
      
      b2internal var §?e§:Boolean;
      
      b2internal var §#!I§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]9§ = new b2FilterData();
            while(true)
            {
               super();
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§,L§ = new b2AABB();
                     loop3:
                     while(true)
                     {
                        this.§#!I§ = null;
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
                              this.§!J§ = null;
                              loop6:
                              while(true)
                              {
                                 this.§;!j§ = null;
                                 while(true)
                                 {
                                    this.§9Y§ = 0;
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
      
      public function §3r§() : int
      {
         return this.§;!j§.§3r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§;!j§;
      }
      
      public function §1[§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc6_)
         {
            if(this.§?e§ == param1)
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
                        this.§?e§ = param1;
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
                        var _loc2_:b2ContactEdge = §§pop().§"!c§();
                        for(; _loc2_; _loc2_ = _loc2_.§86§)
                        {
                           _loc3_ = _loc2_.§#!#§;
                           _loc4_ = _loc3_.§%! §();
                           _loc5_ = _loc3_.§4#§();
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
                                             §§push(_loc4_.§@!L§());
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
                                                         §§push(_loc5_.§@!L§());
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                         }
                                                         addr188:
                                                         §§pop().§1[§(§§pop());
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
      
      public function §@!L§() : Boolean
      {
         return this.§?e§;
      }
      
      public function §,!5§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc7_)
         {
            this.§]9§ = param1.Copy();
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
               var _loc2_:b2ContactEdge = §§pop().§"!c§();
               for(; _loc2_; _loc2_ = _loc2_.§86§)
               {
                  _loc3_ = _loc2_.§#!#§;
                  _loc4_ = _loc3_.§%! §();
                  _loc5_ = _loc3_.§4#§();
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
                              _loc3_.§+! §();
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
      
      public function §3y§() : b2FilterData
      {
         return this.§]9§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5<§() : b2Fixture
      {
         return this.§!J§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!I§;
      }
      
      public function §^!T§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!I§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§;!j§.TestPoint(this.m_body.§?Q§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§;!j§.RayCast(param1,param2,this.m_body.§?Q§());
      }
      
      public function §+T§(param1:b2MassData = null) : b2MassData
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
            this.§;!j§.ComputeMass(param1,this.§9Y§);
         }
         addr54:
         return param1;
      }
      
      public function §`!9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9Y§ = param1;
         }
      }
      
      public function §97§() : Number
      {
         return this.§9Y§;
      }
      
      public function §]!G§() : Number
      {
         return this.§,!i§;
      }
      
      public function §"X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!i§ = param1;
         }
      }
      
      public function §#!N§() : Number
      {
         return this.§"4§;
      }
      
      public function §%!H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"4§ = param1;
         }
      }
      
      public function §6k§() : b2AABB
      {
         return this.§,L§;
      }
      
      b2internal function §;!]§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§#!I§ = param3.§#!`§;
            while(true)
            {
               this.§,!i§ = param3.friction;
               addr114:
               while(_loc4_)
               {
                  this.§"4§ = param3.restitution;
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
               this.§!J§ = null;
               loop4:
               while(true)
               {
                  this.§]9§ = param3.filter.Copy();
                  loop5:
                  while(!_loc5_)
                  {
                     this.§?e§ = param3.§3!&§;
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           this.§;!j§ = param3.shape.Copy();
                           while(_loc4_)
                           {
                              continue loop4;
                              this.§9Y§ = param3.density;
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
      
      b2internal function §"!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§;!j§ = null;
         }
      }
      
      b2internal function §'R§(param1:§>u§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;!j§.ComputeAABB(this.§,L§,param2);
         }
         do
         {
            this.§#F§ = param1.§'R§(this.§,L§,this);
         }
         while(!(_loc3_ || param1));
         
      }
      
      b2internal function §^!B§(param1:§>u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§#F§ != null)
            {
               do
               {
                  param1.§^!B§(this.§#F§);
                  do
                  {
                     this.§#F§ = null;
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
      
      b2internal function §6L§(param1:§>u§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§#F§)
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
            §§push(this.§;!j§);
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
            this.§,L§.§[u§(_loc4_,_loc5_);
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
         var _loc6_:b2Vec2 = b2Math.§0l§(param3.position,param2.position);
         if(!(_loc8_ && param1))
         {
            param1.§5N§(this.§#F§,this.§,L§,_loc6_);
         }
      }
   }
}
