package §7H§
{
   import §^q§.§8,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=v§ extends Sprite
   {
       
      
      private var §<!E§:Sprite;
      
      private var §'!N§:Number;
      
      private var §&x§:Number;
      
      public function §=v§(param1:Number)
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
         this.§<!E§ = this.§?!@§(_loc3_);
         addChild(this.§<!E§);
         this.§<!E§.x = -this.§<!E§.width / 2;
         this.§<!E§.y = -this.§<!E§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§<!E§);
         this.§<!E§ = null;
      }
      
      public function §?!@§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §8,§.§8X§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §0!M§() : Number
      {
         return this.§'!N§;
      }
      
      public function set §0!M§(param1:Number) : void
      {
         this.§'!N§ = param1;
      }
      
      public function get §`e§() : Number
      {
         return this.§&x§;
      }
      
      public function set §`e§(param1:Number) : void
      {
         this.§&x§ = param1;
      }
   }
}
