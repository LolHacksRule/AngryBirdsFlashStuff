package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var § "2§:Number;
      
      public var §2<§:Boolean;
      
      public var §9"!§:Number;
      
      public var § !A§:Number;
      
      public var §#a§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §@!U§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!&§ = new b2Vec2();
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               while(_loc2_)
               {
                  super();
                  loop2:
                  while(_loc2_)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(true)
                     {
                        this.§3!&§.Set(0,0);
                        loop4:
                        for(; !_loc1_; if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },this.§9"!§ = 0,while(true)
                        {
                           this.§ !A§ = 0;
                           loop8:
                           for(; !_loc1_; while(true)
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop8;
                           },§§goto(addr92))
                           {
                              this.§@!U§ = 0;
                              do
                              {
                                 this.motorSpeed = 0;
                                 do
                                 {
                                    this.§2<§ = false;
                                    continue loop8;
                                 }
                                 while(!_loc2_);
                                 
                              }
                              while(_loc1_ && _loc1_);
                              
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                           }
                        })
                        {
                           this.§2!P§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§ "2§ = 0;
                              addr92:
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            § !T§ = param1;
            loop0:
            while(true)
            {
               §import§ = param2;
               while(true)
               {
                  this.§3!&§ = § !T§.GetLocalPoint(param3);
                  addr71:
                  while(!_loc5_)
                  {
                     this.§2!P§ = §import§.GetLocalPoint(param3);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
   }
}
