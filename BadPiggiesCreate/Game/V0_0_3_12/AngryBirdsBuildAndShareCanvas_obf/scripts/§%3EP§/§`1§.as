package §>P§
{
   import §3!t§.b2Math;
   import §3!t§.b2Vec2;
   import §9!y§.§'^§;
   
   public class §`1§ extends §'^§
   {
       
      
      private var §7"&§:b2Vec2;
      
      private var §%"6§:b2Vec2;
      
      private const §0X§:Number = 0.3;
      
      private const §'!A§:Number = 1;
      
      public function §`1§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4"]);
         x = param1.x;
         y = param1.y;
         this.§%"6§ = param2;
         this.§7"&§ = param1;
         this.§7"&§.§;!Y§(param2);
         this.§7"&§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §]O§ = Math.cos(_loc4_) * _loc5_;
            §>a§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §]O§ = 0;
            §>a§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§;!Y§(this.§%"6§);
         var _loc3_:Number = Math.max(1,_loc2_.§=U§());
         _loc2_.Normalize();
         §]O§ -= _loc2_.x * this.§0X§ / _loc3_ * param1;
         §>a§ -= _loc2_.y * this.§0X§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §]O§,y + §>a§);
         _loc2_.§;!Y§(this.§%"6§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§'T§(_loc2_,b2Math.§#!r§(b2Math.§"!o§(_loc2_,this.§7"&§) / b2Math.§"!o§(this.§7"&§,this.§7"&§),this.§7"&§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§'!A§ * _loc4_.x,-this.§'!A§ * _loc4_.y);
         x += (§]O§ + _loc5_.x) * param1;
         y += (§>a§ + _loc5_.y) * param1;
         if(parent && y < this.§%"6§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
