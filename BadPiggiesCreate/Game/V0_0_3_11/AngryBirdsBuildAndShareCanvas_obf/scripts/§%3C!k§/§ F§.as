package §<!k§
{
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § F§ extends Sprite
   {
       
      
      private var §5b§:Sprite;
      
      private var §65§:Number;
      
      private var §<!R§:Number;
      
      private var §#",§:§8!K§;
      
      public function § F§(param1:Number)
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
         this.§5b§ = this.§,!k§(_loc3_);
         addChild(this.§5b§);
         this.mouseEnabled = false;
         this.§5b§.x = -this.§5b§.width / 2;
         this.§5b§.y = -this.§5b§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§#",§)
         {
            this.§#",§.stop();
            this.§#",§ = null;
         }
         removeChild(this.§5b§);
         this.§5b§ = null;
      }
      
      public function §,!k§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §]!S§.§?! §(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §%!a§(param1:§8!K§) : void
      {
         this.§#",§ = param1;
      }
      
      public function get §%!a§() : §8!K§
      {
         return this.§#",§;
      }
      
      public function get §,§() : Number
      {
         return this.§65§;
      }
      
      public function set §,§(param1:Number) : void
      {
         this.§65§ = param1;
      }
      
      public function get §'j§() : Number
      {
         return this.§<!R§;
      }
      
      public function set §'j§(param1:Number) : void
      {
         this.§<!R§ = param1;
      }
   }
}
