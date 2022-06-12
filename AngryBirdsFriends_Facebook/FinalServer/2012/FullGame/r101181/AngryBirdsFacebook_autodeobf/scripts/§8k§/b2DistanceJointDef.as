package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var length:Number;
      
      public var §>"9§:Number;
      
      public var §""2§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#C§ = new b2Vec2();
            while(true)
            {
               this.§^!J§ = new b2Vec2();
               loop1:
               while(!_loc2_)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§1!A§;
                     loop5:
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           this.§""2§ = 0;
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr29:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr36:
                              if(_loc2_ && _loc2_)
                              {
                                 while(true)
                                 {
                                    this.length = 1;
                                    addr82:
                                    while(true)
                                    {
                                       this.§>"9§ = 0;
                                       continue loop5;
                                       §§goto(addr29);
                                    }
                                    §§goto(addr36);
                                 }
                                 addr88:
                              }
                              return;
                           }
                           §§goto(addr82);
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §!!v§ = param1;
         }
         loop0:
         while(true)
         {
            §'!4§ = param2;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§#C§.SetV(§!!v§.GetLocalPoint(param3));
                  while(_loc7_)
                  {
                     this.§^!J§.SetV(§'!4§.GetLocalPoint(param4));
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     §§push(param4.x);
                     if(!_loc8_)
                     {
                        §§push(§§pop() - param3.x);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc5_:* = §§pop();
                     §§push(param4.y);
                     if(!(_loc8_ && param1))
                     {
                        §§push(§§pop() - param3.y);
                        if(_loc7_)
                        {
                           addr91:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc8_)
                        {
                           this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                           this.§>"9§ = 0;
                           addr121:
                           if(_loc7_)
                           {
                              this.§""2§ = 0;
                              if(_loc8_)
                              {
                                 §§goto(addr121);
                              }
                              return;
                              addr116:
                           }
                           addr135:
                           §§goto(addr135);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr91);
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
