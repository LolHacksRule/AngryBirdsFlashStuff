package §'!C§
{
   import §"!S§.§<s§;
   import §8!-§.§1R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3F§ extends Sprite
   {
       
      
      private var §+,§:Sprite;
      
      private var §=!0§:Number;
      
      private var §<$§:Number;
      
      private var §,'§:§1R§;
      
      public function §3F§(param1:Number)
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
         this.§+,§ = this.§%D§(_loc3_);
         addChild(this.§+,§);
         this.mouseEnabled = false;
         this.§+,§.x = -this.§+,§.width / 2;
         this.§+,§.y = -this.§+,§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,'§)
         {
            this.§,'§.stop();
            this.§,'§ = null;
         }
         removeChild(this.§+,§);
         this.§+,§ = null;
      }
      
      public function §%D§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<s§.§0b§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §;M§(param1:§1R§) : void
      {
         this.§,'§ = param1;
      }
      
      public function get §;M§() : §1R§
      {
         return this.§,'§;
      }
      
      public function get §9<§() : Number
      {
         return this.§=!0§;
      }
      
      public function set §9<§(param1:Number) : void
      {
         this.§=!0§ = param1;
      }
      
      public function get §0%§() : Number
      {
         return this.§<$§;
      }
      
      public function set §0%§(param1:Number) : void
      {
         this.§<$§ = param1;
      }
   }
}
