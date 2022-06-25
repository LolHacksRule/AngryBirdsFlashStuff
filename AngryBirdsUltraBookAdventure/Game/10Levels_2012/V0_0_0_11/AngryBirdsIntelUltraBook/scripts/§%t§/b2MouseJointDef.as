package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §3!,§:Number;
      
      public var §?!J§:Number;
      
      public var §9!7§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  type = b2Joint.§ !,§;
                  loop2:
                  do
                  {
                     this.§3!,§ = 0;
                     while(true)
                     {
                        this.§?!J§ = 5;
                        while(_loc1_ || this)
                        {
                           continue loop1;
                           this.§9!7§ = 0.7;
                           if(!(_loc2_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc2_);
                  
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
