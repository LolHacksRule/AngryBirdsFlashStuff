package §3g§
{
   import §&!"§.b2Body;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §4B§:b2Vec2;
      
      public var § !Q§:b2Vec2;
      
      public var §72§:Number;
      
      public var §9[§:Boolean;
      
      public var §4q§:Number;
      
      public var §33§:Number;
      
      public var §<S§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §6[§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§4B§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ !Q§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(true)
                     {
                        this.§4B§.Set(0,0);
                        loop4:
                        while(true)
                        {
                           this.§ !Q§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§72§ = 0;
                              while(true)
                              {
                                 this.§4q§ = 0;
                                 while(_loc2_)
                                 {
                                    this.§33§ = 0;
                                    loop10:
                                    while(_loc2_ || _loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§9[§ = false;
                                          while(true)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§6[§ = 0;
                                                      while(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            this.motorSpeed = 0;
                                                            continue loop10;
                                                         }
                                                         continue loop0;
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   addr51:
                                                   addr105:
                                                }
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                                return;
                                             }
                                             continue loop10;
                                          }
                                          continue loop3;
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §1D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §<§ = param1;
            while(true)
            {
               §,!M§ = param2;
               loop1:
               for(; !_loc4_; if(_loc4_ && param3)
               {
                  continue;
               })
               {
                  this.§4B§ = §<§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§ !Q§ = §,!M§.GetLocalPoint(param3);
                     while(!_loc4_)
                     {
                        this.§72§ = §,!M§.GetAngle() - §<§.GetAngle();
                        if(_loc5_ || param2)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
