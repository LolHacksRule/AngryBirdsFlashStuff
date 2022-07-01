package §5!`§
{
   import §9!n§.§0Y§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#!S§ extends Sprite
   {
       
      
      private var §;!e§:Sprite;
      
      private var §1!O§:Number;
      
      private var §^!Z§:Number;
      
      private var §5f§:§0Y§;
      
      public function §#!S§(param1:Number)
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
         this.§;!e§ = this.§76§(_loc3_);
         addChild(this.§;!e§);
         this.mouseEnabled = false;
         this.§;!e§.x = -this.§;!e§.width / 2;
         this.§;!e§.y = -this.§;!e§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§5f§)
         {
            this.§5f§.stop();
            this.§5f§ = null;
         }
         removeChild(this.§;!e§);
         this.§;!e§ = null;
      }
      
      public function §76§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §1F§.§"!_§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §=y§(param1:§0Y§) : void
      {
         this.§5f§ = param1;
      }
      
      public function get §=y§() : §0Y§
      {
         return this.§5f§;
      }
      
      public function get §!!P§() : Number
      {
         return this.§1!O§;
      }
      
      public function set §!!P§(param1:Number) : void
      {
         this.§1!O§ = param1;
      }
      
      public function get §9<§() : Number
      {
         return this.§^!Z§;
      }
      
      public function set §9<§(param1:Number) : void
      {
         this.§^!Z§ = param1;
      }
   }
}
