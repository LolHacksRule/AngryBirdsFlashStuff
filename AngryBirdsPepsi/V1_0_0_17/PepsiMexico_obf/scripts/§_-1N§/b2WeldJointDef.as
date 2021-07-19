package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-Lv§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-Kz§ = new b2Vec2();
            if(_loc1_)
            {
               this.§_-Dq§ = new b2Vec2();
               addr26:
               if(!(_loc2_ && _loc1_))
               {
                  super();
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr66);
               }
               type = b2Joint.§_-B0§;
               if(_loc2_)
               {
               }
               §§goto(addr66);
            }
            addr66:
            this.§_-Lv§ = 0;
            return;
         }
         §§goto(addr26);
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §_-dL§ = param1;
            if(_loc5_)
            {
               §_-h1§ = param2;
               if(_loc5_)
               {
                  this.§_-Kz§.SetV(§_-dL§.GetLocalPoint(param3));
                  if(!(_loc4_ && this))
                  {
                     addr51:
                     this.§_-Dq§.SetV(§_-h1§.GetLocalPoint(param3));
                     if(!(_loc4_ && param2))
                     {
                        addr71:
                        this.§_-Lv§ = §_-h1§.GetAngle() - §_-dL§.GetAngle();
                     }
                  }
                  return;
               }
               §§goto(addr51);
            }
            §§goto(addr71);
         }
         §§goto(addr51);
      }
   }
}
