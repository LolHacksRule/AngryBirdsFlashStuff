package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §<!b§:Number;
      
      public var §+!<§:Boolean;
      
      public var § +§:Number;
      
      public var §,!n§:Number;
      
      public var §[!W§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1&§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§0O§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ @§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     continue loop1;
                     addr89:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.motorSpeed = 0;
                     loop11:
                     do
                     {
                        this.§+!<§ = false;
                        while(!_loc2_)
                        {
                           this.§[!W§ = false;
                           if(_loc1_ || this)
                           {
                              continue loop11;
                           }
                        }
                        continue loop0;
                     }
                     while(_loc2_ && this);
                     
                     addr46:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr53:
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§ @§.Set(0,0);
                              loop6:
                              while(true)
                              {
                                 this.§<!b§ = 0;
                                 while(_loc1_)
                                 {
                                    this.§ +§ = 0;
                                    loop8:
                                    while(!_loc2_)
                                    {
                                       this.§,!n§ = 0;
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             this.§1&§ = 0;
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr53);
                           }
                           addr133:
                        }
                        return;
                     }
                     §§goto(addr72);
                  }
               }
            }
         }
         while(true)
         {
            this.§0O§.Set(0,0);
            §§goto(addr133);
         }
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §'!n§ = param1;
         }
         while(true)
         {
            § 5§ = param2;
            while(_loc5_)
            {
               this.§0O§ = §'!n§.GetLocalPoint(param3);
               while(!(_loc4_ && this))
               {
                  this.§ @§ = § 5§.GetLocalPoint(param3);
                  while(!_loc4_)
                  {
                     this.§<!b§ = § 5§.GetAngle() - §'!n§.GetAngle();
                     if(!_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
   }
}
