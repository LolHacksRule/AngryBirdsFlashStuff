package §@h§
{
   import §'!_§.b2internal;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6g§:Number;
      
      public var §<!f§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  type = b2Joint.§@!Q§;
                  addr35:
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§6g§ = 0;
            while(!_loc1_)
            {
               this.§<!f§ = 5;
               while(!_loc1_)
               {
                  this.dampingRatio = 0.7;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr59);
      }
   }
}
