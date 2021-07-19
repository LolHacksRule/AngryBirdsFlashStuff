package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §!#W§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!"4§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§#"B§ = new b2Vec2();
               addr86:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §9"P§ = param1;
            loop0:
            while(true)
            {
               §continue§ = param2;
               while(true)
               {
                  this.§!"4§.SetV(§9"P§.GetLocalPoint(param3));
                  while(!(_loc4_ && param1))
                  {
                     this.§#"B§.SetV(§continue§.GetLocalPoint(param3));
                     loop3:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           this.§!#W§ = §continue§.GetAngle() - §9"P§.GetAngle();
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
   }
}
