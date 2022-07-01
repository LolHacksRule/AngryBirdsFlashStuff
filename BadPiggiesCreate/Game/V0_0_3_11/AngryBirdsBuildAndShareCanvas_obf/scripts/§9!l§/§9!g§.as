package §9!l§
{
   import § J§.StateLevelEditor;
   import §'x§.§?z§;
   import §+L§.b2Vec2;
   import §1!Y§.§8C§;
   import §1!v§.§@%§;
   import §2!5§.§"^§;
   import §[_§.§2!B§;
   import §]!!§.§"X§;
   import §^i§.Texture;
   
   public class §9!g§
   {
       
      
      private var §=!'§:Vector.<§8C§>;
      
      private var §`!M§:Vector.<§8C§>;
      
      private var §>!G§:Texture;
      
      private var §0!8§:§"^§;
      
      private var §;!m§:StateLevelEditor;
      
      public function §9!g§(param1:StateLevelEditor, param2:§"^§)
      {
         this.§=!'§ = new Vector.<§8C§>();
         this.§`!M§ = new Vector.<§8C§>();
         super();
         this.§;!m§ = param1;
         this.§0!8§ = param2;
         if(!this.§>!G§)
         {
            this.§>!G§ = §2!B§.§if §.§?!4§();
         }
      }
      
      public function update(param1:Vector.<§"X§>) : void
      {
         this.§%c§(param1);
      }
      
      private function §%c§(param1:Vector.<§"X§>) : void
      {
         var _loc3_:§"X§ = null;
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
         var _loc14_:§8C§ = null;
         var _loc15_:§8C§ = null;
         this.§>!G§ = §?z§.§=7§.§while§.§+!p§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§@a§.§-c§().GetPosition();
            _loc5_ = _loc3_.§@a§.§0Z§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§'+§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§9!5§()) / _loc8_)
            {
               if(this.§=!'§.length <= _loc2_)
               {
                  this.§=!'§.push(this.§"q§());
                  _loc14_ = this.§=!'§[_loc2_];
                  §?z§.§=7§.objects.§0&§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§=!'§[_loc2_]).parent != §?z§.§=7§.objects.§0&§)
               {
                  §?z§.§=7§.objects.§0&§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §@%§.§?k§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §@%§.§?k§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§=!'§.length > _loc2_)
         {
            _loc15_ = this.§=!'§.pop();
            §?z§.§=7§.objects.§0&§.removeChild(_loc15_);
            this.§ o§(_loc15_);
         }
      }
      
      private function §"q§() : §8C§
      {
         if(this.§`!M§.length > 0)
         {
            return this.§`!M§.pop();
         }
         return new §8C§(this.§>!G§);
      }
      
      private function § o§(param1:§8C§) : void
      {
         if(!this.§`!M§)
         {
            this.§`!M§ = new Vector.<§8C§>();
         }
         this.§`!M§.push(param1);
      }
   }
}
