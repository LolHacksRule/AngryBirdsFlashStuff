package §2G§
{
   import §0,§.b2Vec2;
   import §?!§.§%o§;
   import §?!§.§>!4§;
   import flash.geom.Point;
   
   public class §=a§
   {
       
      
      private var §?8§:§>!4§;
      
      private var §"!=§:Vector.<§%3§>;
      
      public var §,!2§:Number = 10;
      
      public var §!!I§:Number = 5;
      
      public var §"1§:Number = 0.5;
      
      public function §=a§(param1:§>!4§)
      {
         super();
         this.§?8§ = param1;
      }
      
      public function §else §(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§"!=§)
         {
            this.§"!=§ = new Vector.<§%3§>();
         }
         this.§"!=§[this.§"!=§.length] = new §%3§(param1,param2,param3,param4 == -1 ? Number(this.§,!2§) : Number(param4),this.§!!I§,this.§"1§);
      }
      
      public function §?c§(param1:Point, param2:Number) : void
      {
         var _loc3_:§%3§ = null;
         for each(_loc3_ in this.§"!=§)
         {
            this.§^!f§(_loc3_,param1,param2);
            this.§ n§(_loc3_.§>!A§,param1,Math.random() * _loc3_.§&!?§);
            _loc3_.§>!A§.§<a§(_loc3_.§<!n§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §^!f§(param1:§%3§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§?!i§(this.§>!O§(param1.§@B§,param1.§2A§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§>!A§ = this.§?8§.§else §(param1.§;!4§,_loc5_,_loc6_,this.§?!i§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function § n§(param1:§%o§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§2!!§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§2!!§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§2!!§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §>!O§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function §?!i§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
