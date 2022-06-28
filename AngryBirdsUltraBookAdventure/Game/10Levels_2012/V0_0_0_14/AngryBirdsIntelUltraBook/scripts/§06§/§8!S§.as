package §06§
{
   import § !x§.§4F§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8!S§ extends Sprite
   {
       
      
      private var §>P§:Sprite;
      
      private var §=z§:Number;
      
      private var §,J§:Number;
      
      private var §@]§:§4F§;
      
      public function §8!S§(param1:Number)
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
         this.§>P§ = this.§>>§(_loc3_);
         addChild(this.§>P§);
         this.mouseEnabled = false;
         this.§>P§.x = -this.§>P§.width / 2;
         this.§>P§.y = -this.§>P§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§@]§)
         {
            this.§@]§.stop();
            this.§@]§ = null;
         }
         removeChild(this.§>P§);
         this.§>P§ = null;
      }
      
      public function §>>§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §9!N§.§0!k§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §var§(param1:§4F§) : void
      {
         this.§@]§ = param1;
      }
      
      public function get §var§() : §4F§
      {
         return this.§@]§;
      }
      
      public function get § c§() : Number
      {
         return this.§=z§;
      }
      
      public function set § c§(param1:Number) : void
      {
         this.§=z§ = param1;
      }
      
      public function get §`a§() : Number
      {
         return this.§,J§;
      }
      
      public function set §`a§(param1:Number) : void
      {
         this.§,J§ = param1;
      }
   }
}
