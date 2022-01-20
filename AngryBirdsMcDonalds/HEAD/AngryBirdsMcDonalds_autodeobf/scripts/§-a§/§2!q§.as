package §-a§
{
   import §4!A§.§#b§;
   import §;'§.§6d§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2!q§ extends Sprite
   {
       
      
      private var §]'§:Sprite;
      
      private var §04§:Number;
      
      private var §8@§:Number;
      
      private var §]R§:§#b§;
      
      public function §2!q§(param1:Number)
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
         this.§]'§ = this.§3A§(_loc3_);
         addChild(this.§]'§);
         this.mouseEnabled = false;
         this.§]'§.x = -this.§]'§.width / 2;
         this.§]'§.y = -this.§]'§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§]R§)
         {
            this.§]R§.stop();
            this.§]R§ = null;
         }
         removeChild(this.§]'§);
         this.§]'§ = null;
      }
      
      public function §3A§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §6d§.§=!Y§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §4+§(param1:§#b§) : void
      {
         this.§]R§ = param1;
      }
      
      public function get §4+§() : §#b§
      {
         return this.§]R§;
      }
      
      public function get §7q§() : Number
      {
         return this.§04§;
      }
      
      public function set §7q§(param1:Number) : void
      {
         this.§04§ = param1;
      }
      
      public function get §;!g§() : Number
      {
         return this.§8@§;
      }
      
      public function set §;!g§(param1:Number) : void
      {
         this.§8@§ = param1;
      }
   }
}
