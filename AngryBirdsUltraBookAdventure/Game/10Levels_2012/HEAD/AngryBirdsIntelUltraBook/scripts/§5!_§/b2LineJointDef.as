package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §<!Y§:b2Vec2;
      
      public var §!X§:Boolean;
      
      public var §1!D§:Number;
      
      public var §#g§:Number;
      
      public var §0e§:Boolean;
      
      public var §#M§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'!<§ = new b2Vec2();
            while(true)
            {
               this.§1!0§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§<!Y§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        type = b2Joint.§+!>§;
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
                                 this.§1!D§ = 0;
                                 loop8:
                                 while(true)
                                 {
                                    this.§#g§ = 0;
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
                                       this.§0e§ = false;
                                       loop10:
                                       while(true)
                                       {
                                          this.§#M§ = 0;
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
               this.§!X§ = false;
               §§goto(addr113);
            }
         }
         while(true)
         {
            this.§<!Y§.Set(1,0);
            §§goto(addr121);
         }
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §7!K§ = param1;
            loop0:
            while(true)
            {
               §'P§ = param2;
               while(true)
               {
                  this.§'!<§ = §7!K§.GetLocalPoint(param3);
                  loop2:
                  while(_loc6_ || param1)
                  {
                     while(true)
                     {
                        this.§1!0§ = §'P§.GetLocalPoint(param3);
                        do
                        {
                           this.§<!Y§ = §7!K§.GetLocalVector(param4);
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
