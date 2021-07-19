package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §2"#§:b2Vec2;
      
      public var §05§:Boolean;
      
      public var §;!W§:Number;
      
      public var §2!$§:Number;
      
      public var §9!g§:Boolean;
      
      public var §;d§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8D§ = new b2Vec2();
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               loop1:
               while(!_loc1_)
               {
                  this.§2"#§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§"!A§;
                        loop4:
                        while(_loc2_)
                        {
                           this.§2"#§.Set(1,0);
                           while(true)
                           {
                              this.§05§ = false;
                              loop6:
                              while(true)
                              {
                                 this.§;!W§ = 0;
                                 addr94:
                                 while(!_loc1_)
                                 {
                                    this.§2!$§ = 0;
                                    while(!_loc1_)
                                    {
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              addr58:
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    this.motorSpeed = 0;
                                    if(!(_loc1_ && this))
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr94);
                                       }
                                       §§goto(addr87);
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§goto(addr58);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§;d§ = 0;
                                             continue loop11;
                                          }
                                          addr82:
                                       }
                                    }
                                    addr77:
                                    continue;
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
         while(true)
         {
            this.§9!g§ = false;
            §§goto(addr82);
         }
         §§goto(addr51);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §9!w§ = param1;
            while(true)
            {
               §>!W§ = param2;
               while(_loc6_)
               {
                  this.§8D§ = §9!w§.GetLocalPoint(param3);
                  addr56:
                  if(_loc6_ || param2)
                  {
                     this.§2"#§ = §9!w§.GetLocalVector(param4);
                     addr63:
                     if(_loc5_ && this)
                     {
                        while(_loc6_)
                        {
                           §§goto(addr56);
                           §§goto(addr63);
                        }
                        while(true)
                        {
                           this.§@"$§ = §>!W§.GetLocalPoint(param3);
                           §§goto(addr54);
                        }
                        addr54:
                        addr70:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
