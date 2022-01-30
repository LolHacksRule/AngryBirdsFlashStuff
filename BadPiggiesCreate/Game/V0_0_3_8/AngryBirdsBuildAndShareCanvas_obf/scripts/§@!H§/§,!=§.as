package §@!H§
{
   import § !V§.§7!P§;
   import §!",§.StateLevelEditor;
   import §%h§.§5X§;
   import §&"+§.§<!1§;
   import §3!U§.Texture;
   import §9v§.b2Vec2;
   import §]!2§.§,!n§;
   import §]!b§.§40§;
   import §`%§.§8!0§;
   
   public class §,!=§
   {
       
      
      private var §'!n§:Vector.<§,!n§>;
      
      private var §[!A§:Vector.<§,!n§>;
      
      private var §&n§:Texture;
      
      private var §]! §:§40§;
      
      private var § !=§:StateLevelEditor;
      
      public function §,!=§(param1:StateLevelEditor, param2:§40§)
      {
         this.§'!n§ = new Vector.<§,!n§>();
         this.§[!A§ = new Vector.<§,!n§>();
         super();
         this.§ !=§ = param1;
         this.§]! § = param2;
         if(!this.§&n§)
         {
            this.§&n§ = §7!P§.§9j§.§0q§();
         }
      }
      
      public function update(param1:Vector.<§<!1§>) : void
      {
         this.§""+§(param1);
      }
      
      private function §""+§(param1:Vector.<§<!1§>) : void
      {
         var _loc3_:§<!1§ = null;
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
         var _loc14_:§,!n§ = null;
         var _loc15_:§,!n§ = null;
         this.§&n§ = §8!0§.§?2§.§7<§.§&I§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§ " §.§;Z§().GetPosition();
            _loc5_ = _loc3_.§ " §.§=w§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§7E§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§8!p§()) / _loc8_)
            {
               if(this.§'!n§.length <= _loc2_)
               {
                  this.§'!n§.push(this.§`!J§());
                  _loc14_ = this.§'!n§[_loc2_];
                  §8!0§.§?2§.objects.§<!b§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§'!n§[_loc2_]).parent != §8!0§.§?2§.objects.§<!b§)
               {
                  §8!0§.§?2§.objects.§<!b§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §5X§.§,!m§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §5X§.§,!m§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§'!n§.length > _loc2_)
         {
            _loc15_ = this.§'!n§.pop();
            §8!0§.§?2§.objects.§<!b§.removeChild(_loc15_);
            this.§%Y§(_loc15_);
         }
      }
      
      private function §`!J§() : §,!n§
      {
         if(this.§[!A§.length > 0)
         {
            return this.§[!A§.pop();
         }
         return new §,!n§(this.§&n§);
      }
      
      private function §%Y§(param1:§,!n§) : void
      {
         if(!this.§[!A§)
         {
            this.§[!A§ = new Vector.<§,!n§>();
         }
         this.§[!A§.push(param1);
      }
   }
}
