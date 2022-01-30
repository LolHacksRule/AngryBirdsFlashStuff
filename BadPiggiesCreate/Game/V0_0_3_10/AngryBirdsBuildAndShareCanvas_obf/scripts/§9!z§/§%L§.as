package §9!z§
{
   import §!!+§.StateLevelEditor;
   import §!q§.§;@§;
   import §%!I§.§3g§;
   import §%t§.§-!5§;
   import §1U§.§"!V§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   import §?!h§.b2Vec2;
   import §^I§.§=!+§;
   
   public class §%L§
   {
       
      
      private var §&!g§:Vector.<§=!+§>;
      
      private var § for§:Vector.<§=!+§>;
      
      private var §+F§:Texture;
      
      private var §0H§:§;@§;
      
      private var §!T§:StateLevelEditor;
      
      public function §%L§(param1:StateLevelEditor, param2:§;@§)
      {
         this.§&!g§ = new Vector.<§=!+§>();
         this.§ for§ = new Vector.<§=!+§>();
         super();
         this.§!T§ = param1;
         this.§0H§ = param2;
         if(!this.§+F§)
         {
            this.§+F§ = §-!5§.§,l§.§`!E§();
         }
      }
      
      public function update(param1:Vector.<§3g§>) : void
      {
         this.§%!U§(param1);
      }
      
      private function §%!U§(param1:Vector.<§3g§>) : void
      {
         var _loc3_:§3g§ = null;
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
         var _loc14_:§=!+§ = null;
         var _loc15_:§=!+§ = null;
         this.§+F§ = §"!V§.§!j§.§>=§.§ !Z§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§5!?§.§6!$§().GetPosition();
            _loc5_ = _loc3_.§5!?§.§=!y§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§2!P§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§7!6§()) / _loc8_)
            {
               if(this.§&!g§.length <= _loc2_)
               {
                  this.§&!g§.push(this.§ $§());
                  _loc14_ = this.§&!g§[_loc2_];
                  §"!V§.§!j§.objects.§@!F§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§&!g§[_loc2_]).parent != §"!V§.§!j§.objects.§@!F§)
               {
                  §"!V§.§!j§.objects.§@!F§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §%I§.§9"4§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §%I§.§9"4§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§&!g§.length > _loc2_)
         {
            _loc15_ = this.§&!g§.pop();
            §"!V§.§!j§.objects.§@!F§.removeChild(_loc15_);
            this.§;!q§(_loc15_);
         }
      }
      
      private function § $§() : §=!+§
      {
         if(this.§ for§.length > 0)
         {
            return this.§ for§.pop();
         }
         return new §=!+§(this.§+F§);
      }
      
      private function §;!q§(param1:§=!+§) : void
      {
         if(!this.§ for§)
         {
            this.§ for§ = new Vector.<§=!+§>();
         }
         this.§ for§.push(param1);
      }
   }
}
