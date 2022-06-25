package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §`z§:Number;
      
      public var § y§:Number;
      
      public var §`!X§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.target = new b2Vec2();
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               type = b2Joint.§#F§;
               do
               {
                  this.§`z§ = 0;
                  loop3:
                  do
                  {
                     this.§ y§ = 5;
                     while(!_loc1_)
                     {
                        continue loop0;
                        this.§`!X§ = 0.7;
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(_loc1_);
               
               return;
            }
         }
      }
   }
}
