package §3!,§
{
   import §7'§.§!y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7U§ extends Sprite
   {
       
      
      private var §'F§:Sprite;
      
      private var §%G§:Number;
      
      private var §!P§:Number;
      
      public function §7U§(param1:Number)
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
         this.§'F§ = this.§<!M§(_loc3_);
         addChild(this.§'F§);
         this.§'F§.x = -this.§'F§.width / 2;
         this.§'F§.y = -this.§'F§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§'F§);
         this.§'F§ = null;
      }
      
      public function §<!M§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!y§.§%!C§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §2!G§() : Number
      {
         return this.§%G§;
      }
      
      public function set §2!G§(param1:Number) : void
      {
         this.§%G§ = param1;
      }
      
      public function get §!5§() : Number
      {
         return this.§!P§;
      }
      
      public function set §!5§(param1:Number) : void
      {
         this.§!P§ = param1;
      }
   }
}
