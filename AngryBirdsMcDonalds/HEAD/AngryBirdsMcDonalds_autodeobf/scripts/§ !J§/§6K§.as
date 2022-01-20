package § !J§
{
   import §&7§.Texture;
   import §4j§.§9M§;
   import §7F§.§2M§;
   import §`!n§.§+i§;
   import flash.geom.Point;
   
   public class §6K§
   {
      
      private static var §`!Z§:Texture;
      
      private static var §2!V§:Vector.<§+i§>;
       
      
      private var §`!]§:Number;
      
      private var §2V§:Boolean;
      
      private var §9-§:Vector.<§+i§>;
      
      private var §+n§:Number = 0;
      
      public function §6K§(param1:Number)
      {
         this.§9-§ = new Vector.<§+i§>();
         super();
         this.§`!]§ = param1;
      }
      
      public function § if§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc5_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:§9M§ = null;
         var _loc15_:§+i§ = null;
         var _loc16_:Number = NaN;
         var _loc17_:§+i§ = null;
         if(!§`!Z§)
         {
            §`!Z§ = §2M§.§1?§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
         }
         var _loc4_:Point;
         (_loc4_ = param2.clone()).normalize(param3);
         var _loc6_:Point = param1.clone();
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Number = this.§+n§;
         while(!_loc9_ && _loc8_ < §,![§.§4!_§)
         {
            _loc4_.y += this.§`!]§ * (§,![§.§#!K§ + _loc10_);
            _loc11_ = _loc6_.x;
            _loc12_ = _loc6_.y;
            _loc13_ = 0;
            while(_loc13_ < §,![§.§6!f§)
            {
               _loc11_ += _loc4_.x * §,![§.§#!K§ / §,![§.§6!f§;
               _loc12_ += _loc4_.y * §,![§.§#!K§ / §,![§.§6!f§;
               if((_loc14_ = §2M§.§1?§.§5!_§.§9!7§(_loc11_,_loc12_)) != null)
               {
                  _loc9_ = true;
                  break;
               }
               _loc13_++;
            }
            if(!_loc5_ || _loc5_.subtract(_loc6_).length > §,![§.§!!r§)
            {
               (_loc5_ = _loc5_ || new Point()).setTo(_loc6_.x,_loc6_.y);
               if(this.§9-§.length > _loc8_)
               {
                  _loc15_ = this.§9-§[_loc8_];
               }
               else
               {
                  _loc15_ = this.§[!&§();
                  §2M§.§1?§.objects.§@!%§.addChild(_loc15_);
                  this.§9-§.push(_loc15_);
               }
               _loc8_++;
               _loc15_.x = _loc6_.x / §%M§.§'!Y§;
               _loc15_.y = _loc6_.y / §%M§.§'!Y§;
               _loc16_ = 1 - _loc7_ / §,![§.§##§ * 0.5;
               _loc15_.scaleX = _loc16_;
               _loc15_.scaleY = _loc16_;
            }
            _loc6_.x += _loc4_.x * (§,![§.§#!K§ + _loc10_);
            _loc6_.y += _loc4_.y * (§,![§.§#!K§ + _loc10_);
            if((_loc7_ += _loc4_.length * (§,![§.§#!K§ + _loc10_)) > §,![§.§##§)
            {
               break;
            }
            _loc10_ = 0;
         }
         while(this.§9-§.length > _loc8_)
         {
            _loc17_ = this.§9-§.pop();
            §2M§.§1?§.objects.§@!%§.removeChild(_loc17_);
            this.§ !§(_loc17_);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:§+i§ = null;
         while(this.§9-§.length > 0)
         {
            _loc1_ = this.§9-§.pop();
            §2M§.§1?§.objects.§@!%§.removeChild(_loc1_);
            this.§ !§(_loc1_);
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§2V§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§2V§ = param1;
      }
      
      private function §[!&§() : §+i§
      {
         if(§2!V§ && §2!V§.length > 0)
         {
            return §2!V§.pop();
         }
         return new §+i§(§`!Z§);
      }
      
      private function § !§(param1:§+i§) : void
      {
         if(!§2!V§)
         {
            §2!V§ = new Vector.<§+i§>();
         }
         §2!V§.push(param1);
      }
   }
}
