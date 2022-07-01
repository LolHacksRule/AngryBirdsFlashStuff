package §^!k§
{
   import §%!0§.§,4§;
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §1" §.§6!2§;
   import §;"7§.§="<§;
   import §;b§.StateLevelEditor;
   import §<!a§.b2Vec2;
   import §[!P§.§@R§;
   
   public class §[!K§
   {
       
      
      private var §`!a§:Vector.<§7"#§>;
      
      private var § try§:Vector.<§7"#§>;
      
      private var §?!%§:Texture;
      
      private var §+">§:§6!2§;
      
      private var §5"&§:StateLevelEditor;
      
      public function §[!K§(param1:StateLevelEditor, param2:§6!2§)
      {
         this.§`!a§ = new Vector.<§7"#§>();
         this.§ try§ = new Vector.<§7"#§>();
         super();
         this.§5"&§ = param1;
         this.§+">§ = param2;
         if(!this.§?!%§)
         {
            this.§?!%§ = §="<§.§[E§.§-t§();
         }
      }
      
      public function update(param1:Vector.<§@R§>) : void
      {
         this.§@!r§(param1);
      }
      
      private function §@!r§(param1:Vector.<§@R§>) : void
      {
         var _loc3_:§@R§ = null;
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
         var _loc14_:§7"#§ = null;
         var _loc15_:§7"#§ = null;
         this.§?!%§ = §'_§.§=M§.§8=§.§5!!§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§=!%§.§<D§().GetPosition();
            _loc5_ = _loc3_.§=!%§.§3@§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§&"1§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§?!]§()) / _loc8_)
            {
               if(this.§`!a§.length <= _loc2_)
               {
                  this.§`!a§.push(this.§2q§());
                  _loc14_ = this.§`!a§[_loc2_];
                  §'_§.§=M§.objects.§`z§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§`!a§[_loc2_]).parent != §'_§.§=M§.objects.§`z§)
               {
                  §'_§.§=M§.objects.§`z§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §,4§.§,^§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §,4§.§,^§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§`!a§.length > _loc2_)
         {
            _loc15_ = this.§`!a§.pop();
            §'_§.§=M§.objects.§`z§.removeChild(_loc15_);
            this.§7![§(_loc15_);
         }
      }
      
      private function §2q§() : §7"#§
      {
         if(this.§ try§.length > 0)
         {
            return this.§ try§.pop();
         }
         return new §7"#§(this.§?!%§);
      }
      
      private function §7![§(param1:§7"#§) : void
      {
         if(!this.§ try§)
         {
            this.§ try§ = new Vector.<§7"#§>();
         }
         this.§ try§.push(param1);
      }
   }
}
