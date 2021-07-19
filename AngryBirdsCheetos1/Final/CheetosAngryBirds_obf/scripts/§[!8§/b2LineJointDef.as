package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §0v§:b2Vec2;
      
      public var §1&§:Boolean;
      
      public var §[F§:Number;
      
      public var §>Z§:Number;
      
      public var §^=§:Boolean;
      
      public var §>!Y§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;9§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§-y§ = new b2Vec2();
               addr139:
               while(true)
               {
                  this.§0v§ = new b2Vec2();
                  addr123:
                  while(true)
                  {
                     super();
                     addr117:
                     while(true)
                     {
                        type = b2Joint.§,@§;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §8!5§ = param1;
            while(true)
            {
               §0n§ = param2;
               loop3:
               while(!(_loc5_ && this))
               {
                  this.§0v§ = §8!5§.GetLocalVector(param4);
                  if(!_loc5_)
                  {
                     addr32:
                     if(_loc5_ && param3)
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              this.§-y§ = §0n§.GetLocalPoint(param3);
                              continue loop3;
                           }
                           addr87:
                           while(true)
                           {
                              this.§;9§ = §8!5§.GetLocalPoint(param3);
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
   }
}
