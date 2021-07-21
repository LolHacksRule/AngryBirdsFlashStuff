package § !V§
{
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0!`§:Number;
      
      public var §2!5§:Number;
      
      public var §9!J§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.target = new b2Vec2();
            while(true)
            {
               super();
               loop4:
               while(!(_loc1_ && _loc2_))
               {
                  this.§9!J§ = 0.7;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr35:
                  if(!_loc1_)
                  {
                     addr47:
                     if(_loc1_)
                     {
                        while(true)
                        {
                           type = b2Joint.§=J§;
                           while(true)
                           {
                              this.§0!`§ = 0;
                              addr66:
                              while(_loc2_)
                              {
                                 this.§2!5§ = 5;
                                 continue loop4;
                                 §§goto(addr35);
                              }
                           }
                           §§goto(addr47);
                        }
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr88);
      }
   }
}
