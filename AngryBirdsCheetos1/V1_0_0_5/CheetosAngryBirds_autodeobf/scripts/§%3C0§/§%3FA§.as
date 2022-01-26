package §<0§
{
   import §-0§.§^a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?A§ extends Sprite
   {
       
      
      private var §<m§:Sprite;
      
      private var § q§:Number;
      
      private var §[1§:Number;
      
      public function §?A§(param1:Number)
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
         this.§<m§ = this.§=I§(_loc3_);
         addChild(this.§<m§);
         this.§<m§.x = -this.§<m§.width / 2;
         this.§<m§.y = -this.§<m§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§<m§);
         this.§<m§ = null;
      }
      
      public function §=I§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §^a§.§;x§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §-%§() : Number
      {
         return this.§ q§;
      }
      
      public function set §-%§(param1:Number) : void
      {
         this.§ q§ = param1;
      }
      
      public function get §`!=§() : Number
      {
         return this.§[1§;
      }
      
      public function set §`!=§(param1:Number) : void
      {
         this.§[1§ = param1;
      }
   }
}
