package §_-Wy§
{
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   
   public class §_-o8§ extends §_-W5§
   {
      
      public static const §_-4r§:Number = 1024;
      
      public static const §_-ho§:Number = 658;
      
      public static const §_-Ju§:Number = 55;
       
      
      private var §_-h3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-U0§:Number;
      
      private var §_-bN§:Number;
      
      private var §_-fQ§:Boolean = true;
      
      public function §_-o8§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-h3§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-yT§(param1:Boolean) : void
      {
         this.§_-fQ§ = param1;
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
            _loc3_ = param2.getChildByName(this.§_-h3§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-Ek§.§_-7H§)
               {
                  if(this.§_-fQ§)
                  {
                     _loc3_.x = -this.§_-NL§() * this.§_-Pr§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-NL§() * this.§_-Pr§(param1);
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
      
      private function §_-Pr§(param1:Number) : Number
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
      
      protected function §_-NL§() : Number
      {
         if(this.§_-fQ§)
         {
            return this.§_-U0§ - §_-4r§;
         }
         return this.§_-bN§ - §_-ho§;
      }
      
      public function §_-iH§(param1:Number, param2:Number) : void
      {
         this.§_-U0§ = param1;
         this.§_-bN§ = param2;
      }
      
      override public function clone() : §_-W5§
      {
         var _loc1_:§_-o8§ = new §_-o8§(time,duration,this.§_-h3§,this.mX,this.mY);
         _loc1_.§_-U0§ = this.§_-U0§;
         _loc1_.§_-bN§ = this.§_-bN§;
         _loc1_.§_-fQ§ = this.§_-fQ§;
         return _loc1_;
      }
   }
}
