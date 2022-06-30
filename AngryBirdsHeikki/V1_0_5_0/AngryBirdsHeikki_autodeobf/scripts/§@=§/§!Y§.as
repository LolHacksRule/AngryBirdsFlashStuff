package §@=§
{
   import §>!_§.§2V§;
   import §@u§.§]!-§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!Y§ extends Sprite
   {
       
      
      private var §'`§:Sprite;
      
      private var §%!#§:Number;
      
      private var §;e§:Number;
      
      private var §%T§:§2V§;
      
      public function §!Y§(param1:Number)
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
         this.§'`§ = this.§-D§(_loc3_);
         addChild(this.§'`§);
         this.mouseEnabled = false;
         this.§'`§.x = -this.§'`§.width / 2;
         this.§'`§.y = -this.§'`§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§%T§)
         {
            this.§%T§.stop();
            this.§%T§ = null;
         }
         removeChild(this.§'`§);
         this.§'`§ = null;
      }
      
      public function §-D§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §]!-§.§=!M§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §=;§(param1:§2V§) : void
      {
         this.§%T§ = param1;
      }
      
      public function get §=;§() : §2V§
      {
         return this.§%T§;
      }
      
      public function get §&S§() : Number
      {
         return this.§%!#§;
      }
      
      public function set §&S§(param1:Number) : void
      {
         this.§%!#§ = param1;
      }
      
      public function get §'s§() : Number
      {
         return this.§;e§;
      }
      
      public function set §'s§(param1:Number) : void
      {
         this.§;e§ = param1;
      }
   }
}
