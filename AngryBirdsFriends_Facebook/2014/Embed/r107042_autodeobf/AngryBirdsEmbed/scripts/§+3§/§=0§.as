package §+3§
{
   import §%q§.§9;§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=0§ extends Sprite
   {
       
      
      private var §[!9§:Sprite;
      
      private var §5m§:Number;
      
      private var §+S§:Number;
      
      private var §49§:§9;§;
      
      public function §=0§(param1:Number, param2:Boolean)
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
         this.§[!9§ = this.§0A§(_loc5_);
         addChild(this.§[!9§);
         this.mouseEnabled = false;
         this.§[!9§.x = -this.§[!9§.width / 2;
         this.§[!9§.y = -this.§[!9§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§49§)
         {
            this.§49§.stop();
            this.§49§ = null;
         }
         removeChild(this.§[!9§);
         this.§[!9§ = null;
      }
      
      public function §0A§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5R§.§6+§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §"_§(param1:§9;§) : void
      {
         this.§49§ = param1;
      }
      
      public function get §"_§() : §9;§
      {
         return this.§49§;
      }
      
      public function get §%C§() : Number
      {
         return this.§5m§;
      }
      
      public function set §%C§(param1:Number) : void
      {
         this.§5m§ = param1;
      }
      
      public function get §69§() : Number
      {
         return this.§+S§;
      }
      
      public function set §69§(param1:Number) : void
      {
         this.§+S§ = param1;
      }
   }
}
