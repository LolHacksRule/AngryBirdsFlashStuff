package §]!2§
{
   import §[-§.§#!,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'X§ extends Sprite
   {
       
      
      private var §]9§:Sprite;
      
      private var §null§:Number;
      
      private var §2!B§:Number;
      
      public function §'X§(param1:Number)
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
         this.§]9§ = this.§%-§(_loc3_);
         addChild(this.§]9§);
         this.§]9§.x = -this.§]9§.width / 2;
         this.§]9§.y = -this.§]9§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§]9§);
         this.§]9§ = null;
      }
      
      public function §%-§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §#!,§.§-<§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §54§() : Number
      {
         return this.§null§;
      }
      
      public function set §54§(param1:Number) : void
      {
         this.§null§ = param1;
      }
      
      public function get §`!+§() : Number
      {
         return this.§2!B§;
      }
      
      public function set §`!+§(param1:Number) : void
      {
         this.§2!B§ = param1;
      }
   }
}
