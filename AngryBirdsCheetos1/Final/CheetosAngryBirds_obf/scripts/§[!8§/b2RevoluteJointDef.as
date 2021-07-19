package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §;=§:Number;
      
      public var §1&§:Boolean;
      
      public var §4O§:Number;
      
      public var §0"§:Number;
      
      public var §^=§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §5!F§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§;9§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§-y§ = new b2Vec2();
            loop1:
            while(true)
            {
               super();
               loop2:
               while(true)
               {
                  type = b2Joint.e_revoluteJoint;
                  loop3:
                  while(true)
                  {
                     this.§;9§.Set(0,0);
                     while(!_loc2_)
                     {
                        continue loop0;
                        loop5:
                        while(_loc1_ || _loc2_)
                        {
                           this.§;=§ = 0;
                           loop6:
                           while(true)
                           {
                              this.§4O§ = 0;
                              loop7:
                              while(!_loc2_)
                              {
                                 this.§0"§ = 0;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                              addr62:
                              if(_loc1_ || this)
                              {
                                 this.motorSpeed = 0;
                                 loop10:
                                 do
                                 {
                                    this.§1&§ = false;
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       addr60:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr62);
                                          }
                                          else
                                          {
                                             §§goto(addr84);
                                          }
                                       }
                                       addr50:
                                       continue loop6;
                                       this.§^=§ = false;
                                       if(!_loc2_)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 while(!_loc1_);
                                 
                                 return;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §8!5§ = param1;
            loop0:
            while(true)
            {
               §0n§ = param2;
               while(true)
               {
                  this.§;9§ = §8!5§.GetLocalPoint(param3);
                  while(!(_loc4_ && param1))
                  {
                     this.§-y§ = §0n§.GetLocalPoint(param3);
                     loop3:
                     while(_loc5_)
                     {
                        if(_loc5_)
                        {
                           while(true)
                           {
                              this.§;=§ = §0n§.GetAngle() - §8!5§.GetAngle();
                              if(_loc5_ || param2)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
