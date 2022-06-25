package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §]!4§:Number;
      
      public var §?P§:Boolean;
      
      public var §%^§:Number;
      
      public var §@!A§:Number;
      
      public var §"!<§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`!V§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§6$§ = new b2Vec2();
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
                        this.§`!V§.Set(0,0);
                        loop4:
                        while(true)
                        {
                           this.§6$§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§]!4§ = 0;
                              while(!_loc2_)
                              {
                                 continue loop0;
                                 if(!(_loc2_ && this))
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                              addr86:
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              this.motorSpeed = 0;
                              loop10:
                              while(true)
                              {
                                 this.§?P§ = false;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr57:
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 addr84:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr86);
                                    §§goto(addr57);
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  this.§4§ = 0;
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §^!G§ = param1;
         }
         while(true)
         {
            §-z§ = param2;
            loop1:
            while(_loc5_ || param1)
            {
               this.§`!V§ = §^!G§.GetLocalPoint(param3);
               do
               {
                  this.§6$§ = §-z§.GetLocalPoint(param3);
                  while(_loc5_ || param1)
                  {
                     this.§]!4§ = §-z§.GetAngle() - §^!G§.GetAngle();
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr51);
                  }
                  continue loop1;
               }
               while(!_loc5_);
               
               return;
            }
         }
      }
   }
}
