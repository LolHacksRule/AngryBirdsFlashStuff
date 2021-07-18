package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §!#W§:Number;
      
      public var §#d§:Boolean;
      
      public var § "x§:Number;
      
      public var §<!y§:Number;
      
      public var §!#G§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?"Z§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!"4§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§#"B§ = new b2Vec2();
            loop1:
            while(true)
            {
               super();
               loop2:
               while(true)
               {
                  type = b2Joint.e_revoluteJoint;
                  loop3:
                  for(; !_loc1_; loop5:
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§!#W§ = 0;
                     loop6:
                     while(true)
                     {
                        this.§ "x§ = 0;
                        do
                        {
                           this.§<!y§ = 0;
                           while(true)
                           {
                              this.§?"Z§ = 0;
                              loop9:
                              while(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    this.motorSpeed = 0;
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          this.§#d§ = false;
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr129);
                                          }
                                          continue loop2;
                                       }
                                       continue loop9;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        while(!(_loc2_ || _loc1_));
                        
                        continue loop0;
                     }
                  })
                  {
                     this.§!"4§.Set(0,0);
                     while(true)
                     {
                        this.§#"B§.Set(0,0);
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc2_ || _loc1_)
            {
               return;
            }
         }
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §9"P§ = param1;
            while(true)
            {
               §continue§ = param2;
               addr93:
               while(true)
               {
                  this.§!"4§ = §9"P§.GetLocalPoint(param3);
               }
            }
            addr97:
         }
         loop2:
         while(true)
         {
            this.§#"B§ = §continue§.GetLocalPoint(param3);
            while(true)
            {
               if(!(_loc4_ || param2))
               {
                  continue loop2;
               }
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr93);
         }
      }
   }
}
