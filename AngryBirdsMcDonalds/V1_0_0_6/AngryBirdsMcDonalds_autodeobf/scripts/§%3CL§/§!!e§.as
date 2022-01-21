package §<L§
{
   import § !^§.Texture;
   import §#M§.§+!Z§;
   import §2![§.§[!U§;
   import §5!L§.§,!&§;
   import flash.geom.Point;
   
   public class §!!e§
   {
      
      private static var §"!E§:Texture;
      
      private static var §]!7§:Vector.<§[!U§>;
       
      
      private var §7!j§:Number;
      
      private var §-[§:Boolean;
      
      private var §^!a§:Vector.<§[!U§>;
      
      public function §!!e§(param1:Number)
      {
         this.§^!a§ = new Vector.<§[!U§>();
         super();
         this.§7!j§ = param1;
      }
      
      public function §1^§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§,!&§ = null;
         var _loc14_:§[!U§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§[!U§ = null;
         if(!§"!E§)
         {
            §"!E§ = §+!Z§.§?!<§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §6H§.§6!Y§)
         {
            _loc4_.y += this.§7!j§ * §6H§.§>@§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §6H§.§2!#§)
            {
               _loc10_ += _loc4_.x * §6H§.§>@§ / §6H§.§2!#§;
               _loc11_ += _loc4_.y * §6H§.§>@§ / §6H§.§2!#§;
               if((_loc13_ = §+!Z§.§?!<§.§5G§.§&O§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §6H§.§%!D§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§^!a§.length > _loc8_)
               {
                  _loc14_ = this.§^!a§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§#!>§();
                  §+!Z§.§?!<§.objects.§3!o§.addChild(_loc14_);
                  this.§^!a§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §!!G§.§ !E§;
               _loc14_.y = _loc6_.y / §!!G§.§ !E§;
               _loc15_ = 1 - _loc7_ / §6H§.§8H§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §6H§.§>@§;
            _loc6_.y += _loc4_.y * §6H§.§>@§;
            if((_loc7_ += _loc4_.length * §6H§.§>@§) > §6H§.§8H§)
            {
               break;
            }
         }
         while(this.§^!a§.length > _loc8_)
         {
            _loc16_ = this.§^!a§.pop();
            §+!Z§.§?!<§.objects.§3!o§.removeChild(_loc16_);
            this.§=Y§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§[!U§ = null;
         while(this.§^!a§.length > 0)
         {
            _loc1_ = this.§^!a§.pop();
            §+!Z§.§?!<§.objects.§3!o§.removeChild(_loc1_);
            this.§=Y§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§-[§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§-[§ = param1;
      }
      
      private function §#!>§() : §[!U§
      {
         if(§]!7§ && §]!7§.length > 0)
         {
            return §]!7§.pop();
         }
         return new §[!U§(§"!E§);
      }
      
      private function §=Y§(param1:§[!U§) : void
      {
         if(!§]!7§)
         {
            §]!7§ = new Vector.<§[!U§>();
         }
         §]!7§.push(param1);
      }
   }
}
