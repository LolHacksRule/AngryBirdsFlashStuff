package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §8"C§:b2Vec2;
      
      public var §3"%§:Boolean;
      
      public var §[!7§:Number;
      
      public var §<!T§:Number;
      
      public var §[!c§:Boolean;
      
      public var §22§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§#C§ = new b2Vec2();
            while(true)
            {
               this.§^!J§ = new b2Vec2();
               addr164:
               while(true)
               {
                  this.§8"C§ = new b2Vec2();
               }
            }
            addr169:
         }
         while(true)
         {
            super();
            while(true)
            {
               type = b2Joint.§7"<§;
               loop4:
               while(true)
               {
                  this.§8"C§.Set(1,0);
                  loop5:
                  while(true)
                  {
                     this.§3"%§ = false;
                     loop6:
                     while(true)
                     {
                        this.§[!7§ = 0;
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop4;
                           }
                           continue loop6;
                           addr88:
                           while(_loc2_ || _loc2_)
                           {
                              this.§[!c§ = false;
                              while(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    this.§22§ = 0;
                                    continue loop5;
                                 }
                                 §§goto(addr169);
                                 if(_loc2_ || this)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                        §§goto(addr164);
                     }
                  }
               }
            }
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            if(_loc2_)
            {
               this.§<!T§ = 0;
               §§goto(addr88);
            }
            §§goto(addr164);
         }
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §!!v§ = param1;
            while(true)
            {
               §'!4§ = param2;
               loop1:
               while(_loc6_ || param2)
               {
                  while(true)
                  {
                     this.§#C§ = §!!v§.GetLocalPoint(param3);
                     do
                     {
                        this.§^!J§ = §'!4§.GetLocalPoint(param3);
                        do
                        {
                           this.§8"C§ = §!!v§.GetLocalVector(param4);
                        }
                        while(_loc5_);
                        
                     }
                     while(!_loc6_);
                     
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
   }
}
