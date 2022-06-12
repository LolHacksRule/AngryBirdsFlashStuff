package §&k§
{
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6"!§ extends Sprite
   {
       
      
      private var §--§:Sprite;
      
      private var §2"!§:Number;
      
      private var §4-§:Number;
      
      private var §^m§:§-!m§;
      
      public function §6"!§(param1:Number)
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
         this.§--§ = this.§]!C§(_loc3_);
         addChild(this.§--§);
         this.mouseEnabled = false;
         this.§--§.x = -this.§--§.width / 2;
         this.§--§.y = -this.§--§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§^m§)
         {
            this.§^m§.stop();
            this.§^m§ = null;
         }
         removeChild(this.§--§);
         this.§--§ = null;
      }
      
      public function §]!C§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=#§.§1v§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1<§(param1:§-!m§) : void
      {
         this.§^m§ = param1;
      }
      
      public function get §1<§() : §-!m§
      {
         return this.§^m§;
      }
      
      public function get §8o§() : Number
      {
         return this.§2"!§;
      }
      
      public function set §8o§(param1:Number) : void
      {
         this.§2"!§ = param1;
      }
      
      public function get §+§() : Number
      {
         return this.§4-§;
      }
      
      public function set §+§(param1:Number) : void
      {
         this.§4-§ = param1;
      }
   }
}
