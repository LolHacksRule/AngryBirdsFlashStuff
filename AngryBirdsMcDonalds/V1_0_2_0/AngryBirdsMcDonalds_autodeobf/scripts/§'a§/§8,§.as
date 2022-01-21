package §'a§
{
   import §",§.Texture;
   import §%`§.§"s§;
   import §5x§.§2!K§;
   import §9!W§.§=!@§;
   import flash.geom.Point;
   
   public class §8,§
   {
      
      private static var §>!^§:Texture;
      
      private static var §,!I§:Vector.<§2!K§>;
       
      
      private var §^b§:Number;
      
      private var §#X§:Boolean;
      
      private var §<K§:Vector.<§2!K§>;
      
      public function §8,§(param1:Number)
      {
         this.§<K§ = new Vector.<§2!K§>();
         super();
         this.§^b§ = param1;
      }
      
      public function §!G§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§"s§ = null;
         var _loc14_:§2!K§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§2!K§ = null;
         if(!§>!^§)
         {
            §>!^§ = §=!@§.§>!T§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §^N§.§9!n§)
         {
            _loc4_.y += this.§^b§ * §^N§.§%!`§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §^N§.§9#§)
            {
               _loc10_ += _loc4_.x * §^N§.§%!`§ / §^N§.§9#§;
               _loc11_ += _loc4_.y * §^N§.§%!`§ / §^N§.§9#§;
               if((_loc13_ = §=!@§.§>!T§.§1!-§.§&B§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §^N§.§%!@§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§<K§.length > _loc8_)
               {
                  _loc14_ = this.§<K§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§"!d§();
                  §=!@§.§>!T§.objects.§"![§.addChild(_loc14_);
                  this.§<K§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §0!f§.§<C§;
               _loc14_.y = _loc6_.y / §0!f§.§<C§;
               _loc15_ = 1 - _loc7_ / §^N§.§]w§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §^N§.§%!`§;
            _loc6_.y += _loc4_.y * §^N§.§%!`§;
            if((_loc7_ += _loc4_.length * §^N§.§%!`§) > §^N§.§]w§)
            {
               break;
            }
         }
         while(this.§<K§.length > _loc8_)
         {
            _loc16_ = this.§<K§.pop();
            §=!@§.§>!T§.objects.§"![§.removeChild(_loc16_);
            this.§@e§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§2!K§ = null;
         while(this.§<K§.length > 0)
         {
            _loc1_ = this.§<K§.pop();
            §=!@§.§>!T§.objects.§"![§.removeChild(_loc1_);
            this.§@e§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§#X§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§#X§ = param1;
      }
      
      private function §"!d§() : §2!K§
      {
         if(§,!I§ && §,!I§.length > 0)
         {
            return §,!I§.pop();
         }
         return new §2!K§(§>!^§);
      }
      
      private function §@e§(param1:§2!K§) : void
      {
         if(!§,!I§)
         {
            §,!I§ = new Vector.<§2!K§>();
         }
         §,!I§.push(param1);
      }
   }
}
