package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §=L§:b2Vec2;
      
      public var § c§:Boolean;
      
      public var §&#§:Number;
      
      public var §7o§:Number;
      
      public var §32§:Boolean;
      
      public var §&j§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!!U§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§"!'§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§=L§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.set;
                        loop4:
                        while(true)
                        {
                           this.§=L§.Set(1,0);
                           loop5:
                           while(!_loc2_)
                           {
                              this.§ c§ = false;
                              loop6:
                              while(true)
                              {
                                 this.§&#§ = 0;
                                 while(!_loc2_)
                                 {
                                    loop9:
                                    while(_loc1_ || _loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                       while(true)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             continue loop6;
                                          }
                                          continue loop9;
                                          addr62:
                                          this.motorSpeed = 0;
                                          if(_loc1_)
                                          {
                                             addr34:
                                             if(!(_loc2_ && this))
                                             {
                                                if(!_loc2_)
                                                {
                                                   return;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7o§ = 0;
            §§goto(addr84);
         }
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §-'§ = param1;
            loop0:
            while(true)
            {
               §<!L§ = param2;
               while(true)
               {
                  this.§!!U§ = §-'§.GetLocalPoint(param3);
                  while(!(_loc5_ && param3))
                  {
                     this.§"!'§ = §<!L§.GetLocalPoint(param3);
                     continue loop0;
                     if(!_loc5_)
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
