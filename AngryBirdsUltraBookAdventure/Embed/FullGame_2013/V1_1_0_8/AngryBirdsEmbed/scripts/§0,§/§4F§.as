package §0,§
{
   import §#P§.§ !=§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4F§ extends Sprite
   {
       
      
      private var §-!F§:Sprite;
      
      private var §implements§:Number;
      
      private var §@e§:Number;
      
      private var §73§:§ !=§;
      
      public function §4F§(param1:Number, param2:Boolean)
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
         this.§-!F§ = this.§%[§(_loc5_);
         addChild(this.§-!F§);
         this.mouseEnabled = false;
         this.§-!F§.x = -this.§-!F§.width / 2;
         this.§-!F§.y = -this.§-!F§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§73§)
         {
            this.§73§.stop();
            this.§73§ = null;
         }
         removeChild(this.§-!F§);
         this.§-!F§ = null;
      }
      
      public function §%[§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §]!>§.§8!@§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §5§(param1:§ !=§) : void
      {
         this.§73§ = param1;
      }
      
      public function get §5§() : § !=§
      {
         return this.§73§;
      }
      
      public function get §0F§() : Number
      {
         return this.§implements§;
      }
      
      public function set §0F§(param1:Number) : void
      {
         this.§implements§ = param1;
      }
      
      public function get §]!5§() : Number
      {
         return this.§@e§;
      }
      
      public function set §]!5§(param1:Number) : void
      {
         this.§@e§ = param1;
      }
   }
}
