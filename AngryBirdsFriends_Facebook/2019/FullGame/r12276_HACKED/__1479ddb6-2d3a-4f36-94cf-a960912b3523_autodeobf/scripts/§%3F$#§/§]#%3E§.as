package §?$#§
{
   import §?o§.§ ^§;
   import §?o§.§"!6§;
   import §@"v§.§@$<§;
   import §`$=§.§5$E§;
   
   public class §]#>§
   {
      
      public static const §@$?§:Number = 50;
      
      public static const §=!y§:Number = 0;
       
      
      protected var §,#l§:Number;
      
      protected var §,#>§:Number;
      
      protected var §,!i§:Number;
      
      protected var §"+§:Number;
      
      public var §!"$§:Number;
      
      public var § 6§:§<d§;
      
      public function §]#>§(param1:§<d§, param2:§ ^§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§"!6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§@$<§ = null;
         super();
         this.§ 6§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§,!i§ = param2.borderTop;
            }
            else
            {
               this.§,!i§ = 0;
            }
            if(param2.borderGround)
            {
               this.§"+§ = param2.borderGround;
            }
            else
            {
               this.§"+§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§,#l§ = param2.borderLeft;
            }
            else
            {
               this.§,#l§ = 0;
            }
            if(param2.borderRight)
            {
               this.§,#>§ = param2.borderRight;
            }
            else
            {
               this.§,#>§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§,#l§ = -150;
            this.§,#>§ = 200;
            this.§,!i§ = -160;
            this.§"+§ = 50;
         }
         else
         {
            this.§,#l§ = -200;
            this.§,#>§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§0#7§)
            {
               _loc5_ = param2.§]"S§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §<d§.§=2§ * 4 * §<d§.§6@§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§,#l§)
               {
                  this.§,#l§ = _loc7_;
               }
               if(_loc8_ > this.§,#>§)
               {
                  this.§,#>§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§,#l§)
               {
                  this.§,#l§ = _loc9_.x;
               }
               if(_loc9_.x > this.§,#>§)
               {
                  this.§,#>§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §<d§.§=2§ * §<d§.§6@§;
            this.§,#l§ -= _loc4_;
            this.§,#>§ += _loc4_;
            this.§,!i§ = param2.slingshotY - 160;
            this.§"+§ = param2.slingshotY + 160;
         }
         this.§!"$§ = §<d§.§=2§ * §<d§.§6@§ / (this.§,#>§ - this.§,#l§);
         this.§!"$§ = Math.max(this.§!"$§,§5$E§.§1!%§);
         this.§ 6§.§6"n§(this.§,!i§,this.§"+§,this.§,#l§,this.§,#>§);
      }
      
      public function get §4$%§() : Number
      {
         return this.§,#l§;
      }
      
      public function get §9"<§() : Number
      {
         return this.§,#>§;
      }
      
      public function get §6"B§() : Number
      {
         return this.§,!i§;
      }
      
      public function get §2"c§() : Number
      {
         return this.§"+§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §^#,§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§,!i§ || param2 > this.§"+§ || param1 < this.§,#l§ || param1 > this.§,#>§)
         {
            return true;
         }
         return false;
      }
      
      public function §6"n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§,!i§ = param1;
         this.§"+§ = param2;
         this.§,#l§ = param3;
         this.§,#>§ = param4;
      }
   }
}
