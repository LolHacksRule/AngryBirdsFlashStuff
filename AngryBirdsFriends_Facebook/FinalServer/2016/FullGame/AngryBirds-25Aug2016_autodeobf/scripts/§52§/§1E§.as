package §52§
{
   import §#v§.§-"R§;
   import §#v§.§8i§;
   import §,#L§.§!#%§;
   import §["Q§.§0$,§;
   
   public class §1E§
   {
      
      public static const §1!n§:Number = 50;
      
      public static const §1!S§:Number = 0;
       
      
      protected var §<0§:Number;
      
      protected var §"!M§:Number;
      
      protected var §=$0§:Number;
      
      protected var §@!=§:Number;
      
      public var §'"q§:Number;
      
      public var §,#2§:§#!,§;
      
      public function §1E§(param1:§#!,§, param2:§-"R§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§8i§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§!#%§ = null;
         super();
         this.§,#2§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§=$0§ = param2.borderTop;
            }
            else
            {
               this.§=$0§ = 0;
            }
            if(param2.borderGround)
            {
               this.§@!=§ = param2.borderGround;
            }
            else
            {
               this.§@!=§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§<0§ = param2.borderLeft;
            }
            else
            {
               this.§<0§ = 0;
            }
            if(param2.borderRight)
            {
               this.§"!M§ = param2.borderRight;
            }
            else
            {
               this.§"!M§ = 0;
            }
         }
         else
         {
            this.§<0§ = -200;
            this.§"!M§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§@"+§)
            {
               _loc5_ = param2.§7!Q§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §#!,§.§%"9§ * 4 * §#!,§.§?$#§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§<0§)
               {
                  this.§<0§ = _loc7_;
               }
               if(_loc8_ > this.§"!M§)
               {
                  this.§"!M§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§<0§)
               {
                  this.§<0§ = _loc9_.x;
               }
               if(_loc9_.x > this.§"!M§)
               {
                  this.§"!M§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §#!,§.§%"9§ * §#!,§.§?$#§;
            this.§<0§ -= _loc4_;
            this.§"!M§ += _loc4_;
            this.§=$0§ = param2.slingshotY - 160;
            this.§@!=§ = param2.slingshotY + 160;
         }
         this.§'"q§ = §#!,§.§%"9§ * §#!,§.§?$#§ / (this.§"!M§ - this.§<0§);
         this.§'"q§ = Math.max(this.§'"q§,§0$,§.§"#I§);
         this.§,#2§.§6,§(this.§=$0§,this.§@!=§,this.§<0§,this.§"!M§);
      }
      
      public function get §9!m§() : Number
      {
         return this.§<0§;
      }
      
      public function get §6"4§() : Number
      {
         return this.§"!M§;
      }
      
      public function get §&#Q§() : Number
      {
         return this.§=$0§;
      }
      
      public function get §3^§() : Number
      {
         return this.§@!=§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §]""§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=$0§ || param2 > this.§@!=§ || param1 < this.§<0§ || param1 > this.§"!M§)
         {
            return true;
         }
         return false;
      }
      
      public function §6,§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§=$0§ = param1;
         this.§@!=§ = param2;
         this.§<0§ = param3;
         this.§"!M§ = param4;
      }
   }
}
