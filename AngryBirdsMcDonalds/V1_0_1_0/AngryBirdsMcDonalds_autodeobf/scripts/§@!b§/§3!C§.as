package §@!b§
{
   import §2!g§.§<7§;
   import §2o§.§<H§;
   import §5!G§.§6!Y§;
   import §@j§.Texture;
   import flash.geom.Point;
   
   public class §3!C§
   {
      
      private static var §%!h§:Texture;
      
      private static var §8"§:Vector.<§<7§>;
       
      
      private var §<!-§:Number;
      
      private var §8!C§:Boolean;
      
      private var §0!=§:Vector.<§<7§>;
      
      public function §3!C§(param1:Number)
      {
         this.§0!=§ = new Vector.<§<7§>();
         super();
         this.§<!-§ = param1;
      }
      
      public function §3!&§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§6!Y§ = null;
         var _loc14_:§<7§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§<7§ = null;
         if(!§%!h§)
         {
            §%!h§ = §<H§.§=3§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §0]§.§+`§)
         {
            _loc4_.y += this.§<!-§ * §0]§.§6"§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §0]§.§[!`§)
            {
               _loc10_ += _loc4_.x * §0]§.§6"§ / §0]§.§[!`§;
               _loc11_ += _loc4_.y * §0]§.§6"§ / §0]§.§[!`§;
               if((_loc13_ = §<H§.§=3§.§`q§.§<!<§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §0]§.§;F§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§0!=§.length > _loc8_)
               {
                  _loc14_ = this.§0!=§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§-!9§();
                  §<H§.§=3§.objects.§^!X§.addChild(_loc14_);
                  this.§0!=§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §@!k§.§2!J§;
               _loc14_.y = _loc6_.y / §@!k§.§2!J§;
               _loc15_ = 1 - _loc7_ / §0]§.§&!N§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §0]§.§6"§;
            _loc6_.y += _loc4_.y * §0]§.§6"§;
            if((_loc7_ += _loc4_.length * §0]§.§6"§) > §0]§.§&!N§)
            {
               break;
            }
         }
         while(this.§0!=§.length > _loc8_)
         {
            _loc16_ = this.§0!=§.pop();
            §<H§.§=3§.objects.§^!X§.removeChild(_loc16_);
            this.§8k§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§<7§ = null;
         while(this.§0!=§.length > 0)
         {
            _loc1_ = this.§0!=§.pop();
            §<H§.§=3§.objects.§^!X§.removeChild(_loc1_);
            this.§8k§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§8!C§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§8!C§ = param1;
      }
      
      private function §-!9§() : §<7§
      {
         if(§8"§ && §8"§.length > 0)
         {
            return §8"§.pop();
         }
         return new §<7§(§%!h§);
      }
      
      private function §8k§(param1:§<7§) : void
      {
         if(!§8"§)
         {
            §8"§ = new Vector.<§<7§>();
         }
         §8"§.push(param1);
      }
   }
}
