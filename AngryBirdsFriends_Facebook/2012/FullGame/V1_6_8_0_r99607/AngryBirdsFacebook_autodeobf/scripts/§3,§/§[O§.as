package §3,§
{
   import §'_§.§9V§;
   import §+I§.§9!%§;
   import §<L§.Texture;
   import §]&§.§-§;
   import flash.geom.Point;
   
   public class §[O§
   {
      
      private static var §55§:Texture;
      
      private static var §3^§:Vector.<§-§>;
       
      
      private var §[!H§:Number;
      
      private var §9!R§:Boolean;
      
      private var §?!e§:Vector.<§-§>;
      
      public function §[O§(param1:Number)
      {
         this.§?!e§ = new Vector.<§-§>();
         super();
         this.§[!H§ = param1;
      }
      
      public function §^!D§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§9V§ = null;
         var _loc14_:§-§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§-§ = null;
         if(!§55§)
         {
            §55§ = §9!%§.§!!M§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §`a§.§@!n§)
         {
            _loc4_.y += this.§[!H§ * §`a§.§;!w§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §`a§.§9S§)
            {
               _loc10_ += _loc4_.x * §`a§.§;!w§ / §`a§.§9S§;
               _loc11_ += _loc4_.y * §`a§.§;!w§ / §`a§.§9S§;
               if((_loc13_ = §9!%§.§!!M§.§3!=§.§9!;§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §`a§.§6!U§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§?!e§.length > _loc8_)
               {
                  _loc14_ = this.§?!e§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§;!x§();
                  §9!%§.§!!M§.objects.§,!g§.addChild(_loc14_);
                  this.§?!e§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §[!;§.§4!O§;
               _loc14_.y = _loc6_.y / §[!;§.§4!O§;
               _loc15_ = 1 - _loc7_ / §`a§.§6E§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §`a§.§;!w§;
            _loc6_.y += _loc4_.y * §`a§.§;!w§;
            if((_loc7_ += _loc4_.length * §`a§.§;!w§) > §`a§.§6E§)
            {
               break;
            }
         }
         while(this.§?!e§.length > _loc8_)
         {
            _loc16_ = this.§?!e§.pop();
            §9!%§.§!!M§.objects.§,!g§.removeChild(_loc16_);
            this.§+u§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§-§ = null;
         while(this.§?!e§.length > 0)
         {
            _loc1_ = this.§?!e§.pop();
            §9!%§.§!!M§.objects.§,!g§.removeChild(_loc1_);
            this.§+u§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§9!R§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§9!R§ = param1;
      }
      
      private function §;!x§() : §-§
      {
         if(§3^§ && §3^§.length > 0)
         {
            return §3^§.pop();
         }
         return new §-§(§55§);
      }
      
      private function §+u§(param1:§-§) : void
      {
         if(!§3^§)
         {
            §3^§ = new Vector.<§-§>();
         }
         §3^§.push(param1);
      }
   }
}
