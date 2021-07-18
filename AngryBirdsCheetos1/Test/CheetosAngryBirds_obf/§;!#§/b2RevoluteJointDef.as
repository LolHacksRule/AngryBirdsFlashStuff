package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §49§:Number;
      
      public var § c§:Boolean;
      
      public var §<!B§:Number;
      
      public var §=!9§:Number;
      
      public var §32§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §[!+§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§!!U§ = new b2Vec2();
            while(true)
            {
               this.§"!'§ = new b2Vec2();
               addr41:
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
         while(true)
         {
            super();
            loop2:
            for(; !_loc2_; if(_loc2_ && _loc1_)
            {
               continue;
            },this.§[!+§ = 0,§§goto(addr69))
            {
               type = b2Joint.e_revoluteJoint;
               loop3:
               while(true)
               {
                  this.§!!U§.Set(0,0);
                  while(true)
                  {
                     this.§"!'§.Set(0,0);
                     while(_loc1_ || _loc1_)
                     {
                        continue loop3;
                        loop9:
                        while(_loc1_ || _loc2_)
                        {
                           this.motorSpeed = 0;
                           loop10:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    this.§ c§ = false;
                                    while(!_loc2_)
                                    {
                                       this.§32§ = false;
                                       if(_loc1_)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§=!9§ = 0;
                                       break loop10;
                                    }
                                    addr110:
                                 }
                                 break;
                              }
                              continue loop9;
                           }
                           loop8:
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop2;
                              }
                              addr115:
                              while(true)
                              {
                                 this.§<!B§ = 0;
                                 §§goto(addr110);
                                 continue loop8;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §-'§ = param1;
            loop0:
            while(true)
            {
               §<!L§ = param2;
               loop1:
               while(true)
               {
                  this.§!!U§ = §-'§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§"!'§ = §<!L§.GetLocalPoint(param3);
                     loop3:
                     while(_loc4_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
                           if(_loc4_ || param2)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
