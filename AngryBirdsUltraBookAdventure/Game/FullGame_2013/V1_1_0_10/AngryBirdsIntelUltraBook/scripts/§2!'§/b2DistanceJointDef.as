package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var length:Number;
      
      public var §9!@§:Number;
      
      public var §6V§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               while(true)
               {
                  super();
                  loop2:
                  for(; !_loc1_; if(_loc2_ || _loc1_)
                  {
                     return;
                     addr59:
                  })
                  {
                     type = b2Joint.§8-§;
                     while(true)
                     {
                        this.length = 1;
                        while(_loc2_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9!@§ = 0;
            while(_loc2_)
            {
               this.§6V§ = 0;
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr35);
            }
            §§goto(addr89);
         }
         §§goto(addr59);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §19§ = param1;
            loop0:
            while(true)
            {
               §"@§ = param2;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§'G§.SetV(§19§.GetLocalPoint(param3));
                     do
                     {
                        this.§true§.SetV(§"@§.GetLocalPoint(param4));
                     }
                     while(!(_loc7_ || param3));
                     
                     if(!(_loc7_ || param1))
                     {
                        break;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     §§push(param4.x);
                     if(_loc7_)
                     {
                        §§push(§§pop() - param3.x);
                        if(_loc7_)
                        {
                           addr80:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        §§push(param4.y);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() - param3.y);
                           if(_loc7_ || param2)
                           {
                              addr101:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc7_ || param3)
                           {
                              this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                              do
                              {
                                 this.§9!@§ = 0;
                                 do
                                 {
                                    this.§6V§ = 0;
                                 }
                                 while(!(_loc7_ || this));
                                 
                              }
                              while(_loc8_ && param3);
                              
                           }
                           return;
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr42);
      }
   }
}
