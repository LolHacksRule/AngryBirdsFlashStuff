package §@!M§
{
   import §'!`§.§%!H§;
   import §'!`§.§for§;
   import §^!%§.b2Vec2;
   import flash.geom.Point;
   
   public class §7!c§
   {
       
      
      private var §]i§:§for§;
      
      private var §0?§:Vector.<§8f§>;
      
      public var §%!1§:Number = 10;
      
      public var §4!#§:Number = 5;
      
      public var §8!I§:Number = 0.5;
      
      public function §7!c§(param1:§for§)
      {
         super();
         this.§]i§ = param1;
      }
      
      public function §]!>§(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§0?§)
         {
            this.§0?§ = new Vector.<§8f§>();
         }
         this.§0?§[this.§0?§.length] = new §8f§(param1,param2,param3,param4 == -1 ? Number(this.§%!1§) : Number(param4),this.§4!#§,this.§8!I§);
      }
      
      public function §%!T§(param1:Point, param2:Number) : void
      {
         var _loc3_:§8f§ = null;
         for each(_loc3_ in this.§0?§)
         {
            this.§'!0§(_loc3_,param1,param2);
            this.§7C§(_loc3_.§;h§,param1,Math.random() * _loc3_.§[t§);
            _loc3_.§;h§.§9!e§(_loc3_.§8!Z§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §'!0§(param1:§8f§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§7x§(this.§<!L§(param1.§;!;§,param1.§[^§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§;h§ = this.§]i§.§]!>§(param1.§!!Z§,_loc5_,_loc6_,this.§7x§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function §7C§(param1:§%!H§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§&!p§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§&!p§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§&!p§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §<!L§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function §7x§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
