package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var § var§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§#C§ = new b2Vec2();
            while(true)
            {
               this.§^!J§ = new b2Vec2();
               while(_loc2_ || _loc2_)
               {
                  super();
                  do
                  {
                     type = b2Joint.§`"8§;
                     do
                     {
                        this.§ var§ = 0;
                     }
                     while(_loc1_ && this);
                     
                  }
                  while(!(_loc2_ || this));
                  
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr69:
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §!!v§ = param1;
         }
         loop0:
         while(true)
         {
            §'!4§ = param2;
            loop1:
            while(true)
            {
               this.§#C§.SetV(§!!v§.GetLocalPoint(param3));
               while(true)
               {
                  this.§^!J§.SetV(§'!4§.GetLocalPoint(param3));
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        this.§ var§ = §'!4§.GetAngle() - §!!v§.GetAngle();
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        continue;
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
