package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §#"$§:b2Vec2;
      
      public var §+!H§:Number;
      
      public var §4!E§:Boolean;
      
      public var §32§:Number;
      
      public var §[!8§:Number;
      
      public var §7!S§:Boolean;
      
      public var §&E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!2§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ !c§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§#"$§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§=!`§;
                        while(true)
                        {
                           this.§#"$§.Set(1,0);
                           loop5:
                           for(; !_loc2_; if(_loc2_ && this)
                           {
                              continue;
                           },§§goto(addr69))
                           {
                              this.§+!H§ = 0;
                              while(_loc1_)
                              {
                                 loop9:
                                 while(_loc1_ || this)
                                 {
                                    this.§[!8§ = 0;
                                    loop10:
                                    while(true)
                                    {
                                       this.§7!S§ = false;
                                       addr84:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop9;
                                       }
                                       addr55:
                                       continue loop3;
                                       while(true)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             continue loop5;
                                          }
                                          continue loop10;
                                          addr69:
                                          this.motorSpeed = 0;
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop1;
                                             }
                                             addr115:
                                             while(!_loc2_)
                                             {
                                                this.§32§ = 0;
                                                continue loop9;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr84);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§4!E§ = false;
            §§goto(addr115);
         }
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §@!<§ = param1;
            loop0:
            while(true)
            {
               §3j§ = param2;
               while(true)
               {
                  this.§!2§ = §@!<§.GetLocalPoint(param3);
                  while(!_loc5_)
                  {
                     continue loop0;
                     if(!(_loc5_ && param3))
                     {
                        return;
                        addr56:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§#"$§ = §@!<§.GetLocalVector(param4);
            while(_loc6_)
            {
               this.§+!H§ = §3j§.GetAngle() - §@!<§.GetAngle();
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr56);
      }
   }
}
