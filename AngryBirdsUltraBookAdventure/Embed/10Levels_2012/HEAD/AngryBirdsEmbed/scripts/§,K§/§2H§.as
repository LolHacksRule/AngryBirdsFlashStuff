package §,K§
{
   import §"!&§.§ !5§;
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2H§ extends Sprite
   {
       
      
      private var §[Y§:Sprite;
      
      private var §%R§:Number;
      
      private var §@!1§:Number;
      
      private var §9!F§:§ !5§;
      
      public function §2H§(param1:Number)
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
         this.§[Y§ = this.§[!1§(_loc3_);
         addChild(this.§[Y§);
         this.mouseEnabled = false;
         this.§[Y§.x = -this.§[Y§.width / 2;
         this.§[Y§.y = -this.§[Y§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§9!F§)
         {
            this.§9!F§.stop();
            this.§9!F§ = null;
         }
         removeChild(this.§[Y§);
         this.§[Y§ = null;
      }
      
      public function §[!1§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §7!D§.§?0§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §6k§(param1:§ !5§) : void
      {
         this.§9!F§ = param1;
      }
      
      public function get §6k§() : § !5§
      {
         return this.§9!F§;
      }
      
      public function get §,W§() : Number
      {
         return this.§%R§;
      }
      
      public function set §,W§(param1:Number) : void
      {
         this.§%R§ = param1;
      }
      
      public function get §5!<§() : Number
      {
         return this.§@!1§;
      }
      
      public function set §5!<§(param1:Number) : void
      {
         this.§@!1§ = param1;
      }
   }
}
