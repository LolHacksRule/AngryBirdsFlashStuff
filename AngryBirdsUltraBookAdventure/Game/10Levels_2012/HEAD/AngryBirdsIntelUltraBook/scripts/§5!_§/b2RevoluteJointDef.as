package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §5S§:Number;
      
      public var §!X§:Boolean;
      
      public var §&;§:Number;
      
      public var § !>§:Number;
      
      public var §0e§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?!h§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§'!<§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§1!0§ = new b2Vec2();
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
                        this.§'!<§.Set(0,0);
                        loop4:
                        while(true)
                        {
                           this.§1!0§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§5S§ = 0;
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
                                 this.§!X§ = false;
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
                  this.§?!h§ = 0;
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §7!K§ = param1;
         }
         while(true)
         {
            §'P§ = param2;
            loop1:
            while(_loc5_ || param1)
            {
               this.§'!<§ = §7!K§.GetLocalPoint(param3);
               do
               {
                  this.§1!0§ = §'P§.GetLocalPoint(param3);
                  while(_loc5_ || param1)
                  {
                     this.§5S§ = §'P§.GetAngle() - §7!K§.GetAngle();
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
