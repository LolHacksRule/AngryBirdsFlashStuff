package §+C§
{
   import §'F§.b2internal;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §&l§:Number;
      
      public var §;l§:Number;
      
      public var §,8§:Number;
      
      public function b2MouseJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.target = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  type = b2Joint.§6!+§;
                  loop2:
                  for(; _loc2_; if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  },if(!_loc2_)
                  {
                     continue loop1;
                  })
                  {
                     this.§&l§ = 0;
                     while(true)
                     {
                        this.§;l§ = 5;
                        loop4:
                        while(!(_loc1_ && _loc1_))
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§,8§ = 0.7;
                              if(_loc2_ || _loc1_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
   }
}
