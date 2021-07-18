package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-O9§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-Kz§ = new b2Vec2();
            this.§_-Dq§ = new b2Vec2();
            if(!_loc2_)
            {
               super();
               if(!_loc2_)
               {
                  type = b2Joint.§_-oH§;
                  addr41:
                  if(!_loc2_)
                  {
                     this.§_-O9§ = 0;
                     this.maxTorque = 0;
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §_-dL§ = param1;
            if(!_loc5_)
            {
               §_-h1§ = param2;
               addr20:
               if(_loc4_ || param1)
               {
                  this.§_-Kz§.SetV(§_-dL§.GetLocalPoint(param3));
                  if(_loc4_)
                  {
                     addr52:
                     this.§_-Dq§.SetV(§_-h1§.GetLocalPoint(param3));
                  }
                  return;
               }
            }
            §§goto(addr52);
         }
         §§goto(addr20);
      }
   }
}
