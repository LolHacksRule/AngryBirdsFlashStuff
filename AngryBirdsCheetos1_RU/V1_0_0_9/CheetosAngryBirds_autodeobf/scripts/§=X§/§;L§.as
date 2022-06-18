package §=X§
{
   import §1q§.§-!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;L§ extends Sprite
   {
       
      
      private var §^`§:Sprite;
      
      private var §8!E§:Number;
      
      private var §!!#§:Number;
      
      public function §;L§(param1:Number)
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
         this.§^`§ = this.§^!R§(_loc3_);
         addChild(this.§^`§);
         this.§^`§.x = -this.§^`§.width / 2;
         this.§^`§.y = -this.§^`§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§^`§);
         this.§^`§ = null;
      }
      
      public function §^!R§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §-!+§.§"x§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §`R§() : Number
      {
         return this.§8!E§;
      }
      
      public function set §`R§(param1:Number) : void
      {
         this.§8!E§ = param1;
      }
      
      public function get §=Q§() : Number
      {
         return this.§!!#§;
      }
      
      public function set §=Q§(param1:Number) : void
      {
         this.§!!#§ = param1;
      }
   }
}
