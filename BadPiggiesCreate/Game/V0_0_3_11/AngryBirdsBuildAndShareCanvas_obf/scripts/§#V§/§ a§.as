package §#V§
{
   import §+L§.b2Math;
   import §+L§.b2Vec2;
   import §3"0§.§,r§;
   
   public class § a§ extends §,r§
   {
       
      
      private var §0!G§:b2Vec2;
      
      private var §&!A§:b2Vec2;
      
      private const §3Y§:Number = 0.3;
      
      private const §8G§:Number = 1;
      
      public function § a§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4","P_PIG_8"]);
         x = param1.x;
         y = param1.y;
         this.§&!A§ = param2;
         this.§0!G§ = param1;
         this.§0!G§.§'+§(param2);
         this.§0!G§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §65§ = Math.cos(_loc4_) * _loc5_;
            §<!R§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §65§ = 0;
            §<!R§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§'+§(this.§&!A§);
         var _loc3_:Number = Math.max(1,_loc2_.§9!5§());
         _loc2_.Normalize();
         §65§ -= _loc2_.x * this.§3Y§ / _loc3_ * param1;
         §<!R§ -= _loc2_.y * this.§3Y§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §65§,y + §<!R§);
         _loc2_.§'+§(this.§&!A§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§8"!§(_loc2_,b2Math.§%l§(b2Math.§&"4§(_loc2_,this.§0!G§) / b2Math.§&"4§(this.§0!G§,this.§0!G§),this.§0!G§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§8G§ * _loc4_.x,-this.§8G§ * _loc4_.y);
         x += (§65§ + _loc5_.x) * param1;
         y += (§<!R§ + _loc5_.y) * param1;
         if(parent && y < this.§&!A§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
