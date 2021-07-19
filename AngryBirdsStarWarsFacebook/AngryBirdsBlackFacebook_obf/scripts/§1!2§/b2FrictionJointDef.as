package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §8!i§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!"4§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§#"B§ = new b2Vec2();
            loop1:
            while(true)
            {
               super();
               loop2:
               while(true)
               {
                  type = b2Joint.§0+§;
                  loop3:
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§8!i§ = 0;
                        while(_loc1_)
                        {
                           this.maxTorque = 0;
                           if(_loc1_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §9"P§ = param1;
         }
         do
         {
            §continue§ = param2;
            do
            {
               this.§!"4§.SetV(§9"P§.GetLocalPoint(param3));
               do
               {
                  this.§#"B§.SetV(§continue§.GetLocalPoint(param3));
               }
               while(_loc5_ && this);
               
            }
            while(!(_loc4_ || param2));
            
         }
         while(!(_loc4_ || this));
         
      }
   }
}
