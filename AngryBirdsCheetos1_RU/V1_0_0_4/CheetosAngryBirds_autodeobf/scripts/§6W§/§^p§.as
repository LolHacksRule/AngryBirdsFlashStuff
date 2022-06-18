package §6W§
{
   import §@y§.§"!X§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^p§ extends Sprite
   {
       
      
      private var §;7§:Sprite;
      
      private var §@!V§:Number;
      
      private var §,9§:Number;
      
      public function §^p§(param1:Number)
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
         this.§;7§ = this.§%!G§(_loc3_);
         addChild(this.§;7§);
         this.§;7§.x = -this.§;7§.width / 2;
         this.§;7§.y = -this.§;7§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§;7§);
         this.§;7§ = null;
      }
      
      public function §%!G§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §"!X§.§1!0§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §9!X§() : Number
      {
         return this.§@!V§;
      }
      
      public function set §9!X§(param1:Number) : void
      {
         this.§@!V§ = param1;
      }
      
      public function get § $§() : Number
      {
         return this.§,9§;
      }
      
      public function set § $§(param1:Number) : void
      {
         this.§,9§ = param1;
      }
   }
}
