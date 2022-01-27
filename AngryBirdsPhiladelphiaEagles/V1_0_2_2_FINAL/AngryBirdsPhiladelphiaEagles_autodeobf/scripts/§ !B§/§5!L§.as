package § !B§
{
   import §'K§.§[!9§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!L§ extends Sprite
   {
       
      
      private var §0;§:Sprite;
      
      private var §>!<§:Number;
      
      private var §`X§:Number;
      
      private var §,$§:§[!9§;
      
      public function §5!L§(param1:Number)
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
         this.§0;§ = this.§-!I§(_loc3_);
         addChild(this.§0;§);
         this.mouseEnabled = false;
         this.§0;§.x = -this.§0;§.width / 2;
         this.§0;§.y = -this.§0;§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,$§)
         {
            this.§,$§.stop();
            this.§,$§ = null;
         }
         removeChild(this.§0;§);
         this.§0;§ = null;
      }
      
      public function §-!I§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §[!D§.§8!N§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §#!?§(param1:§[!9§) : void
      {
         this.§,$§ = param1;
      }
      
      public function get §#!?§() : §[!9§
      {
         return this.§,$§;
      }
      
      public function get §-z§() : Number
      {
         return this.§>!<§;
      }
      
      public function set §-z§(param1:Number) : void
      {
         this.§>!<§ = param1;
      }
      
      public function get §5!F§() : Number
      {
         return this.§`X§;
      }
      
      public function set §5!F§(param1:Number) : void
      {
         this.§`X§ = param1;
      }
   }
}
