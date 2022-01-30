package §3c§
{
   import §1!z§.b2Math;
   import §1!z§.b2Vec2;
   import §1"1§.§ m§;
   
   public class §]@§ extends § m§
   {
       
      
      private var §,`§:b2Vec2;
      
      private var §;Z§:b2Vec2;
      
      private const § !M§:Number = 0.3;
      
      private const §<!2§:Number = 1;
      
      public function §]@§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4"]);
         x = param1.x;
         y = param1.y;
         this.§;Z§ = param2;
         this.§,`§ = param1;
         this.§,`§.§#!3§(param2);
         this.§,`§.Normalize();
         var _loc4_:Number = Math.random() * 2 * Math.PI;
         var _loc5_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §2"!§ = Math.cos(_loc4_) * _loc5_;
            §4-§ = Math.sin(_loc4_) * _loc5_;
         }
         else
         {
            §2"!§ = 0;
            §4-§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§#!3§(this.§;Z§);
         var _loc3_:Number = Math.max(1,_loc2_.§<_§());
         _loc2_.Normalize();
         §2"!§ -= _loc2_.x * this.§ !M§ / _loc3_ * param1;
         §4-§ -= _loc2_.y * this.§ !M§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §2"!§,y + §4-§);
         _loc2_.§#!3§(this.§;Z§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§8"<§(_loc2_,b2Math.§ "&§(b2Math.§9!%§(_loc2_,this.§,`§) / b2Math.§9!%§(this.§,`§,this.§,`§),this.§,`§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§<!2§ * _loc4_.x,-this.§<!2§ * _loc4_.y);
         x += (§2"!§ + _loc5_.x) * param1;
         y += (§4-§ + _loc5_.y) * param1;
         if(parent && y < this.§;Z§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
