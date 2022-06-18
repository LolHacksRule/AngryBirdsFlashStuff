package §,!!§
{
   import §,&§.§7$§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9!,§ extends Sprite
   {
       
      
      private var § !W§:Sprite;
      
      private var §3!K§:Number;
      
      private var §%5§:Number;
      
      public function §9!,§(param1:Number)
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
         this.§ !W§ = this.§2_§(_loc3_);
         addChild(this.§ !W§);
         this.§ !W§.x = -this.§ !W§.width / 2;
         this.§ !W§.y = -this.§ !W§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§ !W§);
         this.§ !W§ = null;
      }
      
      public function §2_§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §7$§.§,W§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §5F§() : Number
      {
         return this.§3!K§;
      }
      
      public function set §5F§(param1:Number) : void
      {
         this.§3!K§ = param1;
      }
      
      public function get §7!§() : Number
      {
         return this.§%5§;
      }
      
      public function set §7!§(param1:Number) : void
      {
         this.§%5§ = param1;
      }
   }
}
