package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §8!<§:b2Vec2;
      
      public var §+"!§:Boolean;
      
      public var §-!L§:Number;
      
      public var § !W§:Number;
      
      public var §+!b§:Boolean;
      
      public var §7!;§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§!8§ = new b2Vec2();
            while(true)
            {
               this.§@W§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§8!<§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§2",§;
                        addr116:
                        while(!_loc1_)
                        {
                           this.§8!<§.Set(1,0);
                           while(true)
                           {
                              this.§+"!§ = false;
                              loop6:
                              while(_loc2_)
                              {
                                 this.§-!L§ = 0;
                                 loop7:
                                 while(!_loc1_)
                                 {
                                    this.§ !W§ = 0;
                                    loop8:
                                    while(!_loc1_)
                                    {
                                       this.§+!b§ = false;
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§7!;§ = 0;
                                                   continue loop1;
                                                }
                                                return;
                                                addr39:
                                                addr82:
                                             }
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr82);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §+,§ = param1;
            loop0:
            while(true)
            {
               §"R§ = param2;
               loop1:
               while(true)
               {
                  this.§!8§ = §+,§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§@W§ = §"R§.GetLocalPoint(param3);
                     loop3:
                     while(!(_loc5_ && param2))
                     {
                        while(true)
                        {
                           this.§8!<§ = §+,§.GetLocalVector(param4);
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
