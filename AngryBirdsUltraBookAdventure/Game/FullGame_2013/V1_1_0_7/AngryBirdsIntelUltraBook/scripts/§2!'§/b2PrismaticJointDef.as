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
         if(!(_loc2_ && _loc2_))
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               while(true)
               {
                  this.§ !S§ = new b2Vec2();
                  loop2:
                  for(; !_loc2_; while(_loc1_ || this)
                  {
                  })
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§<w§;
                        continue loop0;
                        addr91:
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        this.§ !q§ = false;
                        loop11:
                        while(_loc1_ || this)
                        {
                           this.§;!Q§ = 0;
                           while(_loc1_ || _loc1_)
                           {
                              this.motorSpeed = 0;
                              if(_loc1_)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    return;
                                 }
                                 continue loop11;
                                 continue loop11;
                              }
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr91);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§ use§ = 0;
                                    continue loop10;
                                 }
                                 addr103:
                              }
                           }
                           addr46:
                           continue loop2;
                        }
                        while(!_loc2_)
                        {
                           this.§;!R§ = 0;
                           §§goto(addr103);
                           §§goto(addr58);
                        }
                        addr58:
                        while(true)
                        {
                           this.§&!A§ = false;
                           §§goto(addr108);
                        }
                        addr108:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-!u§ = 0;
            §§goto(addr115);
         }
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §19§ = param1;
         }
         loop0:
         while(true)
         {
            §"@§ = param2;
            while(true)
            {
               this.§'G§ = §19§.GetLocalPoint(param3);
               continue loop0;
               addr77:
               if(_loc6_ || param2)
               {
                  this.§ !S§ = §19§.GetLocalVector(param4);
                  do
                  {
                     this.§-!u§ = §"@§.GetAngle() - §19§.GetAngle();
                  }
                  while(_loc5_);
                  
                  addr94:
                  if(_loc6_ || param2)
                  {
                     return;
                     addr70:
                  }
                  while(!(_loc5_ && param2))
                  {
                     §§goto(addr77);
                     §§goto(addr94);
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
