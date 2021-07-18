package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §8!<§:b2Vec2;
      
      public var §+!L§:Number;
      
      public var §+"!§:Boolean;
      
      public var §-!L§:Number;
      
      public var § !W§:Number;
      
      public var §+!b§:Boolean;
      
      public var §7!;§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!8§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@W§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§8!<§ = new b2Vec2();
                  continue loop0;
                  addr84:
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§+!b§ = false;
                     loop11:
                     do
                     {
                        this.§7!;§ = 0;
                        addr53:
                        loop12:
                        for(; !(_loc2_ && _loc1_); this.motorSpeed = 0,if(_loc1_ || _loc2_)
                        {
                           continue loop11;
                        })
                        {
                           if(_loc1_)
                           {
                              continue;
                           }
                           addr131:
                           while(true)
                           {
                              type = b2Joint.§1"@§;
                              loop4:
                              while(true)
                              {
                                 this.§8!<§.Set(1,0);
                                 addr119:
                                 while(!_loc2_)
                                 {
                                    this.§+!L§ = 0;
                                    while(_loc1_)
                                    {
                                       while(true)
                                       {
                                          this.§+"!§ = false;
                                          break loop12;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              this.§-!L§ = 0;
                              loop9:
                              while(!_loc2_)
                              {
                                 this.§ !W§ = 0;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §§goto(addr84);
                                    }
                                    continue loop9;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr110);
                           }
                           break;
                           §§goto(addr53);
                        }
                        §§goto(addr119);
                     }
                     while(!_loc1_);
                     
                     if(_loc2_ && _loc1_)
                     {
                        §§goto(addr82);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §+,§ = param1;
            loop0:
            while(true)
            {
               §"R§ = param2;
               loop1:
               while(true)
               {
                  this.§!8§ = §+,§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§@W§ = §"R§.GetLocalPoint(param3);
                     continue loop0;
                     addr65:
                     if(_loc6_ || this)
                     {
                        loop5:
                        while(true)
                        {
                           this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           addr58:
                           while(!(_loc5_ && param3))
                           {
                              §§goto(addr65);
                              continue loop5;
                           }
                           continue loop0;
                        }
                        return;
                        addr72:
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
