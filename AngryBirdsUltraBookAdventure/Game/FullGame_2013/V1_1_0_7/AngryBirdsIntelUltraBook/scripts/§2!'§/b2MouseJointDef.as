package §2!'§
{
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6""§:Number;
      
      public var §'S§:Number;
      
      public var §&!u§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               do
               {
                  type = b2Joint.§%![§;
                  loop2:
                  while(true)
                  {
                     this.§6""§ = 0;
                     addr86:
                     while(_loc2_)
                     {
                        this.§'S§ = 5;
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
   }
}
