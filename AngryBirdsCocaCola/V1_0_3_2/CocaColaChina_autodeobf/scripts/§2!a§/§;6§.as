package §2!a§
{
   import §-!9§.§3!5§;
   import §3!`§.§]&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;6§ extends Sprite
   {
       
      
      private var §#!G§:Sprite;
      
      private var §3%§:Number;
      
      private var §2%§:Number;
      
      private var §,!_§:§]&§;
      
      public function §;6§(param1:Number)
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
         this.§#!G§ = this.§8;§(_loc3_);
         addChild(this.§#!G§);
         this.mouseEnabled = false;
         this.§#!G§.x = -this.§#!G§.width / 2;
         this.§#!G§.y = -this.§#!G§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,!_§)
         {
            this.§,!_§.stop();
            this.§,!_§ = null;
         }
         removeChild(this.§#!G§);
         this.§#!G§ = null;
      }
      
      public function §8;§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §3!5§.§9g§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §4!S§(param1:§]&§) : void
      {
         this.§,!_§ = param1;
      }
      
      public function get §4!S§() : §]&§
      {
         return this.§,!_§;
      }
      
      public function get §12§() : Number
      {
         return this.§3%§;
      }
      
      public function set §12§(param1:Number) : void
      {
         this.§3%§ = param1;
      }
      
      public function get §]^§() : Number
      {
         return this.§2%§;
      }
      
      public function set §]^§(param1:Number) : void
      {
         this.§2%§ = param1;
      }
   }
}
