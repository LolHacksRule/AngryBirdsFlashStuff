package §87§
{
   import §`F§.§?!3§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §24§ extends Sprite
   {
       
      
      private var §2!-§:Sprite;
      
      private var § !2§:Number;
      
      private var §;!>§:Number;
      
      private var §#N§:§?!3§;
      
      public function §24§(param1:Number)
      {
         var _loc3_:String = null;
         super();
         var _loc2_:int = Math.random() * 7;
         switch(_loc2_)
         {
            case 0:
               _loc3_ = "P_STAR_4";
               break;
            case 1:
               _loc3_ = "P_STAR_3";
               break;
            case 2:
               _loc3_ = "P_STAR_2";
               break;
            case 3:
               _loc3_ = "P_STAR_1";
               break;
            case 4:
               _loc3_ = "P_SMOKE_3";
               break;
            case 5:
               _loc3_ = "P_SMOKE_2";
               break;
            case 6:
               _loc3_ = "P_SMOKE_1";
         }
         this.§2!-§ = this.§8#§(_loc3_);
         addChild(this.§2!-§);
         this.mouseEnabled = false;
         this.§2!-§.x = -this.§2!-§.width / 2;
         this.§2!-§.y = -this.§2!-§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§#N§)
         {
            this.§#N§.stop();
            this.§#N§ = null;
         }
         removeChild(this.§2!-§);
         this.§2!-§ = null;
      }
      
      public function §8#§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §'!H§.§&!G§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §@U§(param1:§?!3§) : void
      {
         this.§#N§ = param1;
      }
      
      public function get §@U§() : §?!3§
      {
         return this.§#N§;
      }
      
      public function get §#!0§() : Number
      {
         return this.§ !2§;
      }
      
      public function set §#!0§(param1:Number) : void
      {
         this.§ !2§ = param1;
      }
      
      public function get § ^§() : Number
      {
         return this.§;!>§;
      }
      
      public function set § ^§(param1:Number) : void
      {
         this.§;!>§ = param1;
      }
   }
}
