package §9!e§
{
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   
   public class §+!y§ extends §<!>§
   {
      
      public static const §"<§:Number = 1024;
      
      public static const §9%§:Number = 658;
      
      public static const §]=§:Number = 55;
      
      public static const §'!i§:String = "cubic_in_out";
      
      public static const §>!!§:String = "sin_in_out";
      
      public static const §^x§:String = "none";
       
      
      private var §4!U§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §5!T§:Number;
      
      private var §7X§:Number;
      
      private var §implements§:Boolean = true;
      
      private var §[!G§:String = "cubic_in_out";
      
      public function §+!y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4!U§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§[!G§ = param6;
      }
      
      public function set §1k§(param1:Boolean) : void
      {
         this.§implements§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!f§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!U§))
            {
               if(_loc4_.name == §4&§.§0g§)
               {
                  if(this.§implements§)
                  {
                     _loc4_.x = -this.§4U§() * this.§,g§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§4U§() * this.§,g§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,g§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§[!G§)
         {
            case §'!i§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>!!§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §4U§() : Number
      {
         if(this.§implements§)
         {
            return this.§5!T§ - §"<§;
         }
         return this.§7X§ - §9%§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5!T§ = param1;
         this.§7X§ = param2;
      }
      
      override public function clone() : §<!>§
      {
         var _loc1_:§+!y§ = new §+!y§(time,duration,this.§4!U§,this.mX,this.mY,this.§[!G§);
         _loc1_.§5!T§ = this.§5!T§;
         _loc1_.§7X§ = this.§7X§;
         _loc1_.§implements§ = this.§implements§;
         return _loc1_;
      }
   }
}
