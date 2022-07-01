package §^H§
{
   import §,!x§.§1g§;
   import §3!t§.b2Vec2;
   import §7"1§.§%W§;
   import §7N§.StateLevelEditor;
   import §?",§.§7"?§;
   import §@!-§.§3"1§;
   import §@!i§.§%Q§;
   import §[B§.§"d§;
   import §^Q§.Texture;
   
   public class §[!G§
   {
       
      
      private var §0L§:Vector.<§%Q§>;
      
      private var §7![§:Vector.<§%Q§>;
      
      private var §!"+§:Texture;
      
      private var §^"7§:§1g§;
      
      private var §=!<§:StateLevelEditor;
      
      public function §[!G§(param1:StateLevelEditor, param2:§1g§)
      {
         this.§0L§ = new Vector.<§%Q§>();
         this.§7![§ = new Vector.<§%Q§>();
         super();
         this.§=!<§ = param1;
         this.§^"7§ = param2;
         if(!this.§!"+§)
         {
            this.§!"+§ = §3"1§.§ "!§.§4!i§();
         }
      }
      
      public function update(param1:Vector.<§7"?§>) : void
      {
         this.§2"6§(param1);
      }
      
      private function §2"6§(param1:Vector.<§7"?§>) : void
      {
         var _loc3_:§7"?§ = null;
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
         var _loc14_:§%Q§ = null;
         var _loc15_:§%Q§ = null;
         this.§!"+§ = §%W§.§5"8§.§="!§.§`!+§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§,#§.§>`§().GetPosition();
            _loc5_ = _loc3_.§,#§.§@B§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§;!Y§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§=U§()) / _loc8_)
            {
               if(this.§0L§.length <= _loc2_)
               {
                  this.§0L§.push(this.§@D§());
                  _loc14_ = this.§0L§[_loc2_];
                  §%W§.§5"8§.objects.§="0§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§0L§[_loc2_]).parent != §%W§.§5"8§.objects.§="0§)
               {
                  §%W§.§5"8§.objects.§="0§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §"d§.§2!]§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §"d§.§2!]§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§0L§.length > _loc2_)
         {
            _loc15_ = this.§0L§.pop();
            §%W§.§5"8§.objects.§="0§.removeChild(_loc15_);
            this.§2"4§(_loc15_);
         }
      }
      
      private function §@D§() : §%Q§
      {
         if(this.§7![§.length > 0)
         {
            return this.§7![§.pop();
         }
         return new §%Q§(this.§!"+§);
      }
      
      private function §2"4§(param1:§%Q§) : void
      {
         if(!this.§7![§)
         {
            this.§7![§ = new Vector.<§%Q§>();
         }
         this.§7![§.push(param1);
      }
   }
}
