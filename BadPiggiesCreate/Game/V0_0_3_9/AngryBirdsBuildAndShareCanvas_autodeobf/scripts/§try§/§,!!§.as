package §try§
{
   import §-!G§.b2Math;
   import §-!G§.b2Vec2;
   import §3!O§.§2!J§;
   
   public class §,!!§ extends §2!J§
   {
       
      
      private var §"!d§:b2Vec2;
      
      private var §9#§:b2Vec2;
      
      private const §9y§:Number = 0.3;
      
      private const §7!H§:Number = 1;
      
      public function §,!!§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4","P_PIG_8"]);
         x = param1.x;
         y = param1.y;
         this.§9#§ = param2;
         this.§"!d§ = param1;
         this.§"!d§.§^!d§(param2);
         this.§"!d§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §&M§ = Math.cos(_loc4_) * _loc5_;
            §6?§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §&M§ = 0;
            §6?§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§^!d§(this.§9#§);
         var _loc3_:Number = Math.max(1,_loc2_.§%!G§());
         _loc2_.Normalize();
         §&M§ -= _loc2_.x * this.§9y§ / _loc3_ * param1;
         §6?§ -= _loc2_.y * this.§9y§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §&M§,y + §6?§);
         _loc2_.§^!d§(this.§9#§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§?[§(_loc2_,b2Math.§ !f§(b2Math.§3M§(_loc2_,this.§"!d§) / b2Math.§3M§(this.§"!d§,this.§"!d§),this.§"!d§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§7!H§ * _loc4_.x,-this.§7!H§ * _loc4_.y);
         x += (§&M§ + _loc5_.x) * param1;
         y += (§6?§ + _loc5_.y) * param1;
         if(parent && y < this.§9#§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
