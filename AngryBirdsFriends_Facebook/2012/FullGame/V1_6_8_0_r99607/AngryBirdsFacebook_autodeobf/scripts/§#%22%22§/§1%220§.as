package §#""§
{
   import §0r§.§-!F§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1"0§ extends Sprite
   {
       
      
      private var §7",§:Sprite;
      
      private var §+O§:Number;
      
      private var §`x§:Number;
      
      private var §6!W§:§-!F§;
      
      public function §1"0§(param1:Number)
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
         this.§7",§ = this.§]Z§(_loc3_);
         addChild(this.§7",§);
         this.mouseEnabled = false;
         this.§7",§.x = -this.§7",§.width / 2;
         this.§7",§.y = -this.§7",§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§6!W§)
         {
            this.§6!W§.stop();
            this.§6!W§ = null;
         }
         removeChild(this.§7",§);
         this.§7",§ = null;
      }
      
      public function §]Z§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §#!J§.§1!Y§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §9!z§(param1:§-!F§) : void
      {
         this.§6!W§ = param1;
      }
      
      public function get §9!z§() : §-!F§
      {
         return this.§6!W§;
      }
      
      public function get §"6§() : Number
      {
         return this.§+O§;
      }
      
      public function set §"6§(param1:Number) : void
      {
         this.§+O§ = param1;
      }
      
      public function get §!",§() : Number
      {
         return this.§`x§;
      }
      
      public function set §!",§(param1:Number) : void
      {
         this.§`x§ = param1;
      }
   }
}
