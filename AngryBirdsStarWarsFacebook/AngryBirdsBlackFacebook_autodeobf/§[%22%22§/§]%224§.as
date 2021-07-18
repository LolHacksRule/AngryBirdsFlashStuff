package §[""§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   
   public class §]"4§
   {
       
      
      private var §+!Z§:Vector.<§5"I§>;
      
      public function §]"4§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var _loc5_:b2Vec2 = new b2Vec2(param1,param2);
         var _loc6_:b2Vec2 = new b2Vec2(param3,param4);
         this.§+!Z§ = new Vector.<§5"I§>();
         var _loc7_:b2World;
         (_loc7_ = §,!q§.§9!,§.levelObjects.§2#G§.mLevelEngine.mWorld).RayCast(this.§1"Y§,_loc5_,_loc6_);
      }
      
      public function §6n§() : void
      {
         this.§+!Z§.sort(this.§ b§);
      }
      
      public function get §;"b§() : Vector.<§5"I§>
      {
         return this.§+!Z§;
      }
      
      public function set §;"b§(param1:Vector.<§5"I§>) : void
      {
         this.§+!Z§ = param1;
      }
      
      public function §-!I§() : Boolean
      {
         if(this.§+!Z§ && this.§+!Z§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      private function §1"Y§(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : void
      {
         var _loc6_:§5"I§ = null;
         var _loc5_:b2Body = param1.GetBody();
         if(!param1.§!W§())
         {
            _loc6_ = new §5"I§(_loc5_,param2,param3,param4);
            this.§+!Z§.push(_loc6_);
         }
      }
      
      private function § b§(param1:§5"I§, param2:§5"I§) : int
      {
         if(param1.fraction < param2.fraction)
         {
            return -1;
         }
         if(param1.fraction > param2.fraction)
         {
            return 1;
         }
         return 0;
      }
   }
}
