package §!&§
{
   import §6&§.§9e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §do§ extends Sprite
   {
       
      
      private var §7!^§:Sprite;
      
      private var §3!_§:Number;
      
      private var §[s§:Number;
      
      public function §do§(param1:Number)
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
         this.§7!^§ = this.§@y§(_loc3_);
         addChild(this.§7!^§);
         this.§7!^§.x = -this.§7!^§.width / 2;
         this.§7!^§.y = -this.§7!^§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§7!^§);
         this.§7!^§ = null;
      }
      
      public function §@y§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §9e§.§6!?§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §&R§() : Number
      {
         return this.§3!_§;
      }
      
      public function set §&R§(param1:Number) : void
      {
         this.§3!_§ = param1;
      }
      
      public function get §>3§() : Number
      {
         return this.§[s§;
      }
      
      public function set §>3§(param1:Number) : void
      {
         this.§[s§ = param1;
      }
   }
}
