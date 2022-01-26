package §_-bs§
{
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   
   public class §_-ki§ extends §_-bA§
   {
      
      public static const §_-EK§:Number = 1024;
      
      public static const §_-UU§:Number = 658;
      
      public static const §_-BR§:Number = 55;
       
      
      private var §_-DB§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-NR§:Number;
      
      private var §_-gD§:Number;
      
      private var §_-tM§:Boolean = true;
      
      public function §_-ki§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-DB§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-hV§(param1:Boolean) : void
      {
         this.§_-tM§ = param1;
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
            _loc3_ = param2.getChildByName(this.§_-DB§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-jM§.§_-Hm§)
               {
                  if(this.§_-tM§)
                  {
                     _loc3_.x = -this.§_-Kk§() * this.§in§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-Kk§() * this.§in§(param1);
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
      
      private function §in§(param1:Number) : Number
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
      
      protected function §_-Kk§() : Number
      {
         if(this.§_-tM§)
         {
            return this.§_-NR§ - §_-EK§;
         }
         return this.§_-gD§ - §_-UU§;
      }
      
      public function §_-Bn§(param1:Number, param2:Number) : void
      {
         this.§_-NR§ = param1;
         this.§_-gD§ = param2;
      }
      
      override public function clone() : §_-bA§
      {
         var _loc1_:§_-ki§ = new §_-ki§(time,duration,this.§_-DB§,this.mX,this.mY);
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-gD§ = this.§_-gD§;
         _loc1_.§_-tM§ = this.§_-tM§;
         return _loc1_;
      }
   }
}
