package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §"$§:b2Vec2;
      
      public var §?P§:Boolean;
      
      public var §8!`§:Number;
      
      public var §?7§:Number;
      
      public var §"!<§:Boolean;
      
      public var §;!9§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`!V§ = new b2Vec2();
            while(true)
            {
               this.§6$§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§"$§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§^!L§;
                        addr147:
                        while(!_loc2_)
                        {
                        }
                     }
                     addr67:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     this.motorSpeed = 0;
                     addr84:
                     if(_loc1_ || this)
                     {
                        addr39:
                        if(_loc1_ || _loc1_)
                        {
                           addr46:
                           if(!(_loc1_ || _loc2_))
                           {
                              while(true)
                              {
                                 this.§8!`§ = 0;
                                 loop8:
                                 while(true)
                                 {
                                    this.§?7§ = 0;
                                    addr94:
                                    while(true)
                                    {
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop8;
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       this.§"!<§ = false;
                                       loop10:
                                       while(true)
                                       {
                                          this.§;!9§ = 0;
                                          addr58:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc2_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§goto(addr67);
                                             §§goto(addr84);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr39);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr46);
                              }
                              addr113:
                           }
                           return;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr58);
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               this.§?P§ = false;
               §§goto(addr113);
            }
         }
         while(true)
         {
            this.§"$§.Set(1,0);
            §§goto(addr121);
         }
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §^!G§ = param1;
            loop0:
            while(true)
            {
               §-z§ = param2;
               while(true)
               {
                  this.§`!V§ = §^!G§.GetLocalPoint(param3);
                  loop2:
                  while(_loc6_ || param1)
                  {
                     while(true)
                     {
                        this.§6$§ = §-z§.GetLocalPoint(param3);
                        do
                        {
                           this.§"$§ = §^!G§.GetLocalVector(param4);
                        }
                        while(!_loc6_);
                        
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
   }
}
