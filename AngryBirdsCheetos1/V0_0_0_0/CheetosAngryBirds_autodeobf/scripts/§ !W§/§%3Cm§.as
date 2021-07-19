package § !W§
{
   import §0v§.§-'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<m§ extends Sprite
   {
       
      
      private var § q§:Sprite;
      
      private var §[1§:Number;
      
      private var §=I§:Number;
      
      public function §<m§(param1:Number)
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
         this.§ q§ = this.§-%§(_loc3_);
         addChild(this.§ q§);
         this.§ q§.x = -this.§ q§.width / 2;
         this.§ q§.y = -this.§ q§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§ q§);
         this.§ q§ = null;
      }
      
      public function §-%§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §-'§.§]`§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §`!=§() : Number
      {
         return this.§[1§;
      }
      
      public function set §`!=§(param1:Number) : void
      {
         this.§[1§ = param1;
      }
      
      public function get §8D§() : Number
      {
         return this.§=I§;
      }
      
      public function set §8D§(param1:Number) : void
      {
         this.§=I§ = param1;
      }
   }
}
