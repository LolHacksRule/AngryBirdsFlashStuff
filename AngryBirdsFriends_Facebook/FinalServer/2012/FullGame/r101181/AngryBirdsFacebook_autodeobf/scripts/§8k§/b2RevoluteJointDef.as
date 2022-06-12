package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var § var§:Number;
      
      public var §3"%§:Boolean;
      
      public var §"!A§:Number;
      
      public var §,!=§:Number;
      
      public var §[!c§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §3$§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#C§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§^!J§ = new b2Vec2();
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
                     this.§#C§.Set(0,0);
                     while(true)
                     {
                        this.§^!J§.Set(0,0);
                        continue loop3;
                        while(!_loc2_)
                        {
                           this.motorSpeed = 0;
                           loop10:
                           while(_loc1_ || _loc1_)
                           {
                              this.§3"%§ = false;
                              while(!_loc2_)
                              {
                                 this.§[!c§ = false;
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr33:
                                          if(!(_loc2_ && this))
                                          {
                                             return;
                                          }
                                          continue loop3;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(!_loc2_)
                                             {
                                                this.§3$§ = 0;
                                                break loop10;
                                             }
                                             break;
                                          }
                                          addr95:
                                          while(!_loc2_)
                                          {
                                             this.§,!=§ = 0;
                                             continue loop8;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop10;
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
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §!!v§ = param1;
            while(true)
            {
               §'!4§ = param2;
               while(true)
               {
                  this.§#C§ = §!!v§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§^!J§ = §'!4§.GetLocalPoint(param3);
                     §§goto(addr81);
                  }
               }
            }
         }
         addr81:
         while(true)
         {
            this.§ var§ = §'!4§.GetAngle() - §!!v§.GetAngle();
            if(!(_loc5_ && param2))
            {
               if(_loc4_ || param2)
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
      }
   }
}
