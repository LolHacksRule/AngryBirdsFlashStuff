package §<a§
{
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §7P§.§7B§;
   import §[R§.b2Vec2;
   
   public class §4#P§
   {
       
      
      private var mWorld:b2World;
      
      private var §5"X§:Array;
      
      public function §4#P§(param1:b2World)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5"X§ = [];
            while(true)
            {
               super();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.mWorld = param1;
            if(_loc3_ || _loc3_)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §@"@§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§5"X§ = [];
            while(true)
            {
               this.mWorld.RayCast(this.§1"Y§,new b2Vec2(param1,param2),new b2Vec2(param3,param4));
               while(!_loc5_)
               {
                  this.§5"X§.sortOn("rayFraction",Array.NUMERIC);
                  if(_loc6_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §1"Y§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§8#F§ = null;
         var _loc5_:§7B§;
         if(_loc5_ = param1.GetBody().GetUserData() as §7B§)
         {
            _loc6_ = new §8#F§(_loc5_,new b2Vec2(param2.x,param2.y),new b2Vec2(param3.x,param3.y),param4);
            if(_loc8_ || param1)
            {
               this.§5"X§.push(_loc6_);
            }
         }
      }
      
      public function get §""h§() : int
      {
         return this.§5"X§.length;
      }
      
      public function §'"L§(param1:int) : §8#F§
      {
         return this.§5"X§[param1];
      }
   }
}
