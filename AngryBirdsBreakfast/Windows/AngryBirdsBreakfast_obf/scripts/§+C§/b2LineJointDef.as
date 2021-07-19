package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §@`§:b2Vec2;
      
      public var §+!<§:Boolean;
      
      public var §9"'§:Number;
      
      public var §<"%§:Number;
      
      public var §[!W§:Boolean;
      
      public var §8!B§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0O§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ @§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§@`§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        type = b2Joint.§8f§;
                        loop4:
                        while(true)
                        {
                           this.§@`§.Set(1,0);
                           while(true)
                           {
                              this.§+!<§ = false;
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    while(true)
                                    {
                                       this.§9"'§ = 0;
                                       continue loop1;
                                    }
                                    return;
                                    addr43:
                                    addr112:
                                 }
                                 break;
                                 addr69:
                                 while(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       this.§[!W§ = false;
                                       loop10:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          this.§8!B§ = 0;
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop10;
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                       addr57:
                                    }
                                    continue loop0;
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr43);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §'!n§ = param1;
         }
         loop0:
         while(true)
         {
            § 5§ = param2;
            while(true)
            {
               this.§0O§ = §'!n§.GetLocalPoint(param3);
               while(!_loc5_)
               {
                  this.§ @§ = § 5§.GetLocalPoint(param3);
                  while(_loc6_ || param2)
                  {
                     continue loop0;
                     this.§@`§ = §'!n§.GetLocalVector(param4);
                     if(_loc6_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
   }
}
