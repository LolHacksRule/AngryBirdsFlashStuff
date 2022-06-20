package §9"!§
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §9"%§.§&!r§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §+Z§
   {
      
      private static var §@3§:Texture;
      
      private static var §=!'§:Vector.<§0!N§>;
       
      
      private var §<1§:Number;
      
      private var §%t§:Boolean;
      
      private var §]?§:Vector.<§0!N§>;
      
      public function §+Z§(param1:Number)
      {
         this.§]?§ = new Vector.<§0!N§>();
         super();
         this.§<1§ = param1;
      }
      
      public function §2q§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§&!r§ = null;
         var _loc14_:§0!N§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§0!N§ = null;
         if(!§@3§)
         {
            §@3§ = §#6§.§6!z§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §4"F§.§9"E§)
         {
            _loc4_.y += this.§<1§ * §4"F§.§@"<§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §4"F§.§%!g§)
            {
               _loc10_ += _loc4_.x * §4"F§.§@"<§ / §4"F§.§%!g§;
               _loc11_ += _loc4_.y * §4"F§.§@"<§ / §4"F§.§%!g§;
               if((_loc13_ = §#6§.§6!z§.§<f§.§%7§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §4"F§.§8!p§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§]?§.length > _loc8_)
               {
                  _loc14_ = this.§]?§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§^!9§();
                  §#6§.§6!z§.objects.§9" §.addChild(_loc14_);
                  this.§]?§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §9"3§.§'"F§;
               _loc14_.y = _loc6_.y / §9"3§.§'"F§;
               _loc15_ = 1 - _loc7_ / §4"F§.§9,§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §4"F§.§@"<§;
            _loc6_.y += _loc4_.y * §4"F§.§@"<§;
            if((_loc7_ += _loc4_.length * §4"F§.§@"<§) > §4"F§.§9,§)
            {
               break;
            }
         }
         while(this.§]?§.length > _loc8_)
         {
            _loc16_ = this.§]?§.pop();
            §#6§.§6!z§.objects.§9" §.removeChild(_loc16_);
            this.§=L§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§0!N§ = null;
         while(this.§]?§.length > 0)
         {
            _loc1_ = this.§]?§.pop();
            §#6§.§6!z§.objects.§9" §.removeChild(_loc1_);
            this.§=L§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§%t§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§%t§ = param1;
      }
      
      private function §^!9§() : §0!N§
      {
         if(§=!'§ && §=!'§.length > 0)
         {
            return §=!'§.pop();
         }
         return new §0!N§(§@3§);
      }
      
      private function §=L§(param1:§0!N§) : void
      {
         if(!§=!'§)
         {
            §=!'§ = new Vector.<§0!N§>();
         }
         §=!'§.push(param1);
      }
   }
}
