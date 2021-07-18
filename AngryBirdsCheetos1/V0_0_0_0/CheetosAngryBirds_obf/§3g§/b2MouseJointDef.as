package §3g§
{
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5!-§:Number;
      
      public var §5X§:Number;
      
      public var §@N§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.target = new b2Vec2();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  type = b2Joint.§-!2§;
                  loop2:
                  do
                  {
                     this.§5!-§ = 0;
                     while(true)
                     {
                        this.§5X§ = 5;
                        while(_loc2_)
                        {
                           continue loop1;
                           this.§@N§ = 0.7;
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc1_);
                  
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               §§goto(addr63);
            }
         }
      }
   }
}
