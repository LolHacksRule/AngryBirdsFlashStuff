package §@0§
{
   import §%!P§.§4#u§;
   import §;$3§.§%V§;
   import §;$3§.§>f§;
   import §>M§.§["z§;
   
   public class §`s§
   {
      
      public static const §>"9§:Number = 50;
      
      public static const §[!1§:Number = 0;
       
      
      protected var §,##§:Number;
      
      protected var §4$%§:Number;
      
      protected var §""n§:Number;
      
      protected var §5#Q§:Number;
      
      public var §use§:Number;
      
      public var §=#N§:§%!q§;
      
      public function §`s§(param1:§%!q§, param2:§>f§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§%V§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§["z§ = null;
         super();
         this.§=#N§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§""n§ = param2.borderTop;
            }
            else
            {
               this.§""n§ = 0;
            }
            if(param2.borderGround)
            {
               this.§5#Q§ = param2.borderGround;
            }
            else
            {
               this.§5#Q§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§,##§ = param2.borderLeft;
            }
            else
            {
               this.§,##§ = 0;
            }
            if(param2.borderRight)
            {
               this.§4$%§ = param2.borderRight;
            }
            else
            {
               this.§4$%§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§,##§ = -150;
            this.§4$%§ = 200;
            this.§""n§ = -160;
            this.§5#Q§ = 50;
         }
         else
         {
            this.§,##§ = -200;
            this.§4$%§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§&"!§)
            {
               _loc5_ = param2.§4D§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §%!q§.§ "+§ * 4 * §%!q§.§6q§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§,##§)
               {
                  this.§,##§ = _loc7_;
               }
               if(_loc8_ > this.§4$%§)
               {
                  this.§4$%§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§,##§)
               {
                  this.§,##§ = _loc9_.x;
               }
               if(_loc9_.x > this.§4$%§)
               {
                  this.§4$%§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §%!q§.§ "+§ * §%!q§.§6q§;
            this.§,##§ -= _loc4_;
            this.§4$%§ += _loc4_;
            this.§""n§ = param2.slingshotY - 160;
            this.§5#Q§ = param2.slingshotY + 160;
         }
         this.§use§ = §%!q§.§ "+§ * §%!q§.§6q§ / (this.§4$%§ - this.§,##§);
         this.§use§ = Math.max(this.§use§,§4#u§.§6"j§);
         this.§=#N§.§=I§(this.§""n§,this.§5#Q§,this.§,##§,this.§4$%§);
      }
      
      public function get §4!l§() : Number
      {
         return this.§,##§;
      }
      
      public function get §,$1§() : Number
      {
         return this.§4$%§;
      }
      
      public function get §%$4§() : Number
      {
         return this.§""n§;
      }
      
      public function get §#"A§() : Number
      {
         return this.§5#Q§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §`"b§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§""n§ || param2 > this.§5#Q§ || param1 < this.§,##§ || param1 > this.§4$%§)
         {
            return true;
         }
         return false;
      }
      
      public function §=I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§""n§ = param1;
         this.§5#Q§ = param2;
         this.§,##§ = param3;
         this.§4$%§ = param4;
      }
   }
}
