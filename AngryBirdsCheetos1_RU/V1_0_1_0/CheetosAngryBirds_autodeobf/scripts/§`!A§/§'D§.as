package §`!A§
{
   import §<K§.§0e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'D§ extends Sprite
   {
       
      
      private var §<6§:Sprite;
      
      private var §;!@§:Number;
      
      private var §&Q§:Number;
      
      public function §'D§(param1:Number)
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
         this.§<6§ = this.§;!+§(_loc3_);
         addChild(this.§<6§);
         this.§<6§.x = -this.§<6§.width / 2;
         this.§<6§.y = -this.§<6§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§<6§);
         this.§<6§ = null;
      }
      
      public function §;!+§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §0e§.§#!!§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §+C§() : Number
      {
         return this.§;!@§;
      }
      
      public function set §+C§(param1:Number) : void
      {
         this.§;!@§ = param1;
      }
      
      public function get §'@§() : Number
      {
         return this.§&Q§;
      }
      
      public function set §'@§(param1:Number) : void
      {
         this.§&Q§ = param1;
      }
   }
}
