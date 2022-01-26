package §_-KX§
{
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   
   public class §_-AR§ extends §_-Z8§
   {
      
      public static const §_-ZL§:Number = 1024;
      
      public static const §_-Uw§:Number = 658;
      
      public static const §_-YD§:Number = 55;
       
      
      private var §_-aI§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-NR§:Number;
      
      private var §_-F0§:Number;
      
      private var §_-PW§:Boolean = true;
      
      public function §_-AR§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-aI§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-k4§(param1:Boolean) : void
      {
         this.§_-PW§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc3_ = param2.getChildByName(this.§_-aI§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-C9§.§_-xU§)
               {
                  if(this.§_-PW§)
                  {
                     _loc3_.x = -this.§_-Q§() * this.§_-RL§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-Q§() * this.§_-RL§(param1);
                  }
               }
               else
               {
                  _loc3_.x -= this.mX;
                  _loc3_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-RL§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         _loc2_ *= 2;
         if(_loc2_ < 1)
         {
            return Math.pow(_loc2_,3) / 2;
         }
         _loc2_ -= 2;
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      protected function §_-Q§() : Number
      {
         if(this.§_-PW§)
         {
            return this.§_-NR§ - §_-ZL§;
         }
         return this.§_-F0§ - §_-Uw§;
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         this.§_-NR§ = param1;
         this.§_-F0§ = param2;
      }
      
      override public function clone() : §_-Z8§
      {
         var _loc1_:§_-AR§ = new §_-AR§(time,duration,this.§_-aI§,this.mX,this.mY);
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-F0§ = this.§_-F0§;
         _loc1_.§_-PW§ = this.§_-PW§;
         return _loc1_;
      }
   }
}
