package §]!+§
{
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §>X§.§^!x§;
   
   public class §7"3§ extends §^!x§
   {
       
      
      private var §%W§:b2Vec2;
      
      private var §;D§:b2Vec2;
      
      private const §"a§:Number = 0.3;
      
      private const §[!m§:Number = 1;
      
      public function §7"3§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4"]);
         x = param1.x;
         y = param1.y;
         this.§;D§ = param2;
         this.§%W§ = param1;
         this.§%W§.§5!]§(param2);
         this.§%W§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §1!6§ = Math.cos(_loc4_) * _loc5_;
            §[!]§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §1!6§ = 0;
            §[!]§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§5!]§(this.§;D§);
         var _loc3_:Number = Math.max(1,_loc2_.§`g§());
         _loc2_.Normalize();
         §1!6§ -= _loc2_.x * this.§"a§ / _loc3_ * param1;
         §[!]§ -= _loc2_.y * this.§"a§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §1!6§,y + §[!]§);
         _loc2_.§5!]§(this.§;D§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§'!%§(_loc2_,b2Math.§@;§(b2Math.§@!y§(_loc2_,this.§%W§) / b2Math.§@!y§(this.§%W§,this.§%W§),this.§%W§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§[!m§ * _loc4_.x,-this.§[!m§ * _loc4_.y);
         x += (§1!6§ + _loc5_.x) * param1;
         y += (§[!]§ + _loc5_.y) * param1;
         if(parent && y < this.§;D§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
