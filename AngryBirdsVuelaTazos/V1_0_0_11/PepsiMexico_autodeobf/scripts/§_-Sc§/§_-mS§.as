package §_-Sc§
{
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   
   public class §_-mS§ extends § case§
   {
      
      public static const §_-iX§:Number = 1024;
      
      public static const §_-q§:Number = 658;
      
      public static const §_-FY§:Number = 55;
       
      
      private var §_-eP§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-x9§:Number;
      
      private var §_-Ql§:Number;
      
      private var §_-YM§:Boolean = true;
      
      public function §_-mS§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-eP§ = param3;
         this.mX = param4;
         this.mY = param5;
      }
      
      public function set §_-15§(param1:Boolean) : void
      {
         this.§_-YM§ = param1;
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
            _loc3_ = param2.getChildByName(this.§_-eP§);
            if(_loc3_)
            {
               if(_loc3_.name == §_-Ff§.§_-mg§)
               {
                  if(this.§_-YM§)
                  {
                     _loc3_.x = -this.§_-01§() * this.§_-u§(param1);
                  }
                  else
                  {
                     _loc3_.y = this.§_-01§() * this.§_-u§(param1);
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
      
      private function §_-u§(param1:Number) : Number
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
      
      protected function §_-01§() : Number
      {
         if(this.§_-YM§)
         {
            return this.§_-x9§ - §_-iX§;
         }
         return this.§_-Ql§ - §_-q§;
      }
      
      public function §_-b2§(param1:Number, param2:Number) : void
      {
         this.§_-x9§ = param1;
         this.§_-Ql§ = param2;
      }
      
      override public function clone() : § case§
      {
         var _loc1_:§_-mS§ = new §_-mS§(time,duration,this.§_-eP§,this.mX,this.mY);
         _loc1_.§_-x9§ = this.§_-x9§;
         _loc1_.§_-Ql§ = this.§_-Ql§;
         _loc1_.§_-YM§ = this.§_-YM§;
         return _loc1_;
      }
   }
}
