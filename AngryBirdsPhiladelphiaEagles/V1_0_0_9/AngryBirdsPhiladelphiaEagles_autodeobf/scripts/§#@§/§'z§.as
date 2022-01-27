package §#@§
{
   import §@!M§.§!l§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'z§ extends Sprite
   {
       
      
      private var §0Q§:Sprite;
      
      private var §>y§:Number;
      
      private var §!!Q§:Number;
      
      private var §8;§:§!l§;
      
      public function §'z§(param1:Number)
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
         this.§0Q§ = this.§7P§(_loc3_);
         addChild(this.§0Q§);
         this.mouseEnabled = false;
         this.§0Q§.x = -this.§0Q§.width / 2;
         this.§0Q§.y = -this.§0Q§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§8;§)
         {
            this.§8;§.stop();
            this.§8;§ = null;
         }
         removeChild(this.§0Q§);
         this.§0Q§ = null;
      }
      
      public function §7P§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §[G§.§6u§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §]G§(param1:§!l§) : void
      {
         this.§8;§ = param1;
      }
      
      public function get §]G§() : §!l§
      {
         return this.§8;§;
      }
      
      public function get §4R§() : Number
      {
         return this.§>y§;
      }
      
      public function set §4R§(param1:Number) : void
      {
         this.§>y§ = param1;
      }
      
      public function get §%!-§() : Number
      {
         return this.§!!Q§;
      }
      
      public function set §%!-§(param1:Number) : void
      {
         this.§!!Q§ = param1;
      }
   }
}
