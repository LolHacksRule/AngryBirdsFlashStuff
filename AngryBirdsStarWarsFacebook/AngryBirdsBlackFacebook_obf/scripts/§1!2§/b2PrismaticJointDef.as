package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §&#M§:b2Vec2;
      
      public var §!#W§:Number;
      
      public var §#d§:Boolean;
      
      public var §2!@§:Number;
      
      public var §5!F§:Number;
      
      public var §!#G§:Boolean;
      
      public var §0A§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!"4§ = new b2Vec2();
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
                     loop3:
                     while(!_loc1_)
                     {
                        type = b2Joint.§`#^§;
                        while(true)
                        {
                           this.§&#M§.Set(1,0);
                           addr118:
                           while(!(_loc1_ && _loc2_))
                           {
                              if(!_loc1_)
                              {
                                 this.§!#W§ = 0;
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§!#G§ = false;
               §§goto(addr44);
            }
         }
         §§goto(addr87);
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §9"P§ = param1;
            loop0:
            while(true)
            {
               §continue§ = param2;
               while(true)
               {
                  this.§!"4§ = §9"P§.GetLocalPoint(param3);
                  addr85:
                  while(_loc5_ || this)
                  {
                     this.§#"B§ = §continue§.GetLocalPoint(param3);
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
