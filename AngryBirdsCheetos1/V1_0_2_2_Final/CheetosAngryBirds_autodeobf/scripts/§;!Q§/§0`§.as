package §;!Q§
{
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0`§ extends Sprite
   {
       
      
      private var §-U§:Sprite;
      
      private var §?!?§:Number;
      
      private var §&E§:Number;
      
      public function §0`§(param1:Number)
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
         this.§-U§ = this.§^r§(_loc3_);
         addChild(this.§-U§);
         this.§-U§.x = -this.§-U§.width / 2;
         this.§-U§.y = -this.§-U§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§-U§);
         this.§-U§ = null;
      }
      
      public function §^r§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<!I§.§;!U§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §0D§() : Number
      {
         return this.§?!?§;
      }
      
      public function set §0D§(param1:Number) : void
      {
         this.§?!?§ = param1;
      }
      
      public function get §^@§() : Number
      {
         return this.§&E§;
      }
      
      public function set §^@§(param1:Number) : void
      {
         this.§&E§ = param1;
      }
   }
}
