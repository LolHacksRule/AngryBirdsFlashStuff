package §3p§
{
   import §1!#§.§]H§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §72§ extends Sprite
   {
       
      
      private var §^!§:Sprite;
      
      private var §"! §:Number;
      
      private var § 7§:Number;
      
      private var §'!<§:§]H§;
      
      public function §72§(param1:Number)
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
         this.§^!§ = this.§'!,§(_loc3_);
         addChild(this.§^!§);
         this.mouseEnabled = false;
         this.§^!§.x = -this.§^!§.width / 2;
         this.§^!§.y = -this.§^!§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§'!<§)
         {
            this.§'!<§.stop();
            this.§'!<§ = null;
         }
         removeChild(this.§^!§);
         this.§^!§ = null;
      }
      
      public function §'!,§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §4D§.§,!O§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §+9§(param1:§]H§) : void
      {
         this.§'!<§ = param1;
      }
      
      public function get §+9§() : §]H§
      {
         return this.§'!<§;
      }
      
      public function get §5M§() : Number
      {
         return this.§"! §;
      }
      
      public function set §5M§(param1:Number) : void
      {
         this.§"! § = param1;
      }
      
      public function get §`Q§() : Number
      {
         return this.§ 7§;
      }
      
      public function set §`Q§(param1:Number) : void
      {
         this.§ 7§ = param1;
      }
   }
}
