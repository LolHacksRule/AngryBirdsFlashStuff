package §^[§
{
   import § "@§.StateLevelEditor;
   import §%c§.§=!X§;
   import §&"5§.§7!P§;
   import §'i§.§ "+§;
   import §2"=§.b2Vec2;
   import §3"5§.§ !,§;
   import §5!V§.§!w§;
   import §7R§.Texture;
   import §default§.§=!Z§;
   
   public class §!!c§
   {
       
      
      private var §]!K§:Vector.<§=!Z§>;
      
      private var §]!a§:Vector.<§=!Z§>;
      
      private var §+!A§:Texture;
      
      private var §8"4§:§ "+§;
      
      private var §3H§:StateLevelEditor;
      
      public function §!!c§(param1:StateLevelEditor, param2:§ "+§)
      {
         this.§]!K§ = new Vector.<§=!Z§>();
         this.§]!a§ = new Vector.<§=!Z§>();
         super();
         this.§3H§ = param1;
         this.§8"4§ = param2;
         if(!this.§+!A§)
         {
            this.§+!A§ = §7!P§.§2=§.§4!A§();
         }
      }
      
      public function update(param1:Vector.<§ !,§>) : void
      {
         this.§#!U§(param1);
      }
      
      private function §#!U§(param1:Vector.<§ !,§>) : void
      {
         var _loc3_:§ !,§ = null;
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
         var _loc14_:§=!Z§ = null;
         var _loc15_:§=!Z§ = null;
         this.§+!A§ = §=!X§.§!'§.§7!J§.§12§("LASER_DOT").texture;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§5""§.§]"$§().GetPosition();
            _loc5_ = _loc3_.§5""§.§5v§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§5!]§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            _loc8_ = 4;
            _loc9_ = _loc5_.x - _loc4_.x;
            _loc10_ = _loc5_.y - _loc4_.y;
            _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc12_ = Math.atan2(_loc10_,_loc9_);
            _loc13_ = 0;
            while(_loc13_ <= Math.abs(_loc6_.§`g§()) / _loc8_)
            {
               if(this.§]!K§.length <= _loc2_)
               {
                  this.§]!K§.push(this.§%!7§());
                  _loc14_ = this.§]!K§[_loc2_];
                  §=!X§.§!'§.objects.§6!v§.addChild(_loc14_);
               }
               else if((_loc14_ = this.§]!K§[_loc2_]).parent != §=!X§.§!'§.objects.§6!v§)
               {
                  §=!X§.§!'§.objects.§6!v§.addChild(_loc14_);
               }
               _loc14_.x = (_loc5_.x + _loc8_ * _loc13_ * _loc7_.x) / §!w§.§4!-§ - _loc14_.width / 2;
               _loc14_.y = (_loc5_.y + _loc8_ * _loc13_ * _loc7_.y) / §!w§.§4!-§ - _loc14_.height / 2;
               _loc2_++;
               _loc13_++;
            }
         }
         while(this.§]!K§.length > _loc2_)
         {
            _loc15_ = this.§]!K§.pop();
            §=!X§.§!'§.objects.§6!v§.removeChild(_loc15_);
            this.§,!`§(_loc15_);
         }
      }
      
      private function §%!7§() : §=!Z§
      {
         if(this.§]!a§.length > 0)
         {
            return this.§]!a§.pop();
         }
         return new §=!Z§(this.§+!A§);
      }
      
      private function §,!`§(param1:§=!Z§) : void
      {
         if(!this.§]!a§)
         {
            this.§]!a§ = new Vector.<§=!Z§>();
         }
         this.§]!a§.push(param1);
      }
   }
}
