package §`! §
{
   import §`!1§.§'a§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1!@§ extends Sprite
   {
       
      
      private var §9!-§:Sprite;
      
      private var §[!8§:Number;
      
      private var §0!M§:Number;
      
      private var §%9§:§'a§;
      
      public function §1!@§(param1:Number, param2:Boolean)
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
         this.§9!-§ = this.§^4§(_loc5_);
         addChild(this.§9!-§);
         this.mouseEnabled = false;
         this.§9!-§.x = -this.§9!-§.width / 2;
         this.§9!-§.y = -this.§9!-§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§%9§)
         {
            this.§%9§.stop();
            this.§%9§ = null;
         }
         removeChild(this.§9!-§);
         this.§9!-§ = null;
      }
      
      public function §^4§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!?§.§4"§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §8!7§(param1:§'a§) : void
      {
         this.§%9§ = param1;
      }
      
      public function get §8!7§() : §'a§
      {
         return this.§%9§;
      }
      
      public function get §&m§() : Number
      {
         return this.§[!8§;
      }
      
      public function set §&m§(param1:Number) : void
      {
         this.§[!8§ = param1;
      }
      
      public function get §6c§() : Number
      {
         return this.§0!M§;
      }
      
      public function set §6c§(param1:Number) : void
      {
         this.§0!M§ = param1;
      }
   }
}
