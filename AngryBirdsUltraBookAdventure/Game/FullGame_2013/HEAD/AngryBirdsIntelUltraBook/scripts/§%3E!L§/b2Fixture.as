package §>!L§
{
   import §!m§.§"%§;
   import §!m§.b2AABB;
   import §!m§.b2RayCastInput;
   import §!m§.b2RayCastOutput;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §+!g§.b2internal;
   import §0!3§.b2MassData;
   import §0!3§.b2Shape;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §]T§:b2MassData;
      
      b2internal var §'!Y§:b2AABB;
      
      b2internal var §0A§:Number;
      
      b2internal var §,!Z§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!K§:b2Shape;
      
      b2internal var §!G§:Number;
      
      b2internal var §-%§:Number;
      
      b2internal var §;1§;
      
      b2internal var § !C§:b2FilterData;
      
      b2internal var §4!R§:Boolean;
      
      b2internal var §=f§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ !C§ = new b2FilterData();
            while(true)
            {
               super();
               addr126:
               while(true)
               {
                  this.§'!Y§ = new b2AABB();
               }
            }
            addr131:
         }
         loop2:
         while(true)
         {
            this.§=f§ = null;
            while(true)
            {
               this.m_body = null;
               loop4:
               for(; !_loc1_; if(_loc2_ || this)
               {
                  return;
               })
               {
                  if(_loc1_)
                  {
                     continue loop2;
                  }
                  this.§,!Z§ = null;
                  loop5:
                  while(true)
                  {
                     this.§2!K§ = null;
                     do
                     {
                        this.§0A§ = 0;
                        continue loop5;
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     continue loop4;
                  }
               }
            }
         }
      }
      
      public function §6!-§() : int
      {
         return this.§2!K§.§6!-§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!K§;
      }
      
      public function §,!!§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!(_loc6_ && param1))
         {
            if(this.§4!R§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§4!R§ = param1;
                  while(true)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        if(!_loc6_)
                        {
                           §§push(this.m_body);
                           if(_loc7_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       return;
                                    }
                                    continue;
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
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        addr77:
                     }
                  }
                  var _loc2_:b2ContactEdge = §§pop().§2!c§();
                  for(; _loc2_; _loc2_ = _loc2_.§<!D§)
                  {
                     _loc3_ = _loc2_.§7![§;
                     _loc4_ = _loc3_.§'$§();
                     _loc5_ = _loc3_.§<!2§();
                     if(_loc7_ || _loc2_)
                     {
                        §§push(_loc4_ == this);
                        if(_loc7_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              addr132:
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    addr147:
                                    §§push(_loc5_ == this);
                                    if(_loc7_)
                                    {
                                       addr152:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc7_ || param1))
                              {
                                 continue;
                              }
                              §§push(_loc3_);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(_loc4_.§[j§());
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§pop();
                                             addr199:
                                             §§push(_loc5_.§[j§());
                                             if(_loc7_ || this)
                                             {
                                                addr208:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                    §§pop().§,!!§(§§pop());
                                    continue;
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr147);
                  }
                  return;
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §[j§() : Boolean
      {
         return this.§4!R§;
      }
      
      public function §^B§(param1:b2FilterData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(_loc7_ || this)
         {
            this.§ !C§ = param1.Copy();
            if(_loc7_)
            {
               §§goto(addr39);
            }
            §§goto(addr47);
         }
         addr39:
         §§push(this.m_body);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  addr47:
                  return;
               }
            }
            §§push(this.m_body);
         }
         var _loc2_:b2ContactEdge = §§pop().§2!c§();
         for(; _loc2_; _loc2_ = _loc2_.§<!D§)
         {
            _loc3_ = _loc2_.§7![§;
            _loc4_ = _loc3_.§'$§();
            _loc5_ = _loc3_.§<!2§();
            if(!_loc7_)
            {
               continue;
            }
            §§push(_loc4_ == this);
            if(_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        addr114:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc5_ == this);
                           if(_loc7_ || _loc3_)
                           {
                              addr128:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr128);
                        }
                        _loc3_.§"T§();
                        continue;
                     }
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr114);
         }
      }
      
      public function §@N§() : b2FilterData
      {
         return this.§ !C§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'!;§() : b2Fixture
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=f§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!K§.TestPoint(this.m_body.§1?§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!K§.RayCast(param1,param2,this.m_body.§1?§());
      }
      
      public function §=Q§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(_loc2_)
               {
                  param1 = new b2MassData();
               }
               §§goto(addr44);
            }
            this.§2!K§.ComputeMass(param1,this.§0A§);
         }
         addr44:
         return param1;
      }
      
      public function §1=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0A§ = param1;
         }
      }
      
      public function §4@§() : Number
      {
         return this.§0A§;
      }
      
      public function §[!N§() : Number
      {
         return this.§!G§;
      }
      
      public function §!!<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!G§ = param1;
         }
      }
      
      public function §0w§() : Number
      {
         return this.§-%§;
      }
      
      public function §5V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-%§ = param1;
         }
      }
      
      public function §#Y§() : b2AABB
      {
         return this.§'!Y§;
      }
      
      b2internal function §@!L§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=f§ = param3.§+!f§;
            loop0:
            while(true)
            {
               this.§!G§ = param3.friction;
               while(true)
               {
                  this.§-%§ = param3.restitution;
                  while(true)
                  {
                     this.m_body = param1;
                     loop3:
                     while(!_loc5_)
                     {
                        this.§,!Z§ = null;
                        loop4:
                        while(true)
                        {
                           this.§ !C§ = param3.filter.Copy();
                           loop5:
                           while(true)
                           {
                              this.§4!R§ = param3.§[!i§;
                              while(true)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr85:
                                 this.§2!K§ = param3.shape.Copy();
                                 do
                                 {
                                    this.§0A§ = param3.density;
                                 }
                                 while(!(_loc4_ || this));
                                 
                                 if(!_loc5_)
                                 {
                                    return;
                                    addr37:
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §"G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2!K§ = null;
         }
      }
      
      b2internal function §>!I§(param1:§"%§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§2!K§.ComputeAABB(this.§'!Y§,param2);
         }
         do
         {
            this.§;1§ = param1.§>!I§(this.§'!Y§,this);
         }
         while(!_loc3_);
         
      }
      
      b2internal function §,!c§(param1:§"%§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;1§ == null)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr53);
               }
               addr61:
            }
            while(true)
            {
               param1.§,!c§(this.§;1§);
               §§goto(addr61);
            }
         }
         addr53:
         while(true)
         {
            this.§;1§ = null;
            if(_loc2_ || param1)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §1!f§(param1:§"%§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§;1§)
            {
               if(!(_loc8_ && param2))
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:b2AABB = new b2AABB();
            var _loc5_:b2AABB = new b2AABB();
            if(_loc7_ || param1)
            {
               §§push(this.§2!K§);
               while(true)
               {
                  §§pop().ComputeAABB(_loc4_,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.§2!K§);
                     if(!(_loc7_ || param1))
                     {
                        break;
                     }
                     §§pop().ComputeAABB(_loc5_,param3);
                     while(!_loc8_)
                     {
                        this.§'!Y§.§[!g§(_loc4_,_loc5_);
                        if(!(_loc8_ && param3))
                        {
                           if(true)
                           {
                              var _loc6_:b2Vec2 = b2Math.§2!C§(param3.position,param2.position);
                              if(!_loc8_)
                              {
                                 param1.§]Z§(this.§;1§,this.§'!Y§,_loc6_);
                              }
                           }
                           continue loop2;
                           return;
                        }
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr105);
         }
         addr29:
      }
   }
}
