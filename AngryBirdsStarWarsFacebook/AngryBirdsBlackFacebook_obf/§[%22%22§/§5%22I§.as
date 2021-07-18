package §[""§
{
   import §+#$§.b2Body;
   import §[R§.b2Vec2;
   
   public class §5"I§
   {
       
      
      private var §`!H§:b2Body;
      
      private var §0!Q§:b2Vec2;
      
      private var §9#8§:b2Vec2;
      
      private var §!"K§:Number;
      
      public function §5"I§(param1:b2Body, param2:b2Vec2, param3:b2Vec2, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§`!H§ = param1;
            do
            {
               this.§0!Q§ = param2;
               continue loop0;
            }
            while(!_loc6_);
            
            return;
         }
      }
      
      public function get body() : b2Body
      {
         return this.§`!H§;
      }
      
      public function get collisionPoint() : b2Vec2
      {
         return this.§0!Q§;
      }
      
      public function get normal() : b2Vec2
      {
         return this.§9#8§;
      }
      
      public function get fraction() : Number
      {
         return this.§!"K§;
      }
   }
}
