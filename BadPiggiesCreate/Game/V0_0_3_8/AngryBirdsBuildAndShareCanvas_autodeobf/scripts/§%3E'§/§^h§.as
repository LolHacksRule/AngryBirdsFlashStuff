package §>'§
{
   import §"!0§.§;!5§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^h§ extends Sprite
   {
       
      
      private var §+Y§:Sprite;
      
      private var set:Number;
      
      private var §@j§:Number;
      
      private var §@!N§:§;!5§;
      
      public function §^h§(param1:Number)
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
         this.§+Y§ = this.§[O§(_loc3_);
         addChild(this.§+Y§);
         this.mouseEnabled = false;
         this.§+Y§.x = -this.§+Y§.width / 2;
         this.§+Y§.y = -this.§+Y§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§@!N§)
         {
            this.§@!N§.stop();
            this.§@!N§ = null;
         }
         removeChild(this.§+Y§);
         this.§+Y§ = null;
      }
      
      public function §[O§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%"4§.§>!v§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §,!'§(param1:§;!5§) : void
      {
         this.§@!N§ = param1;
      }
      
      public function get §,!'§() : §;!5§
      {
         return this.§@!N§;
      }
      
      public function get §!S§() : Number
      {
         return this.set;
      }
      
      public function set §!S§(param1:Number) : void
      {
         this.set = param1;
      }
      
      public function get §4!u§() : Number
      {
         return this.§@j§;
      }
      
      public function set §4!u§(param1:Number) : void
      {
         this.§@j§ = param1;
      }
   }
}
