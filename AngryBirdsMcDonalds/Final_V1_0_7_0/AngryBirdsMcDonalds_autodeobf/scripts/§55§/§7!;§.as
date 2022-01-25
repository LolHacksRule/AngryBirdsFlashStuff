package §55§
{
   import §%!5§.§7;§;
   import §&!9§.Texture;
   import §'!`§.§%!H§;
   import §0@§.§1]§;
   import flash.geom.Point;
   
   public class §7!;§
   {
      
      private static var §@!R§:Texture;
      
      private static var §=v§:Vector.<§1]§>;
       
      
      private var §,!W§:Number;
      
      private var §2O§:Boolean;
      
      private var §#q§:Vector.<§1]§>;
      
      public function §7!;§(param1:Number)
      {
         this.§#q§ = new Vector.<§1]§>();
         super();
         this.§,!W§ = param1;
      }
      
      public function §?!X§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:§%!H§ = null;
         var _loc14_:§1]§ = null;
         var _loc15_:Number = NaN;
         var _loc16_:§1]§ = null;
         if(!§@!R§)
         {
            §@!R§ = §7;§.§1h§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         while(!_loc9_ && _loc8_ < §7!k§.§=!E§)
         {
            _loc4_.y += this.§,!W§ * §7!k§.§!o§;
            _loc10_ = _loc6_.x;
            _loc11_ = _loc6_.y;
            _loc12_ = 0;
            while(_loc12_ < §7!k§.§=!L§)
            {
               _loc10_ += _loc4_.x * §7!k§.§!o§ / §7!k§.§=!L§;
               _loc11_ += _loc4_.y * §7!k§.§!o§ / §7!k§.§=!L§;
               if((_loc13_ = §7;§.§1h§.§%j§.§2R§(_loc10_,_loc11_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc12_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §7!k§.§ H§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§#q§.length > _loc8_)
               {
                  _loc14_ = this.§#q§[_loc8_];
               }
               else
               {
                  _loc14_ = this.§"!K§();
                  §7;§.§1h§.objects.§2!N§.addChild(_loc14_);
                  this.§#q§.push(_loc14_);
               }
               _loc8_++;
               _loc14_.x = _loc6_.x / §>![§.§%!k§;
               _loc14_.y = _loc6_.y / §>![§.§%!k§;
               _loc15_ = 1 - _loc7_ / §7!k§.§!z§ * 0.5;
               _loc14_.scaleX = _loc15_;
               _loc14_.scaleY = _loc15_;
            }
            _loc6_.x += _loc4_.x * §7!k§.§!o§;
            _loc6_.y += _loc4_.y * §7!k§.§!o§;
            if((_loc7_ += _loc4_.length * §7!k§.§!o§) > §7!k§.§!z§)
            {
               break;
            }
         }
         while(this.§#q§.length > _loc8_)
         {
            _loc16_ = this.§#q§.pop();
            §7;§.§1h§.objects.§2!N§.removeChild(_loc16_);
            this.§'§(_loc16_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§1]§ = null;
         while(this.§#q§.length > 0)
         {
            _loc1_ = this.§#q§.pop();
            §7;§.§1h§.objects.§2!N§.removeChild(_loc1_);
            this.§'§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§2O§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§2O§ = param1;
      }
      
      private function §"!K§() : §1]§
      {
         if(§=v§ && §=v§.length > 0)
         {
            return §=v§.pop();
         }
         return new §1]§(§@!R§);
      }
      
      private function §'§(param1:§1]§) : void
      {
         if(!§=v§)
         {
            §=v§ = new Vector.<§1]§>();
         }
         §=v§.push(param1);
      }
   }
}
