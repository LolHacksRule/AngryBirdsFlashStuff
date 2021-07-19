package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var §[!A§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;9§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§-y§ = new b2Vec2();
               addr88:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §8!5§ = param1;
            while(true)
            {
               §0n§ = param2;
               loop1:
               while(!_loc4_)
               {
                  this.§;9§.SetV(§8!5§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§-y§.SetV(§0n§.GetLocalPoint(param3));
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
   }
}
