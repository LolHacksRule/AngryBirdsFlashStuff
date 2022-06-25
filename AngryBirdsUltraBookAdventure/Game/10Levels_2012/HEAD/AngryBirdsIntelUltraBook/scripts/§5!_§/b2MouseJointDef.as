package §5!_§
{
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5b§:Number;
      
      public var §!N§:Number;
      
      public var §^c§:Number;
      
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
                  type = b2Joint.§>X§;
                  loop2:
                  do
                  {
                     this.§5b§ = 0;
                     while(true)
                     {
                        this.§!N§ = 5;
                        while(_loc1_ || this)
                        {
                           continue loop1;
                           this.§^c§ = 0.7;
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
