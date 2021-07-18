package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var length:Number;
      
      public var §;l§:Number;
      
      public var §,8§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0O§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ @§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§'G§;
                     loop3:
                     for(; !_loc1_; if(_loc1_ && this)
                     {
                        continue;
                     },§§goto(addr73))
                     {
                        this.length = 1;
                        loop4:
                        while(true)
                        {
                           this.§;l§ = 0;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr73:
                              this.§,8§ = 0;
                              if(!(_loc1_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            §'!n§ = param1;
         }
         loop0:
         while(true)
         {
            § 5§ = param2;
            loop1:
            while(true)
            {
               addr42:
               while(true)
               {
                  this.§0O§.SetV(§'!n§.GetLocalPoint(param3));
                  while(!_loc8_)
                  {
                     this.§ @§.SetV(§ 5§.GetLocalPoint(param4));
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
