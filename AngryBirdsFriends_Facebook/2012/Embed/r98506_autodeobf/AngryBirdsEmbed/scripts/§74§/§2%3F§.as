package §74§
{
   import §;=§.§7I§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2?§ extends Sprite
   {
       
      
      private var §6!;§:Sprite;
      
      private var §8=§:Number;
      
      private var §?N§:Number;
      
      private var §7!1§:§7I§;
      
      public function §2?§(param1:Number)
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
         this.§6!;§ = this.§"9§(_loc3_);
         addChild(this.§6!;§);
         this.mouseEnabled = false;
         this.§6!;§.x = -this.§6!;§.width / 2;
         this.§6!;§.y = -this.§6!;§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§7!1§)
         {
            this.§7!1§.stop();
            this.§7!1§ = null;
         }
         removeChild(this.§6!;§);
         this.§6!;§ = null;
      }
      
      public function §"9§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §53§.§[N§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set § !3§(param1:§7I§) : void
      {
         this.§7!1§ = param1;
      }
      
      public function get § !3§() : §7I§
      {
         return this.§7!1§;
      }
      
      public function get §`!&§() : Number
      {
         return this.§8=§;
      }
      
      public function set §`!&§(param1:Number) : void
      {
         this.§8=§ = param1;
      }
      
      public function get §@W§() : Number
      {
         return this.§?N§;
      }
      
      public function set §@W§(param1:Number) : void
      {
         this.§?N§ = param1;
      }
   }
}
