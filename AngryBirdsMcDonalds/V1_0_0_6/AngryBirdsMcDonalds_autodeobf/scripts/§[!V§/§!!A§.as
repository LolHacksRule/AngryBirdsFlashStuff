package §[!V§
{
   import §5!L§.§,!&§;
   import §5!L§.§?8§;
   import §@![§.b2Vec2;
   import flash.geom.Point;
   
   public class §!!A§
   {
       
      
      private var §^;§:§?8§;
      
      private var §0!7§:Vector.<§!H§>;
      
      public var §2V§:Number = 10;
      
      public var §,!R§:Number = 5;
      
      public var §#y§:Number = 0.5;
      
      public function §!!A§(param1:§?8§)
      {
         super();
         this.§^;§ = param1;
      }
      
      public function §'e§(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§0!7§)
         {
            this.§0!7§ = new Vector.<§!H§>();
         }
         this.§0!7§[this.§0!7§.length] = new §!H§(param1,param2,param3,param4 == -1 ? Number(this.§2V§) : Number(param4),this.§,!R§,this.§#y§);
      }
      
      public function §^I§(param1:Point, param2:Number) : void
      {
         var _loc3_:§!H§ = null;
         for each(_loc3_ in this.§0!7§)
         {
            this.§-v§(_loc3_,param1,param2);
            this.§1!8§(_loc3_.§]M§,param1,Math.random() * _loc3_.§2!N§);
            _loc3_.§]M§.§`!E§(_loc3_.§8L§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §-v§(param1:§!H§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§?!N§(this.§,U§(param1.§-t§,param1.§2,§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§]M§ = this.§^;§.§'e§(param1.§5!e§,_loc5_,_loc6_,this.§?!N§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function §1!8§(param1:§,!&§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§;G§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§;G§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§;G§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §,U§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function §?!N§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
