package §>-§
{
   import §2!5§.§?A§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6%§ extends Sprite
   {
       
      
      private var §+!<§:Sprite;
      
      private var §import§:Number;
      
      private var §7S§:Number;
      
      private var §;I§:§?A§;
      
      public function §6%§(param1:Number)
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
         this.§+!<§ = this.§^! §(_loc3_);
         addChild(this.§+!<§);
         this.mouseEnabled = false;
         this.§+!<§.x = -this.§+!<§.width / 2;
         this.§+!<§.y = -this.§+!<§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§;I§)
         {
            this.§;I§.stop();
            this.§;I§ = null;
         }
         removeChild(this.§+!<§);
         this.§+!<§ = null;
      }
      
      public function §^! §(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>D§.§`C§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §-H§(param1:§?A§) : void
      {
         this.§;I§ = param1;
      }
      
      public function get §-H§() : §?A§
      {
         return this.§;I§;
      }
      
      public function get §8e§() : Number
      {
         return this.§import§;
      }
      
      public function set §8e§(param1:Number) : void
      {
         this.§import§ = param1;
      }
      
      public function get § !1§() : Number
      {
         return this.§7S§;
      }
      
      public function set § !1§(param1:Number) : void
      {
         this.§7S§ = param1;
      }
   }
}
