package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §0_§:b2Vec2;
      
      public var §00§:b2Vec2;
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §-!R§:Number;
      
      public var §1_§:Number;
      
      public var §^l§:Number;
      
      public var §+!%§:Number;
      
      public var §6F§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0_§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§00§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§;9§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§-y§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        addr171:
                        while(true)
                        {
                           type = b2Joint.§5O§;
                           continue loop0;
                        }
                        addr74:
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        this.§6F§ = 1;
                        loop15:
                        while(_loc2_)
                        {
                           collideConnected = true;
                           if(_loc1_)
                           {
                              continue;
                           }
                           addr30:
                           if(_loc2_ || _loc1_)
                           {
                              addr37:
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              addr108:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    this.§^l§ = 0;
                                    break loop15;
                                 }
                                 break;
                                 §§goto(addr37);
                              }
                              while(true)
                              {
                                 this.§1_§ = 0;
                                 §§goto(addr101);
                              }
                              addr101:
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 addr60:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr67:
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr74);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§;9§.Set(-1,0);
                                          §§goto(addr67);
                                       }
                                       addr143:
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§-y§.Set(1,0);
                                    §§goto(addr60);
                                 }
                              }
                              addr115:
                              addr150:
                              while(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                              while(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§00§.Set(1,1);
                                       §§goto(addr143);
                                    }
                                    addr154:
                                 }
                                 else
                                 {
                                    §§goto(addr171);
                                 }
                                 §§goto(addr115);
                              }
                              continue loop0;
                              §§goto(addr30);
                           }
                           continue loop3;
                           addr58:
                        }
                        while(true)
                        {
                           this.§+!%§ = 0;
                           §§goto(addr58);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param3)
         {
            §8!5§ = param1;
         }
         loop0:
         while(true)
         {
            §0n§ = param2;
            loop1:
            while(true)
            {
               this.§0_§.SetV(param3);
               loop2:
               while(true)
               {
                  this.§00§.SetV(param4);
                  loop3:
                  while(!_loc13_)
                  {
                     loop4:
                     while(true)
                     {
                        this.§;9§ = §8!5§.GetLocalPoint(param5);
                        while(!_loc13_)
                        {
                           if(_loc14_)
                           {
                              this.§-y§ = §0n§.GetLocalPoint(param6);
                              if(!_loc13_)
                              {
                                 continue loop4;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
            }
         }
      }
   }
}
