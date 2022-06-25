package §2!'§
{
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6""§:Number;
      
      public var §9!@§:Number;
      
      public var §6V§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.target = new b2Vec2();
            while(true)
            {
               super();
            }
            addr97:
         }
         do
         {
            type = b2Joint.§%![§;
            loop2:
            do
            {
               this.§6""§ = 0;
               while(!_loc2_)
               {
                  this.§9!@§ = 5;
                  do
                  {
                     this.§6V§ = 0.7;
                  }
                  while(!_loc1_);
                  
                  if(!(_loc2_ && this))
                  {
                     continue loop2;
                  }
               }
               §§goto(addr97);
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && this);
         
      }
   }
}
