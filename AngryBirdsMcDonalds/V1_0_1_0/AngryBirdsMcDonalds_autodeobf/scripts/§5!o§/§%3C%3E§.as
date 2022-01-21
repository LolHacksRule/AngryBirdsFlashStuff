package §5!o§
{
   import §!R§.b2Vec2;
   import §5!G§.§6!Y§;
   import §5!G§.§8+§;
   import flash.geom.Point;
   
   public class §<>§
   {
       
      
      private var §>O§:§8+§;
      
      private var §"!D§:Vector.<§5i§>;
      
      public var §;!o§:Number = 10;
      
      public var §'=§:Number = 5;
      
      public var §?Z§:Number = 0.5;
      
      public function §<>§(param1:§8+§)
      {
         super();
         this.§>O§ = param1;
      }
      
      public function §[E§(param1:String, param2:Number, param3:Number, param4:Number = -1) : void
      {
         if(!this.§"!D§)
         {
            this.§"!D§ = new Vector.<§5i§>();
         }
         this.§"!D§[this.§"!D§.length] = new §5i§(param1,param2,param3,param4 == -1 ? Number(this.§;!o§) : Number(param4),this.§'=§,this.§?Z§);
      }
      
      public function §3!+§(param1:Point, param2:Number) : void
      {
         var _loc3_:§5i§ = null;
         for each(_loc3_ in this.§"!D§)
         {
            this.§;y§(_loc3_,param1,param2);
            this.§5E§(_loc3_.§;B§,param1,Math.random() * _loc3_.§#!V§);
            _loc3_.§;B§.§7!S§(_loc3_.§9W§ * (Math.random() - 0.5) * 2);
         }
      }
      
      private function §;y§(param1:§5i§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = this.§ R§(this.§>!5§(param1.§%P§,param1.§'z§));
         var _loc5_:Number = param2.x + param3 * Math.cos(_loc4_);
         var _loc6_:Number = param2.y - param3 * Math.sin(_loc4_);
         param1.§;B§ = this.§>O§.§[E§(param1.§0V§,_loc5_,_loc6_,this.§ R§(Math.random() * 360),false,true,false,1,true);
      }
      
      private function §5E§(param1:§6!Y§, param2:Point, param3:Number) : void
      {
         var _loc4_:Number = param1.§>j§().GetPosition().x - param2.x;
         var _loc5_:Number = param1.§>j§().GetPosition().y - param2.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = param3 * (_loc4_ / _loc6_);
         var _loc8_:Number = param3 * (_loc5_ / _loc6_);
         param1.§>j§().ApplyImpulse(new b2Vec2(_loc7_,_loc8_),new b2Vec2(param2.x,param2.y));
      }
      
      private function §>!5§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      private function § R§(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
   }
}
