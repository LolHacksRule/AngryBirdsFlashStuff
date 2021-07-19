package §[!w§
{
   import §&"'§.§3^§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;!<§ extends Sprite
   {
       
      
      private var §1"'§:Sprite;
      
      private var §1!6§:Number;
      
      private var §[!]§:Number;
      
      private var §8!g§:§3^§;
      
      public function §;!<§(param1:Number)
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
         this.§1"'§ = this.§8"'§(_loc3_);
         addChild(this.§1"'§);
         this.mouseEnabled = false;
         this.§1"'§.x = -this.§1"'§.width / 2;
         this.§1"'§.y = -this.§1"'§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§8!g§)
         {
            this.§8!g§.stop();
            this.§8!g§ = null;
         }
         removeChild(this.§1"'§);
         this.§1"'§ = null;
      }
      
      public function §8"'§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>!]§.§1!8§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §#!T§(param1:§3^§) : void
      {
         this.§8!g§ = param1;
      }
      
      public function get §#!T§() : §3^§
      {
         return this.§8!g§;
      }
      
      public function get §6U§() : Number
      {
         return this.§1!6§;
      }
      
      public function set §6U§(param1:Number) : void
      {
         this.§1!6§ = param1;
      }
      
      public function get §0!0§() : Number
      {
         return this.§[!]§;
      }
      
      public function set §0!0§(param1:Number) : void
      {
         this.§[!]§ = param1;
      }
   }
}
