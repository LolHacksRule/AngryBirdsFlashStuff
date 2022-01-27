package §7!!§
{
   import §#!?§.§ !4§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;E§ extends Sprite
   {
       
      
      private var §2F§:Sprite;
      
      private var §;F§:Number;
      
      private var §>8§:Number;
      
      private var §?!P§:§ !4§;
      
      public function §;E§(param1:Number)
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
         this.§2F§ = this.§?g§(_loc3_);
         addChild(this.§2F§);
         this.mouseEnabled = false;
         this.§2F§.x = -this.§2F§.width / 2;
         this.§2F§.y = -this.§2F§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§?!P§)
         {
            this.§?!P§.stop();
            this.§?!P§ = null;
         }
         removeChild(this.§2F§);
         this.§2F§ = null;
      }
      
      public function §?g§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<x§.§,! §(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §else §(param1:§ !4§) : void
      {
         this.§?!P§ = param1;
      }
      
      public function get §else §() : § !4§
      {
         return this.§?!P§;
      }
      
      public function get §!F§() : Number
      {
         return this.§;F§;
      }
      
      public function set §!F§(param1:Number) : void
      {
         this.§;F§ = param1;
      }
      
      public function get §^n§() : Number
      {
         return this.§>8§;
      }
      
      public function set §^n§(param1:Number) : void
      {
         this.§>8§ = param1;
      }
   }
}
