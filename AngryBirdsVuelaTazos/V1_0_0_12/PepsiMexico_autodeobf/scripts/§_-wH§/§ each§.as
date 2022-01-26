package §_-wH§
{
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   
   public class § each§ extends §_-Xc§
   {
      
      public static const §_-dN§:Number = 1024;
      
      public static const §_-mI§:Number = 658;
      
      public static const §_-aZ§:Number = 55;
       
      
      private var §_-OG§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-XU§:Number;
      
      private var §_-Bf§:Boolean = true;
      
      public function § each§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-OG§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-d-§(param1:Boolean) : void
      {
         this.§_-Bf§ = param1;
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
            _loc3_ = param2.getChildByName(this.§_-OG§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-oH§.§_-2-§)
               {
                  if(this.§_-Bf§)
                  {
                     _loc3_.x = -this.§_-KH§() * this.§_-uq§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-KH§() * this.§_-uq§(param1);
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
      
      private function §_-uq§(param1:Number) : Number
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
      
      protected function §_-KH§() : Number
      {
         if(this.§_-Bf§)
         {
            return this.§_-Fy§ - §_-dN§;
         }
         return this.§_-XU§ - §_-mI§;
      }
      
      public function §_-7r§(param1:Number, param2:Number) : void
      {
         this.§_-Fy§ = param1;
         this.§_-XU§ = param2;
      }
      
      override public function clone() : §_-Xc§
      {
         var _loc1_:§ each§ = new § each§(time,duration,this.§_-OG§,this.mX,this.mY);
         _loc1_.§_-Fy§ = this.§_-Fy§;
         _loc1_.§_-XU§ = this.§_-XU§;
         _loc1_.§_-Bf§ = this.§_-Bf§;
         return _loc1_;
      }
   }
}
