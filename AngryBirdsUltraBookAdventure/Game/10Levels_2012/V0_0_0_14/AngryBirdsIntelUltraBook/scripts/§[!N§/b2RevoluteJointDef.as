package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §1!@§:Number;
      
      public var §"!8§:Boolean;
      
      public var §8!7§:Number;
      
      public var §'!w§:Number;
      
      public var §;!J§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §%!9§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!9§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§^G§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     while(_loc2_ || _loc2_)
                     {
                        this.§9!9§.Set(0,0);
                        loop4:
                        for(; _loc2_; while(_loc2_ || this)
                        {
                           this.§'!w§ = 0;
                           §§goto(addr83);
                        })
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           this.§^G§.Set(0,0);
                           loop5:
                           while(true)
                           {
                              this.§1!@§ = 0;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    this.§8!7§ = 0;
                                    continue loop4;
                                 }
                                 continue loop5;
                                 loop11:
                                 while(_loc2_ || this)
                                 {
                                    this.§;!J§ = false;
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    addr30:
                                    if(_loc2_ || this)
                                    {
                                       addr37:
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             this.§%!9§ = 0;
                                             while(true)
                                             {
                                                this.motorSpeed = 0;
                                                addr61:
                                                while(_loc2_)
                                                {
                                                   this.§"!8§ = false;
                                                   continue loop11;
                                                   §§goto(addr30);
                                                }
                                             }
                                             §§goto(addr37);
                                          }
                                          addr83:
                                       }
                                       return;
                                       addr44:
                                    }
                                    §§goto(addr61);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §-!O§ = param1;
            while(true)
            {
               §3!u§ = param2;
               addr86:
               if(_loc4_ || param2)
               {
                  this.§^G§ = §3!u§.GetLocalPoint(param3);
                  do
                  {
                     this.§1!@§ = §3!u§.GetAngle() - §-!O§.GetAngle();
                  }
                  while(!(_loc4_ || param3));
                  
                  addr93:
                  if(_loc5_ && param3)
                  {
                     while(_loc4_)
                     {
                        §§goto(addr86);
                        §§goto(addr93);
                     }
                     while(true)
                     {
                        this.§9!9§ = §-!O§.GetLocalPoint(param3);
                        §§goto(addr84);
                     }
                     addr84:
                     addr98:
                  }
                  return;
               }
            }
         }
         §§goto(addr98);
      }
   }
}
