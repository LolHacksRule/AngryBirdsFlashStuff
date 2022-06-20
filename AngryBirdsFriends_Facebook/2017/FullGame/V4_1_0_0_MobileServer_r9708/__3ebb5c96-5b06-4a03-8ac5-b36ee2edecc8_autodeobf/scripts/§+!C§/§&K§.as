package §+!C§
{
   import §6$"§.§]"o§;
   import §9$<§.§-t§;
   import §@#§.§@"v§;
   import §@#§.§]#B§;
   
   public class §&K§
   {
      
      public static const §="L§:Number = 50;
      
      public static const §7#W§:Number = 0;
       
      
      protected var §##p§:Number;
      
      protected var §7!>§:Number;
      
      protected var §"l§:Number;
      
      protected var §@#Z§:Number;
      
      public var §2$6§:Number;
      
      public var §`=§:§!!S§;
      
      public function §&K§(param1:§!!S§, param2:§]#B§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§@"v§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§]"o§ = null;
         super();
         this.§`=§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§"l§ = param2.borderTop;
            }
            else
            {
               this.§"l§ = 0;
            }
            if(param2.borderGround)
            {
               this.§@#Z§ = param2.borderGround;
            }
            else
            {
               this.§@#Z§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§##p§ = param2.borderLeft;
            }
            else
            {
               this.§##p§ = 0;
            }
            if(param2.borderRight)
            {
               this.§7!>§ = param2.borderRight;
            }
            else
            {
               this.§7!>§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§##p§ = -150;
            this.§7!>§ = 200;
            this.§"l§ = -160;
            this.§@#Z§ = 50;
         }
         else
         {
            this.§##p§ = -200;
            this.§7!>§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§^i§)
            {
               _loc5_ = param2.§<#^§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §!!S§.§6" § * 4 * §!!S§.§,"3§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§##p§)
               {
                  this.§##p§ = _loc7_;
               }
               if(_loc8_ > this.§7!>§)
               {
                  this.§7!>§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§##p§)
               {
                  this.§##p§ = _loc9_.x;
               }
               if(_loc9_.x > this.§7!>§)
               {
                  this.§7!>§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §!!S§.§6" § * §!!S§.§,"3§;
            this.§##p§ -= _loc4_;
            this.§7!>§ += _loc4_;
            this.§"l§ = param2.slingshotY - 160;
            this.§@#Z§ = param2.slingshotY + 160;
         }
         this.§2$6§ = §!!S§.§6" § * §!!S§.§,"3§ / (this.§7!>§ - this.§##p§);
         this.§2$6§ = Math.max(this.§2$6§,§-t§.§ !§);
         this.§`=§.§4"o§(this.§"l§,this.§@#Z§,this.§##p§,this.§7!>§);
      }
      
      public function get §!"n§() : Number
      {
         return this.§##p§;
      }
      
      public function get §9m§() : Number
      {
         return this.§7!>§;
      }
      
      public function get §'##§() : Number
      {
         return this.§"l§;
      }
      
      public function get §""Q§() : Number
      {
         return this.§@#Z§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §?t§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§"l§ || param2 > this.§@#Z§ || param1 < this.§##p§ || param1 > this.§7!>§)
         {
            return true;
         }
         return false;
      }
      
      public function §4"o§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§"l§ = param1;
         this.§@#Z§ = param2;
         this.§##p§ = param3;
         this.§7!>§ = param4;
      }
   }
}
