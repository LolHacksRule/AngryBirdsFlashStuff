package §_-ya§
{
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   
   public class §_-tW§ extends §_-ga§
   {
      
      public static const §_-1q§:Number = 1024;
      
      public static const §_-SP§:Number = 658;
      
      public static const §_-PN§:Number = 55;
       
      
      private var §_-2i§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-B§:Boolean = true;
      
      public function §_-tW§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-2i§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-OZ§(param1:Boolean) : void
      {
         this.§_-B§ = param1;
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
            _loc3_ = param2.getChildByName(this.§_-2i§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-fs§.§_-6G§)
               {
                  if(this.§_-B§)
                  {
                     _loc3_.x = -this.§_-jK§() * this.§_-Em§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-jK§() * this.§_-Em§(param1);
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
      
      private function §_-Em§(param1:Number) : Number
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
      
      protected function §_-jK§() : Number
      {
         if(this.§_-B§)
         {
            return this.§_-sa§ - §_-1q§;
         }
         return this.§_-cr§ - §_-SP§;
      }
      
      public function §_-lX§(param1:Number, param2:Number) : void
      {
         this.§_-sa§ = param1;
         this.§_-cr§ = param2;
      }
      
      override public function clone() : §_-ga§
      {
         var _loc1_:§_-tW§ = new §_-tW§(time,duration,this.§_-2i§,this.mX,this.mY);
         _loc1_.§_-sa§ = this.§_-sa§;
         _loc1_.§_-cr§ = this.§_-cr§;
         _loc1_.§_-B§ = this.§_-B§;
         return _loc1_;
      }
   }
}
