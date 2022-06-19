package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   
   public class §_-DY§ extends §_-PQ§
   {
      
      public static const §_-I0§:Number = 1024;
      
      public static const §_-ZV§:Number = 658;
      
      public static const §_-Kx§:Number = 55;
      
      public static const §_-Nd§:String = "cubic_in_out";
      
      public static const §_-ke§:String = "sin_in_out";
      
      public static const §_-lG§:String = "none";
       
      
      private var §_-iJ§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-LO§:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-TI§:Boolean = true;
      
      private var §_-IE§:String = "cubic_in_out";
      
      public function §_-DY§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§_-iJ§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§_-IE§ = param6;
      }
      
      public function set §_-WZ§(param1:Boolean) : void
      {
         this.§_-TI§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-v8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-iJ§))
            {
               if(_loc4_.name == §_-SQ§.§_-f9§)
               {
                  if(this.§_-TI§)
                  {
                     _loc4_.x = -this.§_-CW§() * this.§_-V5§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§_-CW§() * this.§_-V5§(param1);
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
      
      private function §_-V5§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§_-IE§)
         {
            case §_-Nd§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §_-ke§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §_-CW§() : Number
      {
         if(this.§_-TI§)
         {
            return this.§_-LO§ - §_-I0§;
         }
         return this.§_-Fy§ - §_-ZV§;
      }
      
      public function §_-tm§(param1:Number, param2:Number) : void
      {
         this.§_-LO§ = param1;
         this.§_-Fy§ = param2;
      }
      
      override public function clone() : §_-PQ§
      {
         var _loc1_:§_-DY§ = new §_-DY§(time,duration,this.§_-iJ§,this.mX,this.mY,this.§_-IE§);
         _loc1_.§_-LO§ = this.§_-LO§;
         _loc1_.§_-Fy§ = this.§_-Fy§;
         _loc1_.§_-TI§ = this.§_-TI§;
         return _loc1_;
      }
   }
}
