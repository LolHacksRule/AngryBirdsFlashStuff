package §8!7§
{
   import §-!G§.b2Vec2;
   import §1'§.§=!Q§;
   import §3!S§.§%s§;
   import §7"2§.§ 2§;
   import §7q§.§0!§;
   import §8Y§.Texture;
   import §;!<§.§7!f§;
   import §=;§.StateLevelEditor;
   import §=b§.§-!K§;
   
   public class §@!W§
   {
       
      
      private var §1!8§:Vector.<§0!§>;
      
      private var §?!g§:Vector.<§0!§>;
      
      private var §]^§:Texture;
      
      private var §^3§:§ 2§;
      
      private var § ^§:StateLevelEditor;
      
      public function §@!W§(param1:StateLevelEditor, param2:§ 2§)
      {
         this.§1!8§ = new Vector.<§0!§>();
         this.§?!g§ = new Vector.<§0!§>();
         super();
         this.§ ^§ = param1;
         this.§^3§ = param2;
         if(!this.§]^§)
         {
            this.§]^§ = §7!f§.§'!o§.§-!s§();
         }
      }
      
      public function update(param1:Vector.<§=!Q§>) : void
      {
         this.§`!e§(param1);
      }
      
      private function §`!e§(param1:Vector.<§=!Q§>) : void
      {
         var _loc3_:§=!Q§ = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:§0!§ = null;
         var _loc15_:§0!§ = null;
         this.§]^§ = §%s§.§`!f§.§20§.§>",§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§-4§.§="2§().GetPosition();
            _loc5_ = _loc3_.§-4§.§]C§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§^!d§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§%!G§()) / _loc8_)
            {
               if(this.§1!8§.length <= _loc2_)
               {
                  this.§1!8§.push(this.§7"&§());
                  _loc14_ = this.§1!8§[_loc2_];
                  §%s§.§`!f§.objects.§8!T§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§1!8§[_loc2_]).parent != §%s§.§`!f§.objects.§8!T§)
               {
                  §%s§.§`!f§.objects.§8!T§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §-!K§.§"!C§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §-!K§.§"!C§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§1!8§.length > _loc2_)
         {
            _loc15_ = this.§1!8§.pop();
            §%s§.§`!f§.objects.§8!T§.removeChild(_loc15_);
            this.§"X§(_loc15_);
         }
      }
      
      private function §7"&§() : §0!§
      {
         if(this.§?!g§.length > 0)
         {
            return this.§?!g§.pop();
         }
         return new §0!§(this.§]^§);
      }
      
      private function §"X§(param1:§0!§) : void
      {
         if(!this.§?!g§)
         {
            this.§?!g§ = new Vector.<§0!§>();
         }
         this.§?!g§.push(param1);
      }
   }
}
