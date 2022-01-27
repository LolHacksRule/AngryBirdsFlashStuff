package §6!"§
{
   import §6-§.§%1§;
   import §7S§.§3t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §47§ extends Sprite
   {
       
      
      private var §5!J§:Sprite;
      
      private var §]`§:Number;
      
      private var §%!§:Number;
      
      private var §&&§:§%1§;
      
      public function §47§(param1:Number)
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
         this.§5!J§ = this.§-!D§(_loc3_);
         addChild(this.§5!J§);
         this.mouseEnabled = false;
         this.§5!J§.x = -this.§5!J§.width / 2;
         this.§5!J§.y = -this.§5!J§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§&&§)
         {
            this.§&&§.stop();
            this.§&&§ = null;
         }
         removeChild(this.§5!J§);
         this.§5!J§ = null;
      }
      
      public function §-!D§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §3t§.§#v§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §`d§(param1:§%1§) : void
      {
         this.§&&§ = param1;
      }
      
      public function get §`d§() : §%1§
      {
         return this.§&&§;
      }
      
      public function get §;!N§() : Number
      {
         return this.§]`§;
      }
      
      public function set §;!N§(param1:Number) : void
      {
         this.§]`§ = param1;
      }
      
      public function get §'x§() : Number
      {
         return this.§%!§;
      }
      
      public function set §'x§(param1:Number) : void
      {
         this.§%!§ = param1;
      }
   }
}
