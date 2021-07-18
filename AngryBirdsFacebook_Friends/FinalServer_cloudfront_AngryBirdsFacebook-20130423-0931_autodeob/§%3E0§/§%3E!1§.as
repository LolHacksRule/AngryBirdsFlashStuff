package §>0§
{
   import §2"'§.§6!K§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>!1§ extends Sprite
   {
       
      
      private var §[! §:Sprite;
      
      private var §1!&§:Number;
      
      private var §9m§:Number;
      
      private var §4X§:§6!K§;
      
      public function §>!1§(param1:Number, param2:Boolean)
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
         this.§[! § = this.§=f§(_loc5_);
         addChild(this.§[! §);
         this.mouseEnabled = false;
         this.§[! §.x = -this.§[! §.width / 2;
         this.§[! §.y = -this.§[! §.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§4X§)
         {
            this.§4X§.stop();
            this.§4X§ = null;
         }
         removeChild(this.§[! §);
         this.§[! § = null;
      }
      
      public function §=f§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §?q§.§ q§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §-">§(param1:§6!K§) : void
      {
         this.§4X§ = param1;
      }
      
      public function get §-">§() : §6!K§
      {
         return this.§4X§;
      }
      
      public function get §7j§() : Number
      {
         return this.§1!&§;
      }
      
      public function set §7j§(param1:Number) : void
      {
         this.§1!&§ = param1;
      }
      
      public function get §^!R§() : Number
      {
         return this.§9m§;
      }
      
      public function set §^!R§(param1:Number) : void
      {
         this.§9m§ = param1;
      }
   }
}
