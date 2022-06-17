package § !D§
{
   import §"$=§.§5#v§;
   import §"$=§.§=$&§;
   import §%_§.§;l§;
   import §9$+§.§9"4§;
   
   public class §;3§
   {
      
      public static const §`"?§:Number = 50;
      
      public static const §3#r§:Number = 0;
       
      
      protected var §"#s§:Number;
      
      protected var §<"o§:Number;
      
      protected var §9T§:Number;
      
      protected var § !&§:Number;
      
      public var §<"n§:Number;
      
      public var §&!g§:§'"u§;
      
      public function §;3§(param1:§'"u§, param2:§=$&§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§5#v§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§9"4§ = null;
         super();
         this.§&!g§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§9T§ = param2.borderTop;
            }
            else
            {
               this.§9T§ = 0;
            }
            if(param2.borderGround)
            {
               this.§ !&§ = param2.borderGround;
            }
            else
            {
               this.§ !&§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§"#s§ = param2.borderLeft;
            }
            else
            {
               this.§"#s§ = 0;
            }
            if(param2.borderRight)
            {
               this.§<"o§ = param2.borderRight;
            }
            else
            {
               this.§<"o§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§"#s§ = -150;
            this.§<"o§ = 200;
            this.§9T§ = -160;
            this.§ !&§ = 50;
         }
         else
         {
            this.§"#s§ = -200;
            this.§<"o§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§^l§)
            {
               _loc5_ = param2.§3#@§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §'"u§.§]!F§ * 4 * §'"u§.§'#e§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§"#s§)
               {
                  this.§"#s§ = _loc7_;
               }
               if(_loc8_ > this.§<"o§)
               {
                  this.§<"o§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§"#s§)
               {
                  this.§"#s§ = _loc9_.x;
               }
               if(_loc9_.x > this.§<"o§)
               {
                  this.§<"o§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §'"u§.§]!F§ * §'"u§.§'#e§;
            this.§"#s§ -= _loc4_;
            this.§<"o§ += _loc4_;
            this.§9T§ = param2.slingshotY - 160;
            this.§ !&§ = param2.slingshotY + 160;
         }
         this.§<"n§ = §'"u§.§]!F§ * §'"u§.§'#e§ / (this.§<"o§ - this.§"#s§);
         this.§<"n§ = Math.max(this.§<"n§,§;l§.§8$@§);
         this.§&!g§.§[!!§(this.§9T§,this.§ !&§,this.§"#s§,this.§<"o§);
      }
      
      public function get §+#G§() : Number
      {
         return this.§"#s§;
      }
      
      public function get §+U§() : Number
      {
         return this.§<"o§;
      }
      
      public function get §5#O§() : Number
      {
         return this.§9T§;
      }
      
      public function get §8$3§() : Number
      {
         return this.§ !&§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §`"k§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§9T§ || param2 > this.§ !&§ || param1 < this.§"#s§ || param1 > this.§<"o§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§9T§ = param1;
         this.§ !&§ = param2;
         this.§"#s§ = param3;
         this.§<"o§ = param4;
      }
   }
}
