package §6`§
{
   import §?!h§.b2Math;
   import §?!h§.b2Vec2;
   import §@""§.§-;§;
   
   public class §2u§ extends §-;§
   {
       
      
      private var §?$§:b2Vec2;
      
      private var §<6§:b2Vec2;
      
      private const §'m§:Number = 0.3;
      
      private const §3!4§:Number = 1;
      
      public function §2u§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4","P_PIG_8"]);
         x = param1.x;
         y = param1.y;
         this.§<6§ = param2;
         this.§?$§ = param1;
         this.§?$§.§2!P§(param2);
         this.§?$§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §[!a§ = Math.cos(_loc4_) * _loc5_;
            §<P§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §[!a§ = 0;
            §<P§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§2!P§(this.§<6§);
         var _loc3_:Number = Math.max(1,_loc2_.§7!6§());
         _loc2_.Normalize();
         §[!a§ -= _loc2_.x * this.§'m§ / _loc3_ * param1;
         §<P§ -= _loc2_.y * this.§'m§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §[!a§,y + §<P§);
         _loc2_.§2!P§(this.§<6§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§<l§(_loc2_,b2Math.§'!h§(b2Math.§`",§(_loc2_,this.§?$§) / b2Math.§`",§(this.§?$§,this.§?$§),this.§?$§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§3!4§ * _loc4_.x,-this.§3!4§ * _loc4_.y);
         x += (§[!a§ + _loc5_.x) * param1;
         y += (§<P§ + _loc5_.y) * param1;
         if(parent && y < this.§<6§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
