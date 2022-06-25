package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §!!i§:b2Vec2;
      
      public var §1!@§:Number;
      
      public var §"!8§:Boolean;
      
      public var §#!e§:Number;
      
      public var §5!y§:Number;
      
      public var §;!J§:Boolean;
      
      public var §'&§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!9§ = new b2Vec2();
            while(true)
            {
               this.§^G§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!!i§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     loop3:
                     for(; !(_loc2_ && this); while(_loc1_ || this)
                     {
                        this.§5!y§ = 0;
                        §§goto(addr85);
                     })
                     {
                        type = b2Joint.§%Y§;
                        loop4:
                        while(true)
                        {
                           this.§!!i§.Set(1,0);
                           loop5:
                           while(true)
                           {
                              this.§1!@§ = 0;
                              while(_loc1_)
                              {
                                 this.§"!8§ = false;
                                 while(true)
                                 {
                                    this.§#!e§ = 0;
                                    continue loop3;
                                    addr29:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 addr56:
                                 if(!(_loc1_ || this))
                                 {
                                    continue;
                                 }
                                 this.motorSpeed = 0;
                                 addr73:
                                 if(_loc2_)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr56);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§;!J§ = false;
                                             }
                                             addr85:
                                          }
                                       }
                                       while(!_loc2_)
                                       {
                                          this.§'&§ = 0;
                                          continue loop11;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 §§goto(addr29);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §-!O§ = param1;
         }
         loop0:
         while(true)
         {
            §3!u§ = param2;
            loop1:
            while(true)
            {
               this.§9!9§ = §-!O§.GetLocalPoint(param3);
               loop2:
               while(true)
               {
                  this.§^G§ = §3!u§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§!!i§ = §-!O§.GetLocalVector(param4);
                     while(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           this.§1!@§ = §3!u§.GetAngle() - §-!O§.GetAngle();
                           if(!(_loc6_ && param2))
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
   }
}
