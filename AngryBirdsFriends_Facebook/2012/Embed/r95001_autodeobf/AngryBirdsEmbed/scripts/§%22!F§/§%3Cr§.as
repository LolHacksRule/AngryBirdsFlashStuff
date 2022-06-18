package §"!F§
{
   import §]5§.§1^§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<r§ extends Sprite
   {
       
      
      private var §`!2§:Sprite;
      
      private var §5!$§:Number;
      
      private var §8'§:Number;
      
      private var §;v§:§1^§;
      
      public function §<r§(param1:Number)
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
         this.§`!2§ = this.§8_§(_loc3_);
         addChild(this.§`!2§);
         this.mouseEnabled = false;
         this.§`!2§.x = -this.§`!2§.width / 2;
         this.§`!2§.y = -this.§`!2§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§;v§)
         {
            this.§;v§.stop();
            this.§;v§ = null;
         }
         removeChild(this.§`!2§);
         this.§`!2§ = null;
      }
      
      public function §8_§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = § 3§.§+i§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §>!2§(param1:§1^§) : void
      {
         this.§;v§ = param1;
      }
      
      public function get §>!2§() : §1^§
      {
         return this.§;v§;
      }
      
      public function get §^!-§() : Number
      {
         return this.§5!$§;
      }
      
      public function set §^!-§(param1:Number) : void
      {
         this.§5!$§ = param1;
      }
      
      public function get §?!F§() : Number
      {
         return this.§8'§;
      }
      
      public function set §?!F§(param1:Number) : void
      {
         this.§8'§ = param1;
      }
   }
}
