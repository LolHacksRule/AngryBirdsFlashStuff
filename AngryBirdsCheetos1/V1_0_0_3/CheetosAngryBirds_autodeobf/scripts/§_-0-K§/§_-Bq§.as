package §_-0-K§
{
   import §_-4I§.§_-14§;
   import §_-4I§.§_-EA§;
   import §case §.Sprite;
   import §case §.§_-G3§;
   
   public class §_-Bq§
   {
       
      
      private var §_-kv§:Sprite;
      
      private var §_-RM§:§_-14§;
      
      private var §_-B4§:Boolean;
      
      public function §_-Bq§(param1:Sprite, param2:§_-14§, param3:Boolean = false)
      {
         super();
         this.§_-kv§ = param1;
         this.§_-RM§ = param2;
         this.§_-B4§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§_-kv§.numChildren > 0)
         {
            this.§_-kv§.removeChildAt(0,true);
         }
      }
      
      public function §_-dO§(param1:int) : void
      {
         var _loc6_:§_-EA§ = null;
         var _loc7_:§_-G3§ = null;
         this.clear();
         var _loc2_:Array = this.§_-7l§(this.§_-Gp§(param1));
         var _loc3_:int = this.§_-Po§(_loc2_);
         var _loc4_:int = this.§_-s2§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §_-G3§(_loc6_.texture,this.§_-B4§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§_-kv§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§_-kv§.flatten();
      }
      
      private function §_-Gp§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(param1 <= 0)
         {
            _loc2_.push(0);
         }
         else
         {
            while(param1 > 0)
            {
               _loc3_ = param1 % 10;
               param1 /= 10;
               _loc2_.push(_loc3_);
            }
         }
         _loc2_.reverse();
         return _loc2_;
      }
      
      private function §_-7l§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-EA§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-RM§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-Po§(param1:Array) : int
      {
         var _loc3_:§_-EA§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §_-s2§(param1:Array) : int
      {
         var _loc5_:§_-EA§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc2_ = -_loc5_.pivotY;
            _loc3_ = _loc2_ + _loc5_.height;
         }
         return _loc3_ - _loc2_;
      }
   }
}
