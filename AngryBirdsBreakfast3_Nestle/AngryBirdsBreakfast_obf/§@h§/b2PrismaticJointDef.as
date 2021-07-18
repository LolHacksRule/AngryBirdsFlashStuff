package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §2"#§:b2Vec2;
      
      public var §7!L§:Number;
      
      public var §05§:Boolean;
      
      public var §;!W§:Number;
      
      public var §2!$§:Number;
      
      public var §9!g§:Boolean;
      
      public var §;d§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8D§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§2"#§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§#!e§;
                        loop4:
                        while(true)
                        {
                           this.§2"#§.Set(1,0);
                           while(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 this.§7!L§ = 0;
                                 continue loop4;
                              }
                              continue loop2;
                              addr56:
                              if(_loc2_ || this)
                              {
                                 this.motorSpeed = 0;
                                 addr63:
                                 if(!_loc2_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          addr42:
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr49:
                                             if(!(_loc2_ || this))
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr56);
                                          }
                                          else
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                this.§2!$§ = 0;
                                                addr87:
                                                addr101:
                                                while(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      this.§9!g§ = false;
                                                      break loop12;
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   this.§;!W§ = 0;
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       break;
                                       §§goto(addr63);
                                    }
                                    loop10:
                                    for(; !_loc1_; §§goto(addr35))
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          this.§;d§ = 0;
                                          continue loop10;
                                       }
                                    }
                                    addr35:
                                    §§goto(addr87);
                                 }
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §9!w§ = param1;
            while(true)
            {
               §>!W§ = param2;
               loop1:
               for(; !(_loc6_ && param3); if(_loc6_ && this)
               {
                  continue;
               },§§goto(addr76))
               {
                  while(true)
                  {
                     this.§8D§ = §9!w§.GetLocalPoint(param3);
                     loop3:
                     do
                     {
                        this.§@"$§ = §>!W§.GetLocalPoint(param3);
                        while(true)
                        {
                           this.§2"#§ = §9!w§.GetLocalVector(param4);
                           while(!_loc6_)
                           {
                              continue loop1;
                              this.§7!L§ = §>!W§.GetAngle() - §9!w§.GetAngle();
                              if(_loc5_ || this)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(_loc6_ && param2);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr112);
      }
   }
}
