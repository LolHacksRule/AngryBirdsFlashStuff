package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §&#M§:b2Vec2;
      
      public var §#d§:Boolean;
      
      public var §2!@§:Number;
      
      public var §5!F§:Number;
      
      public var §!#G§:Boolean;
      
      public var §0A§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!"4§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§#"B§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§&#M§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     addr135:
                     loop4:
                     for(; !(_loc2_ && this); if(_loc1_ || this)
                     {
                        continue loop0;
                     })
                     {
                        this.§&#M§.Set(1,0);
                        loop5:
                        for(; _loc1_ || _loc1_; if(!(_loc2_ && _loc1_))
                        {
                           this.§5!F§ = 0;
                           continue loop1;
                        })
                        {
                           this.§#d§ = false;
                           loop6:
                           while(true)
                           {
                              this.§2!@§ = 0;
                              addr96:
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop5;
                           }
                        }
                        while(true)
                        {
                           type = b2Joint.§=#9§;
                           continue loop4;
                           §§goto(addr122);
                        }
                        addr122:
                     }
                  }
                  loop8:
                  while(!(_loc2_ && this))
                  {
                     this.§!#G§ = false;
                     loop9:
                     while(!_loc2_)
                     {
                        this.§0A§ = 0;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop9;
                           }
                           §§goto(addr48);
                           addr62:
                           this.motorSpeed = 0;
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              continue loop8;
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr96);
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr146);
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §9"P§ = param1;
            loop0:
            while(true)
            {
               §continue§ = param2;
               while(true)
               {
                  this.§!"4§ = §9"P§.GetLocalPoint(param3);
                  while(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        this.§#"B§ = §continue§.GetLocalPoint(param3);
                        loop3:
                        while(!(_loc5_ && param3))
                        {
                           while(true)
                           {
                              this.§&#M§ = §9"P§.GetLocalVector(param4);
                              if(!(_loc5_ && this))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
   }
}
