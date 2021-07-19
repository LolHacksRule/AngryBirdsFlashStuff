package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §0v§:b2Vec2;
      
      public var §;=§:Number;
      
      public var §1&§:Boolean;
      
      public var §[F§:Number;
      
      public var §>Z§:Number;
      
      public var §^=§:Boolean;
      
      public var §>!Y§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§;9§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§-y§ = new b2Vec2();
               while(true)
               {
                  this.§0v§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§8z§;
                        addr145:
                        addr123:
                        while(true)
                        {
                           this.§0v§.Set(1,0);
                        }
                        loop6:
                        while(!(_loc1_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           this.§1&§ = false;
                           while(_loc2_)
                           {
                              this.§[F§ = 0;
                              loop8:
                              while(true)
                              {
                                 this.§>Z§ = 0;
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop8;
                                    addr47:
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    addr139:
                                    while(true)
                                    {
                                       this.§;=§ = 0;
                                       continue loop6;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §8!5§ = param1;
            loop0:
            while(true)
            {
               §0n§ = param2;
               loop1:
               while(true)
               {
                  this.§;9§ = §8!5§.GetLocalPoint(param3);
                  loop2:
                  do
                  {
                     this.§-y§ = §0n§.GetLocalPoint(param3);
                     while(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           this.§0v§ = §8!5§.GetLocalVector(param4);
                           while(!(_loc6_ && param1))
                           {
                              this.§;=§ = §0n§.GetAngle() - §8!5§.GetAngle();
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  while(!(_loc5_ || param2));
                  
               }
            }
         }
      }
   }
}
