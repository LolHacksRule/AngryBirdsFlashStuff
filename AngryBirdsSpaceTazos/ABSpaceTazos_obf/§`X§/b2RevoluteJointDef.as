package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+!L§:Number;
      
      public var §+"!§:Boolean;
      
      public var §'!P§:Number;
      
      public var § !n§:Number;
      
      public var §+!b§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?u§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§!8§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@W§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     loop3:
                     while(!_loc1_)
                     {
                        this.§!8§.Set(0,0);
                        while(true)
                        {
                           this.§@W§.Set(0,0);
                        }
                        addr73:
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        this.§+"!§ = false;
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§+!b§ = false;
                           if(!(_loc1_ && this))
                           {
                              addr40:
                              if(_loc2_ || _loc2_)
                              {
                                 return;
                              }
                              loop10:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    addr66:
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       while(!_loc1_)
                                       {
                                          this.§'!P§ = 0;
                                          loop7:
                                          for(; _loc2_; if(!(_loc1_ && _loc1_))
                                          {
                                             this.motorSpeed = 0;
                                             continue loop10;
                                          })
                                          {
                                             this.§ !n§ = 0;
                                             loop8:
                                             while(true)
                                             {
                                                this.§?u§ = 0;
                                                addr92:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr139);
                                          §§goto(addr66);
                                       }
                                       continue loop1;
                                       addr123:
                                    }
                                    §§goto(addr73);
                                 }
                                 §§goto(addr92);
                                 §§goto(addr40);
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           this.§+!L§ = 0;
                           §§goto(addr123);
                           §§goto(addr52);
                        }
                        addr52:
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §+,§ = param1;
            while(true)
            {
               §"R§ = param2;
               while(_loc4_)
               {
                  this.§!8§ = §+,§.GetLocalPoint(param3);
                  if(_loc4_ || param2)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         while(true)
         {
            this.§@W§ = §"R§.GetLocalPoint(param3);
            while(!(_loc5_ && param2))
            {
               this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr33);
            }
         }
         §§goto(addr50);
      }
   }
}
