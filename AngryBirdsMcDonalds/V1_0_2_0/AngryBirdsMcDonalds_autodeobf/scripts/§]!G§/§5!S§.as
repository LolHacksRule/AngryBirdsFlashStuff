package §]!G§
{
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §%`§.§,!k§;
   import flash.geom.Point;
   
   public class §5!S§
   {
       
      
      private var §-!D§:§,!k§;
      
      private var §3-§:Vector.<§ !h§>;
      
      public var §[!8§:Number = 10;
      
      public var §'!'§:Number = 5;
      
      public var §%!O§:Number = 0.5;
      
      public function §5!S§(param1:§,!k§)
      {
         super();
         this.§-!D§ = param1;
      }
      
      public function §1!!§(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§3-§)
         {
            this.§3-§ = new Vector.<§ !h§>();
         }
         this.§3-§[this.§3-§.length] = new § !h§(param1,param2,param3,param4 == -1 ? Number(this.§[!8§) : Number(param4),this.§'!'§,this.§%!O§);
      }
      
      public function § R§(param1:Point, param2:Number) : void
      {
         var _loc3_:§ !h§ = null;
         for each(_loc3_ in this.§3-§)
         {
            this.§#l§(_loc3_,param1,param2);
            this.§<!e§(_loc3_.§=![§,param1,Math.random() * _loc3_.§=!g§);
            _loc3_.§=![§.§,z§(_loc3_.§%t§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §#l§(param1:§ !h§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§%F§(this.§2!W§(param1.§>Q§,param1.§%!4§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§=![§ = this.§-!D§.§1!!§(param1.§>Y§,_loc5_,_loc6_,this.§%F§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function §<!e§(param1:§"s§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§%9§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§%9§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§%9§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §2!W§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function §%F§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
