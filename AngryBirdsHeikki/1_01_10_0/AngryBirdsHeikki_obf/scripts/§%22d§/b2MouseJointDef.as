package §"d§
{
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var § N§:Number;
      
      public var §&!a§:Number;
      
      public var §0J§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               addr88:
               while(true)
               {
                  type = b2Joint.§^a§;
                  while(!_loc1_)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr54:
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§ N§ = 0;
            loop4:
            while(true)
            {
               this.§&!a§ = 5;
               while(_loc2_)
               {
                  this.§0J§ = 0.7;
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop4;
                  }
               }
               §§goto(addr88);
            }
         }
         §§goto(addr54);
      }
   }
}
