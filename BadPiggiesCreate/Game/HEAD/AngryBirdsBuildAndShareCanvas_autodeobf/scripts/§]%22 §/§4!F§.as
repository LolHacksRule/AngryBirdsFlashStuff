package §]" §
{
   import §!N§.§"!J§;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   
   public class §4!F§ extends §"!J§
   {
      
      private static const §2f§:Vector.<String> = new <String>["P_PIG_5"];
      
      private static const §^"!§:Vector.<String> = new <String>["P_PIG_6","P_PIG_4"];
      
      private static const §+L§:Vector.<String> = new <String>["P_PIG_1"];
      
      private static const §&C§:Vector.<String> = new <String>["P_PIG_2","P_PIG_7"];
       
      
      private var §7z§:b2Vec2;
      
      private var §&d§:b2Vec2;
      
      private const §2!L§:Number = 0.3;
      
      private const §&?§:Number = 1;
      
      public function §4!F§(param1:b2Vec2, param2:b2Vec2, param3:Boolean, param4:Boolean)
      {
         super(!!param3 ? (!!param4 ? §+L§ : §2f§) : (!!param4 ? §&C§ : §^"!§));
         x = param1.x;
         y = param1.y;
         this.§&d§ = param2;
         this.§7z§ = param1;
         this.§7z§.§&"1§(param2);
         this.§7z§.Normalize();
         var _loc5_:Number = Math.random() * 2 * Math.PI;
         var _loc6_:Number = Math.random() * 0.15 + 0.05;
         if(!param3)
         {
            §8+§ = Math.cos(_loc5_) * _loc6_;
            §&g§ = Math.sin(_loc5_) * _loc6_;
         }
         else
         {
            §8+§ = 0;
            §&g§ = 0;
         }
         rotation = Math.random() * Math.PI * 2;
         alpha = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         _loc2_.§&"1§(this.§&d§);
         var _loc3_:Number = Math.max(1,_loc2_.§?!]§());
         _loc2_.Normalize();
         §8+§ -= _loc2_.x * this.§2!L§ / _loc3_ * param1;
         §&g§ -= _loc2_.y * this.§2!L§ / _loc3_ * param1;
         rotation += 0.3 * param1;
         _loc2_ = new b2Vec2(x + §8+§,y + §&g§);
         _loc2_.§&"1§(this.§&d§);
         _loc2_.Normalize();
         var _loc4_:b2Vec2 = b2Math.§ !r§(_loc2_,b2Math.§2!z§(b2Math.§8n§(_loc2_,this.§7z§) / b2Math.§8n§(this.§7z§,this.§7z§),this.§7z§));
         var _loc5_:b2Vec2 = new b2Vec2(-this.§&?§ * _loc4_.x,-this.§&?§ * _loc4_.y);
         x += (§8+§ + _loc5_.x) * param1;
         y += (§&g§ + _loc5_.y) * param1;
         if(parent && y < this.§&d§.y)
         {
            parent.removeChild(this);
         }
      }
   }
}
