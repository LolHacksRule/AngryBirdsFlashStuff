package §;W§
{
   import § ^§.§%!4§;
   import §0I§.§`!m§;
   import §1!z§.b2Vec2;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §@!#§.Texture;
   import §^^§.StateLevelEditor;
   import §`"2§.§6!,§;
   import §`L§.§-;§;
   
   public class §`J§
   {
       
      
      private var §9!5§:Vector.<§-;§>;
      
      private var §@"!§:Vector.<§-;§>;
      
      private var §-!,§:Texture;
      
      private var §1e§:§%!4§;
      
      private var §=7§:StateLevelEditor;
      
      public function §`J§(param1:StateLevelEditor, param2:§%!4§)
      {
         this.§9!5§ = new Vector.<§-;§>();
         this.§@"!§ = new Vector.<§-;§>();
         super();
         this.§=7§ = param1;
         this.§1e§ = param2;
         if(!this.§-!,§)
         {
            this.§-!,§ = §6!,§.§7!?§.§4v§();
         }
      }
      
      public function update(param1:Vector.<§`!m§>) : void
      {
         this.§+!t§(param1);
      }
      
      private function §+!t§(param1:Vector.<§`!m§>) : void
      {
         var _loc3_:§`!m§ = null;
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
         var _loc14_:§-;§ = null;
         var _loc15_:§-;§ = null;
         this.§-!,§ = §5!U§.§,!E§.§4F§.§'"#§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§ i§.§[!N§().GetPosition();
            _loc5_ = _loc3_.§ i§.§!"4§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§#!3§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§<_§()) / _loc8_)
            {
               if(this.§9!5§.length <= _loc2_)
               {
                  this.§9!5§.push(this.§2>§());
                  _loc14_ = this.§9!5§[_loc2_];
                  §5!U§.§,!E§.objects.§[!a§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§9!5§[_loc2_]).parent != §5!U§.§,!E§.objects.§[!a§)
               {
                  §5!U§.§,!E§.objects.§[!a§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §?!X§.§57§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §?!X§.§57§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§9!5§.length > _loc2_)
         {
            _loc15_ = this.§9!5§.pop();
            §5!U§.§,!E§.objects.§[!a§.removeChild(_loc15_);
            this.§;b§(_loc15_);
         }
      }
      
      private function §2>§() : §-;§
      {
         if(this.§@"!§.length > 0)
         {
            return this.§@"!§.pop();
         }
         return new §-;§(this.§-!,§);
      }
      
      private function §;b§(param1:§-;§) : void
      {
         if(!this.§@"!§)
         {
            this.§@"!§ = new Vector.<§-;§>();
         }
         this.§@"!§.push(param1);
      }
   }
}
