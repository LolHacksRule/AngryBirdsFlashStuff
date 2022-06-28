package §'o§
{
   import §?!+§.§3_§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<N§ extends Sprite
   {
       
      
      private var §7f§:Sprite;
      
      private var §^I§:Number;
      
      private var § !+§:Number;
      
      private var §]5§:§3_§;
      
      public function §<N§(param1:Number)
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
         this.§7f§ = this.§[o§(_loc3_);
         addChild(this.§7f§);
         this.mouseEnabled = false;
         this.§7f§.x = -this.§7f§.width / 2;
         this.§7f§.y = -this.§7f§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§]5§)
         {
            this.§]5§.stop();
            this.§]5§ = null;
         }
         removeChild(this.§7f§);
         this.§7f§ = null;
      }
      
      public function §[o§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!Q§.§^!H§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §<p§(param1:§3_§) : void
      {
         this.§]5§ = param1;
      }
      
      public function get §<p§() : §3_§
      {
         return this.§]5§;
      }
      
      public function get §+!7§() : Number
      {
         return this.§^I§;
      }
      
      public function set §+!7§(param1:Number) : void
      {
         this.§^I§ = param1;
      }
      
      public function get §'!3§() : Number
      {
         return this.§ !+§;
      }
      
      public function set §'!3§(param1:Number) : void
      {
         this.§ !+§ = param1;
      }
   }
}
