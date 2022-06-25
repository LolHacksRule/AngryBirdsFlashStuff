package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-oX§:Number;
      
      public var §true §:Number;
      
      public var §_-9r§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  type = b2Joint.§_-w§;
                  while(_loc2_)
                  {
                     this.§_-oX§ = 0;
                     loop3:
                     while(!(_loc1_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§true § = 5;
                           while(_loc2_)
                           {
                              this.§_-9r§ = 0.7;
                              if(!_loc1_)
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
