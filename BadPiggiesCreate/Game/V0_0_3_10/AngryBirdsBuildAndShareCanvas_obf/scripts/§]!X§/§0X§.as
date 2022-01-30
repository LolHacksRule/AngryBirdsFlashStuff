package §]!X§
{
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0X§ extends Sprite
   {
       
      
      private var §5A§:Sprite;
      
      private var §[!a§:Number;
      
      private var §<P§:Number;
      
      private var §-3§:§^F§;
      
      public function §0X§(param1:Number)
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
         this.§5A§ = this.§+",§(_loc3_);
         addChild(this.§5A§);
         this.mouseEnabled = false;
         this.§5A§.x = -this.§5A§.width / 2;
         this.§5A§.y = -this.§5A§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§-3§)
         {
            this.§-3§.stop();
            this.§-3§ = null;
         }
         removeChild(this.§5A§);
         this.§5A§ = null;
      }
      
      public function §+",§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5!+§.§,]§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §[7§(param1:§^F§) : void
      {
         this.§-3§ = param1;
      }
      
      public function get §[7§() : §^F§
      {
         return this.§-3§;
      }
      
      public function get §20§() : Number
      {
         return this.§[!a§;
      }
      
      public function set §20§(param1:Number) : void
      {
         this.§[!a§ = param1;
      }
      
      public function get §>!P§() : Number
      {
         return this.§<P§;
      }
      
      public function set §>!P§(param1:Number) : void
      {
         this.§<P§ = param1;
      }
   }
}
