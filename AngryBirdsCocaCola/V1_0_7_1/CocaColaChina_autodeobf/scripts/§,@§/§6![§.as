package §,@§
{
   import §[!=§.§3!2§;
   import §^!L§.§@x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6![§ extends Sprite
   {
       
      
      private var §9B§:Sprite;
      
      private var §@!;§:Number;
      
      private var §@R§:Number;
      
      private var §6!L§:§3!2§;
      
      public function §6![§(param1:Number)
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
         this.§9B§ = this.§8!B§(_loc3_);
         addChild(this.§9B§);
         this.mouseEnabled = false;
         this.§9B§.x = -this.§9B§.width / 2;
         this.§9B§.y = -this.§9B§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§6!L§)
         {
            this.§6!L§.stop();
            this.§6!L§ = null;
         }
         removeChild(this.§9B§);
         this.§9B§ = null;
      }
      
      public function §8!B§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §@x§.§="§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §'F§(param1:§3!2§) : void
      {
         this.§6!L§ = param1;
      }
      
      public function get §'F§() : §3!2§
      {
         return this.§6!L§;
      }
      
      public function get §,!!§() : Number
      {
         return this.§@!;§;
      }
      
      public function set §,!!§(param1:Number) : void
      {
         this.§@!;§ = param1;
      }
      
      public function get §&!#§() : Number
      {
         return this.§@R§;
      }
      
      public function set §&!#§(param1:Number) : void
      {
         this.§@R§ = param1;
      }
   }
}
