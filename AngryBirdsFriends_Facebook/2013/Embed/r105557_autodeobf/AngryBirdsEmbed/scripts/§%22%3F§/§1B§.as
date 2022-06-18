package §"?§
{
   import §@q§.§+!B§;
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1B§ extends Sprite
   {
       
      
      private var §]!C§:Sprite;
      
      private var §3#§:Number;
      
      private var §,!>§:Number;
      
      private var §<!"§:§+!B§;
      
      public function §1B§(param1:Number, param2:Boolean)
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
         this.§]!C§ = this.§1i§(_loc5_);
         addChild(this.§]!C§);
         this.mouseEnabled = false;
         this.§]!C§.x = -this.§]!C§.width / 2;
         this.§]!C§.y = -this.§]!C§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§<!"§)
         {
            this.§<!"§.stop();
            this.§<!"§ = null;
         }
         removeChild(this.§]!C§);
         this.§]!C§ = null;
      }
      
      public function §1i§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §&%§.§<7§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §=F§(param1:§+!B§) : void
      {
         this.§<!"§ = param1;
      }
      
      public function get §=F§() : §+!B§
      {
         return this.§<!"§;
      }
      
      public function get §]!I§() : Number
      {
         return this.§3#§;
      }
      
      public function set §]!I§(param1:Number) : void
      {
         this.§3#§ = param1;
      }
      
      public function get §3d§() : Number
      {
         return this.§,!>§;
      }
      
      public function set §3d§(param1:Number) : void
      {
         this.§,!>§ = param1;
      }
   }
}
