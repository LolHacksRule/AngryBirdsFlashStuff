package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §"! §:b2Vec2;
      
      public var §-Q§:Boolean;
      
      public var §class§:Number;
      
      public var §>^§:Number;
      
      public var §2!s§:Boolean;
      
      public var §4!C§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!%§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§=!I§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.§"! § = new b2Vec2();
               loop2:
               while(true)
               {
                  super();
                  loop3:
                  while(true)
                  {
                     type = b2Joint.§&M§;
                     while(true)
                     {
                        this.§"! §.Set(1,0);
                        while(_loc2_)
                        {
                           continue loop2;
                           loop10:
                           while(_loc2_ || _loc2_)
                           {
                              this.motorSpeed = 0;
                              if(_loc1_)
                              {
                                 continue;
                              }
                              addr30:
                              if(_loc2_ || this)
                              {
                                 addr37:
                                 if(_loc1_)
                                 {
                                    while(_loc2_)
                                    {
                                       this.§2!s§ = false;
                                       while(true)
                                       {
                                          this.§4!C§ = 0;
                                          continue loop10;
                                          §§goto(addr30);
                                       }
                                       §§goto(addr37);
                                    }
                                    while(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                    addr87:
                                    addr80:
                                 }
                                 addr39:
                                 if(_loc1_ && _loc1_)
                                 {
                                    while(true)
                                    {
                                       this.§class§ = 0;
                                       §§goto(addr87);
                                       §§goto(addr39);
                                    }
                                    addr101:
                                 }
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr75);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §0w§ = param1;
            loop0:
            while(true)
            {
               §^2§ = param2;
               loop1:
               while(true)
               {
                  this.§4!%§ = §0w§.GetLocalPoint(param3);
                  while(!_loc6_)
                  {
                     while(_loc5_ || param3)
                     {
                        this.§"! § = §0w§.GetLocalVector(param4);
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              return;
                              addr43:
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§=!I§ = §^2§.GetLocalPoint(param3);
            §§goto(addr60);
         }
         §§goto(addr43);
      }
   }
}
