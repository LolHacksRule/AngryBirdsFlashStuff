package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §=!P§:b2Vec2;
      
      public var §72§:Number;
      
      public var §9[§:Boolean;
      
      public var §^!<§:Number;
      
      public var §1g§:Number;
      
      public var §<S§:Boolean;
      
      public var §6f§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§4B§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ !Q§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§=!P§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§;!"§;
                        loop4:
                        while(true)
                        {
                           this.§=!P§.Set(1,0);
                           while(!_loc2_)
                           {
                              this.§72§ = 0;
                              loop6:
                              while(_loc1_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 this.§9[§ = false;
                                 while(true)
                                 {
                                    this.§^!<§ = 0;
                                    continue loop4;
                                    addr55:
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §<§ = param1;
         }
         loop0:
         while(true)
         {
            §,!M§ = param2;
            while(true)
            {
               this.§4B§ = §<§.GetLocalPoint(param3);
               loop2:
               while(!(_loc6_ && param3))
               {
                  this.§ !Q§ = §,!M§.GetLocalPoint(param3);
                  loop3:
                  while(true)
                  {
                     this.§=!P§ = §<§.GetLocalVector(param4);
                     while(true)
                     {
                        if(!(_loc6_ && param1))
                        {
                           continue loop0;
                        }
                        continue loop3;
                        addr71:
                        this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
                        if(_loc5_ || param2)
                        {
                           if(!_loc6_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
