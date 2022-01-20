package §5U§
{
   import §+S§.b2Vec2;
   import §4j§.§0K§;
   import §4j§.§9M§;
   import flash.geom.Point;
   
   public class § var§
   {
       
      
      private var §;n§:§0K§;
      
      private var §8!9§:Vector.<§-!7§>;
      
      public var §#i§:Number = 10;
      
      public var §5o§:Number = 5;
      
      public var §14§:Number = 0.5;
      
      public function § var§(param1:§0K§)
      {
         super();
         this.§;n§ = param1;
      }
      
      public function §+"§(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§8!9§)
         {
            this.§8!9§ = new Vector.<§-!7§>();
         }
         this.§8!9§[this.§8!9§.length] = new §-!7§(param1,param2,param3,param4 == -1 ? Number(this.§#i§) : Number(param4),this.§5o§,this.§14§);
      }
      
      public function §<7§(param1:Point, param2:Number) : void
      {
         var _loc3_:§-!7§ = null;
         for each(_loc3_ in this.§8!9§)
         {
            this.§%O§(_loc3_,param1,param2);
            this.§3i§(_loc3_.§ Y§,param1,Math.random() * _loc3_.§=-§);
            _loc3_.§ Y§.§;!$§(_loc3_.§+!?§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §%O§(param1:§-!7§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§?e§(this.§"H§(param1.§[!I§,param1.§!§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§ Y§ = this.§;n§.§+"§(param1.§97§,_loc5_,_loc6_,this.§?e§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function §3i§(param1:§9M§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§3H§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§3H§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§3H§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §"H§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function §?e§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
