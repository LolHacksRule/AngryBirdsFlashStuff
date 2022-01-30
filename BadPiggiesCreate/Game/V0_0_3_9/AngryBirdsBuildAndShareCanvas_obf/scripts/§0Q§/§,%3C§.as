package §0Q§
{
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,<§ extends Sprite
   {
       
      
      private var §=!8§:Sprite;
      
      private var §&M§:Number;
      
      private var §6?§:Number;
      
      private var §2y§:§^!#§;
      
      public function §,<§(param1:Number)
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
         this.§=!8§ = this.§?p§(_loc3_);
         addChild(this.§=!8§);
         this.mouseEnabled = false;
         this.§=!8§.x = -this.§=!8§.width / 2;
         this.§=!8§.y = -this.§=!8§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§2y§)
         {
            this.§2y§.stop();
            this.§2y§ = null;
         }
         removeChild(this.§=!8§);
         this.§=!8§ = null;
      }
      
      public function §?p§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §8!q§.§2^§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §9l§(param1:§^!#§) : void
      {
         this.§2y§ = param1;
      }
      
      public function get §9l§() : §^!#§
      {
         return this.§2y§;
      }
      
      public function get §=G§() : Number
      {
         return this.§&M§;
      }
      
      public function set §=G§(param1:Number) : void
      {
         this.§&M§ = param1;
      }
      
      public function get §@f§() : Number
      {
         return this.§6?§;
      }
      
      public function set §@f§(param1:Number) : void
      {
         this.§6?§ = param1;
      }
   }
}
