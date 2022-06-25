package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var § !S§:b2Vec2;
      
      public var §-!u§:Number;
      
      public var §&!A§:Boolean;
      
      public var §;!R§:Number;
      
      public var § use§:Number;
      
      public var § !q§:Boolean;
      
      public var §;!Q§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§ !S§ = new b2Vec2();
                  addr169:
                  while(true)
                  {
                     super();
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        continue loop1;
                     }
                     this.§&!A§ = false;
                     while(true)
                     {
                        this.§;!R§ = 0;
                        loop8:
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§ use§ = 0;
                           loop9:
                           while(true)
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop8;
                              }
                              if(!_loc1_)
                              {
                                 break;
                              }
                              this.§ !q§ = false;
                              loop10:
                              while(_loc1_)
                              {
                                 this.§;!Q§ = 0;
                                 while(true)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr67:
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    this.§ !S§.Set(1,0);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§-!u§ = 0;
                                          break loop9;
                                       }
                                       continue loop0;
                                       addr41:
                                       if(!(_loc1_ || this))
                                       {
                                          continue;
                                       }
                                       addr48:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          return;
                                       }
                                       addr163:
                                       while(true)
                                       {
                                          type = b2Joint.§<w§;
                                          continue loop4;
                                          §§goto(addr48);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr169);
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           continue loop6;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               while(!(_loc6_ && this))
               {
                  this.§'G§ = §19§.GetLocalPoint(param3);
                  loop2:
                  while(!(_loc6_ && param1))
                  {
                     this.§true§ = §"@§.GetLocalPoint(param3);
                     loop3:
                     do
                     {
                        this.§ !S§ = §19§.GetLocalVector(param4);
                        while(!_loc6_)
                        {
                           this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
                           if(!(_loc6_ && param2))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(!(_loc5_ || param3));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
