package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §<!b§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0O§ = new b2Vec2();
            while(true)
            {
               this.§ @§ = new b2Vec2();
               loop1:
               for(; _loc2_; if(!(_loc2_ || this))
               {
                  continue;
               })
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§]5§;
                     loop3:
                     while(!_loc1_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§<!b§ = 0;
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §'!n§ = param1;
            loop0:
            while(true)
            {
               § 5§ = param2;
               while(true)
               {
                  this.§0O§.SetV(§'!n§.GetLocalPoint(param3));
                  while(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        this.§ @§.SetV(§ 5§.GetLocalPoint(param3));
                        loop3:
                        while(!(_loc5_ && param3))
                        {
                           while(true)
                           {
                              this.§<!b§ = § 5§.GetAngle() - §'!n§.GetAngle();
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
