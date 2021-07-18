package §+#$§
{
   import §3"5§.§8t§;
   import §3"5§.b2AABB;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §4!$§.b2MassData;
   import §4!$§.b2Shape;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §9"S§:b2MassData;
      
      b2internal var §?!>§:b2AABB;
      
      b2internal var §7!P§:Number;
      
      b2internal var §!"!§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §5%§:b2Shape;
      
      b2internal var §9!y§:Number;
      
      b2internal var §=!K§:Number;
      
      b2internal var §4"t§;
      
      b2internal var §5"c§:b2FilterData;
      
      b2internal var §&#!§:Boolean;
      
      b2internal var §0!+§;
      
      public function b2Fixture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5"c§ = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§?!>§ = new b2AABB();
                  loop2:
                  for(; !_loc1_; if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },this.§5%§ = null,§§goto(addr83))
                  {
                     this.§0!+§ = null;
                     loop3:
                     while(true)
                     {
                        this.m_body = null;
                        while(_loc2_)
                        {
                           this.§!"!§ = null;
                           while(!_loc1_)
                           {
                              continue loop2;
                              addr54:
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                              this.§=!K§ = 0;
                              addr73:
                              if(!_loc1_)
                              {
                                 addr35:
                                 if(_loc1_ && _loc2_)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       this.§9!y§ = 0;
                                       addr47:
                                       addr83:
                                       while(_loc2_ || this)
                                       {
                                          §§goto(addr54);
                                          §§goto(addr73);
                                       }
                                       while(true)
                                       {
                                          this.§7!P§ = 0;
                                          continue loop7;
                                          §§goto(addr47);
                                       }
                                    }
                                    addr78:
                                 }
                                 return;
                              }
                              §§goto(addr47);
                           }
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §8! §() : int
      {
         return this.§5%§.§8! §();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§5%§;
      }
      
      public function §"!I§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(!_loc6_)
         {
            if(this.§&#!§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§&#!§ = param1;
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(this.m_body);
                        if(_loc7_)
                        {
                           if(§§pop() == null)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc6_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              if(!_loc7_)
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
                  }
                  var _loc2_:b2ContactEdge = §§pop().§9!K§();
                  for(; _loc2_; _loc2_ = _loc2_.§]!D§)
                  {
                     _loc3_ = _loc2_.§>"6§;
                     _loc4_ = _loc3_.§?!@§();
                     _loc5_ = _loc3_.§;"R§();
                     if(_loc7_ || _loc2_)
                     {
                        §§push(_loc4_ == this);
                        if(_loc7_)
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 addr113:
                                 §§pop();
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 addr121:
                                 §§push(_loc5_ == this);
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
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(_loc4_.§!W§());
                              if(!(_loc6_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc6_)
                                 {
                                    addr142:
                                    if(!§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§pop();
                                          addr147:
                                          §§push(_loc5_.§!W§());
                                          if(!_loc6_)
                                          {
                                             addr161:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    §§pop().§"!I§(§§pop());
                                    continue;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr121);
                  }
                  return;
               }
            }
         }
      }
      
      public function §!W§() : Boolean
      {
         return this.§&#!§;
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
            this.§5"c§ = param1.Copy();
            if(_loc6_)
            {
               §§push(this.m_body);
               if(_loc6_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.m_body);
               }
               var _loc2_:b2ContactEdge = §§pop().§9!K§();
               for(; _loc2_; _loc2_ = _loc2_.§]!D§)
               {
                  _loc3_ = _loc2_.§>"6§;
                  _loc4_ = _loc3_.§?!@§();
                  _loc5_ = _loc3_.§;"R§();
                  if(!_loc7_)
                  {
                     §§push(_loc4_ == this);
                     if(_loc6_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              §§pop();
                              addr120:
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc5_ == this);
                              }
                              _loc3_.§=y§();
                              continue;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr120);
               }
               return;
            }
         }
         addr45:
      }
      
      public function §`!7§() : b2FilterData
      {
         return this.§5"c§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>!>§() : b2Fixture
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!+§ = param1;
         }
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§5%§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§5%§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §5!O§(param1:b2MassData = null) : b2MassData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == null)
            {
               if(!(_loc2_ && this))
               {
                  param1 = new b2MassData();
                  addr53:
                  this.§5%§.ComputeMass(param1,this.§7!P§);
                  addr39:
               }
               return param1;
            }
            §§goto(addr53);
         }
         §§goto(addr39);
      }
      
      public function SetDensity(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!P§ = param1;
         }
      }
      
      public function GetDensity() : Number
      {
         return this.§7!P§;
      }
      
      public function §`"s§() : Number
      {
         return this.§9!y§;
      }
      
      public function §"Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§9!y§ = param1;
         }
      }
      
      public function §7H§() : Number
      {
         return this.§=!K§;
      }
      
      public function §5q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§=!K§ = param1;
         }
      }
      
      public function §8# §() : b2AABB
      {
         return this.§?!>§;
      }
      
      b2internal function §=!S§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§0!+§ = param3.§@"g§;
            loop0:
            while(true)
            {
               this.§9!y§ = param3.friction;
               loop1:
               while(true)
               {
                  this.§=!K§ = param3.restitution;
                  continue loop0;
                  addr63:
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  this.§7!P§ = param3.density;
                  addr80:
                  if(_loc4_)
                  {
                     addr35:
                     if(_loc5_ && this)
                     {
                        loop5:
                        while(true)
                        {
                           this.§&#!§ = param3.§-"`§;
                           addr86:
                           addr105:
                           loop6:
                           while(!(_loc5_ && param1))
                           {
                              this.§5%§ = param3.shape.Copy();
                              while(true)
                              {
                                 if(_loc5_ && param2)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr63);
                                 §§goto(addr80);
                              }
                              continue loop1;
                           }
                           addr117:
                           while(_loc4_ || param2)
                           {
                              this.§5"c§ = param3.filter.Copy();
                              continue loop5;
                              §§goto(addr86);
                           }
                           while(true)
                           {
                              this.§!"!§ = null;
                              §§goto(addr105);
                           }
                        }
                        return;
                        addr49:
                        addr100:
                     }
                     addr42:
                     if(!(_loc4_ || this))
                     {
                        continue loop0;
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr100);
      }
      
      b2internal function §;!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5%§ = null;
         }
      }
      
      b2internal function § #Q§(param1:§8t§, param2:b2Transform) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§5%§.ComputeAABB(this.§?!>§,param2);
            do
            {
               this.§4"t§ = param1.§ #Q§(this.§?!>§,this);
            }
            while(_loc3_ && param2);
            
         }
      }
      
      b2internal function §,X§(param1:§8t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§4"t§ == null)
            {
               if(_loc2_)
               {
                  return;
               }
               addr70:
               while(true)
               {
               }
               addr70:
            }
            while(true)
            {
               param1.§,X§(this.§4"t§);
               while(_loc2_)
               {
                  this.§4"t§ = null;
                  if(_loc2_ || param1)
                  {
                     return;
                  }
               }
               §§goto(addr70);
            }
         }
         §§goto(addr70);
      }
      
      b2internal function §4!A§(param1:§8t§, param2:b2Transform, param3:b2Transform) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(!this.§4"t§)
            {
               if(!(_loc8_ && param1))
               {
                  return;
               }
            }
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         if(_loc7_ || param1)
         {
            §§push(this.§5%§);
            while(true)
            {
               §§pop().ComputeAABB(_loc4_,param2);
            }
            addr83:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(this.§5%§);
               if(!_loc7_)
               {
                  break;
               }
               §§pop().ComputeAABB(_loc5_,param3);
               do
               {
                  this.§?!>§.§"";§(_loc4_,_loc5_);
               }
               while(!(_loc7_ || param3));
               
               if(!_loc8_)
               {
                  if(true)
                  {
                     var _loc6_:b2Vec2 = b2Math.§8!3§(param3.position,param2.position);
                     if(!_loc8_)
                     {
                        param1.§=!`§(this.§4"t§,this.§?!>§,_loc6_);
                     }
                  }
                  continue;
                  return;
               }
               continue loop1;
            }
            §§goto(addr83);
         }
      }
   }
}
