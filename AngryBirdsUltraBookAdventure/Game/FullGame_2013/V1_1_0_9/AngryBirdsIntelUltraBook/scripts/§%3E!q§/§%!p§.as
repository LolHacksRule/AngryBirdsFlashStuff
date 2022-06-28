package §>!q§
{
   import §]F§.§^v§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%!p§ extends Sprite
   {
       
      
      private var §6-§:Sprite;
      
      private var §?!;§:Number;
      
      private var §,6§:Number;
      
      private var §`d§:§^v§;
      
      public function §%!p§(param1:Number, param2:Boolean)
      {
         var _loc5_:String = null;
         super();
         var _loc3_:int = 7;
         if(param2)
         {
            _loc3_ = 10;
         }
         var _loc4_:int = Math.random() * _loc3_;
         switch(_loc4_)
         {
            case 0:
               _loc5_ = "P_STAR_4";
               break;
            case 1:
               _loc5_ = "P_STAR_3";
               break;
            case 2:
               _loc5_ = "P_STAR_2";
               break;
            case 3:
               _loc5_ = "P_STAR_1";
               break;
            case 4:
               _loc5_ = "P_SMOKE_3";
               break;
            case 5:
               _loc5_ = "P_SMOKE_2";
               break;
            case 6:
               _loc5_ = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               _loc5_ = "P_COIN_1";
         }
         this.§6-§ = this.§?!y§(_loc5_);
         addChild(this.§6-§);
         this.mouseEnabled = false;
         this.§6-§.x = -this.§6-§.width / 2;
         this.§6-§.y = -this.§6-§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§`d§)
         {
            this.§`d§.stop();
            this.§`d§ = null;
         }
         removeChild(this.§6-§);
         this.§6-§ = null;
      }
      
      public function §?!y§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §,!j§.§!!N§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §'!y§(param1:§^v§) : void
      {
         this.§`d§ = param1;
      }
      
      public function get §'!y§() : §^v§
      {
         return this.§`d§;
      }
      
      public function get §,"#§() : Number
      {
         return this.§?!;§;
      }
      
      public function set §,"#§(param1:Number) : void
      {
         this.§?!;§ = param1;
      }
      
      public function get §#o§() : Number
      {
         return this.§,6§;
      }
      
      public function set §#o§(param1:Number) : void
      {
         this.§,6§ = param1;
      }
   }
}
