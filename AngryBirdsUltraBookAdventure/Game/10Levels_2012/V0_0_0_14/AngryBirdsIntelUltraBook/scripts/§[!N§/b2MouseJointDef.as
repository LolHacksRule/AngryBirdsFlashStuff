package §[!N§
{
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §4!G§:Number;
      
      public var § $§:Number;
      
      public var §7B§:Number;
      
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
                  type = b2Joint.§;p§;
                  while(true)
                  {
                     this.§4!G§ = 0;
                     while(_loc1_ || _loc2_)
                     {
                        if(_loc1_)
                        {
                           this.§ $§ = 5;
                           while(_loc1_)
                           {
                              this.§7B§ = 0.7;
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
   }
}
