package §%r§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §8h§ extends §,!b§
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const §'!_§:Number = 55;
      
      public static const §-!E§:String = "cubic_in_out";
      
      public static const §8I§:String = "sin_in_out";
      
      public static const §`!#§:String = "none";
       
      
      private var §&!O§:String;
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §@M§:Boolean = true;
      
      private var §?!%§:String = "cubic_in_out";
      
      public function §8h§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§&!O§ = param3;
         this.§1X§ = param4;
         this.§`J§ = param5;
         this.§?!%§ = param6;
      }
      
      public function set §'R§(param1:Boolean) : void
      {
         this.§@M§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc4_ = param2.getChildByName(this.§&!O§);
            if(_loc4_)
            {
               if(_loc4_.name == §`!Q§.§;#§)
               {
                  if(this.§@M§)
                  {
                     _loc4_.x = -this.§9+§() * this.§#>§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§9+§() * this.§#>§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§1X§;
                  _loc4_.y -= this.§`J§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §#>§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§?!%§)
         {
            case §-!E§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §8I§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §9+§() : Number
      {
         if(this.§@M§)
         {
            return this.§,<§ - SCREEN_WIDTH;
         }
         return this.§5,§ - SCREEN_HEIGHT;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§,<§ = param1;
         this.§5,§ = param2;
      }
      
      override public function clone() : §,!b§
      {
         var _loc1_:§8h§ = new §8h§(time,duration,this.§&!O§,this.§1X§,this.§`J§,this.§?!%§);
         _loc1_.§,<§ = this.§,<§;
         _loc1_.§5,§ = this.§5,§;
         _loc1_.§@M§ = this.§@M§;
         return _loc1_;
      }
   }
}
