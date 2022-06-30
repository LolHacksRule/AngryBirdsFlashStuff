package §use §
{
   import §1!d§.§!![§;
   import §?v§.§&!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0!'§ extends Sprite
   {
       
      
      private var §`m§:Sprite;
      
      private var §]Q§:Number;
      
      private var §>!=§:Number;
      
      private var §3x§:§!![§;
      
      public function §0!'§(param1:Number)
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
         this.§`m§ = this.§^!Z§(_loc3_);
         addChild(this.§`m§);
         this.mouseEnabled = false;
         this.§`m§.x = -this.§`m§.width / 2;
         this.§`m§.y = -this.§`m§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§3x§)
         {
            this.§3x§.stop();
            this.§3x§ = null;
         }
         removeChild(this.§`m§);
         this.§`m§ = null;
      }
      
      public function §^!Z§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §&!h§.§#Q§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §;%§(param1:§!![§) : void
      {
         this.§3x§ = param1;
      }
      
      public function get §;%§() : §!![§
      {
         return this.§3x§;
      }
      
      public function get §&%§() : Number
      {
         return this.§]Q§;
      }
      
      public function set §&%§(param1:Number) : void
      {
         this.§]Q§ = param1;
      }
      
      public function get §@!H§() : Number
      {
         return this.§>!=§;
      }
      
      public function set §@!H§(param1:Number) : void
      {
         this.§>!=§ = param1;
      }
   }
}
