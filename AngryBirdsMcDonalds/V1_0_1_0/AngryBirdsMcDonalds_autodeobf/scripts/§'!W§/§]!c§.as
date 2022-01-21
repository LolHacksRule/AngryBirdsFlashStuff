package §'!W§
{
   import §#Z§.§?R§;
   import §3l§.§&W§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]!c§ extends Sprite
   {
       
      
      private var §3p§:Sprite;
      
      private var §>Y§:Number;
      
      private var §#!o§:Number;
      
      private var §>]§:§&W§;
      
      public function §]!c§(param1:Number)
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
         this.§3p§ = this.§<!'§(_loc3_);
         addChild(this.§3p§);
         this.mouseEnabled = false;
         this.§3p§.x = -this.§3p§.width / 2;
         this.§3p§.y = -this.§3p§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§>]§)
         {
            this.§>]§.stop();
            this.§>]§ = null;
         }
         removeChild(this.§3p§);
         this.§3p§ = null;
      }
      
      public function §<!'§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §?R§.§>e§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §#§(param1:§&W§) : void
      {
         this.§>]§ = param1;
      }
      
      public function get §#§() : §&W§
      {
         return this.§>]§;
      }
      
      public function get §-E§() : Number
      {
         return this.§>Y§;
      }
      
      public function set §-E§(param1:Number) : void
      {
         this.§>Y§ = param1;
      }
      
      public function get §"!b§() : Number
      {
         return this.§#!o§;
      }
      
      public function set §"!b§(param1:Number) : void
      {
         this.§#!o§ = param1;
      }
   }
}
