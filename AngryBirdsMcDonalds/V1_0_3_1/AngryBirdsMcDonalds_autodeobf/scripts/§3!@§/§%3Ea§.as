package §3!@§
{
   import § !Y§.§2#§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §?!§.§%o§;
   import flash.geom.Point;
   
   public class §>a§
   {
      
      private static var §%z§:Texture;
      
      private static var §;1§:Vector.<§%!a§>;
       
      
      private var §9!O§:Number;
      
      private var §"!]§:Boolean;
      
      private var §=5§:Vector.<§%!a§>;
      
      public function §>a§(param1:Number)
      {
         this.§=5§ = new Vector.<§%!a§>();
         super();
         this.§9!O§ = param1;
      }
      
      public function §1j§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§%o§ = null;
         var _loc14_:§%!a§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§%!a§ = null;
         if(!§%z§)
         {
            §%z§ = §2#§.§"@§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §'!0§.§#W§)
         {
            _loc4_.y += this.§9!O§ * §'!0§.§&_§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §'!0§.§3S§)
            {
               _loc10_ += _loc4_.x * §'!0§.§&_§ / §'!0§.§3S§;
               _loc11_ += _loc4_.y * §'!0§.§&_§ / §'!0§.§3S§;
               if((_loc13_ = §2#§.§"@§.§^!8§.§9!Y§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §'!0§.§<!]§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§=5§.length > _loc8_)
               {
                  _loc14_ = this.§=5§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§ >§();
                  §2#§.§"@§.objects.§38§.addChild(_loc14_);
                  this.§=5§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / § s§.§<!h§;
               _loc14_.y = _loc6_.y / § s§.§<!h§;
               _loc15_ = 1 - _loc7_ / §'!0§.§<S§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §'!0§.§&_§;
            _loc6_.y += _loc4_.y * §'!0§.§&_§;
            if((_loc7_ += _loc4_.length * §'!0§.§&_§) > §'!0§.§<S§)
            {
               break;
            }
         }
         while(this.§=5§.length > _loc8_)
         {
            _loc16_ = this.§=5§.pop();
            §2#§.§"@§.objects.§38§.removeChild(_loc16_);
            this.§`!3§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§%!a§ = null;
         while(this.§=5§.length > 0)
         {
            _loc1_ = this.§=5§.pop();
            §2#§.§"@§.objects.§38§.removeChild(_loc1_);
            this.§`!3§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§"!]§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§"!]§ = param1;
      }
      
      private function § >§() : §%!a§
      {
         if(§;1§ && §;1§.length > 0)
         {
            return §;1§.pop();
         }
         return new §%!a§(§%z§);
      }
      
      private function §`!3§(param1:§%!a§) : void
      {
         if(!§;1§)
         {
            §;1§ = new Vector.<§%!a§>();
         }
         §;1§.push(param1);
      }
   }
}
