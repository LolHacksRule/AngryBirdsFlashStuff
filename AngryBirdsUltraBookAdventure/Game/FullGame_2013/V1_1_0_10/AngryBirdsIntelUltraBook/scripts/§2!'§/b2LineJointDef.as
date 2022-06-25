package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var § !S§:b2Vec2;
      
      public var §&!A§:Boolean;
      
      public var §;!R§:Number;
      
      public var § use§:Number;
      
      public var § !q§:Boolean;
      
      public var §;!Q§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
                  while(true)
                  {
                     super();
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        type = b2Joint.§-f§;
                        loop4:
                        while(true)
                        {
                           this.§ !S§.Set(1,0);
                           while(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              this.§&!A§ = false;
                              loop6:
                              while(true)
                              {
                                 this.§;!R§ = 0;
                                 while(true)
                                 {
                                    this.§ use§ = 0;
                                    addr57:
                                    while(_loc1_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              addr45:
                              if(_loc1_ || _loc1_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§;!Q§ = 0;
                                    while(!_loc2_)
                                    {
                                       this.motorSpeed = 0;
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop10;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr43:
                                    while(_loc1_)
                                    {
                                       §§goto(addr45);
                                    }
                                    §§goto(addr57);
                                 }
                                 return;
                                 addr52:
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               loop1:
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     this.§'G§ = §19§.GetLocalPoint(param3);
                     while(_loc5_)
                     {
                        this.§true§ = §"@§.GetLocalPoint(param3);
                        do
                        {
                           this.§ !S§ = §19§.GetLocalVector(param4);
                        }
                        while(!_loc5_);
                        
                        if(_loc5_ || param1)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
