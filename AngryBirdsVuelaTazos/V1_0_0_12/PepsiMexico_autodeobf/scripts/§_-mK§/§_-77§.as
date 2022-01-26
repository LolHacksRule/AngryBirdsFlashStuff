package §_-mK§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-77§ extends §_-4C§
   {
       
      
      public function §_-77§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         super(param3);
         this.§_-26§(param1,param2);
      }
      
      protected function §_-26§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-w4§ = null;
         var _loc11_:Rectangle = null;
         var _loc12_:§implements§ = null;
         var _loc3_:Dictionary = this.§_-Xh§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = _loc5_.@name;
            _loc7_ = _loc5_.@file;
            _loc8_ = parseInt(_loc5_.@x);
            _loc9_ = parseInt(_loc5_.@y);
            if(_loc10_ = _loc3_[this.§_-JG§(_loc7_,_loc6_)])
            {
               _loc11_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
               (_loc12_ = new §implements§()).mName = _loc6_;
               _loc12_.§_-K§ = _loc11_;
               _loc12_.§_-Ho§ = _loc10_.pivotX;
               _loc12_.§_-rf§ = _loc10_.pivotY;
               _loc12_.§_-6q§ = §_-GL§;
               §_-iX§(_loc12_);
            }
         }
      }
      
      private function §_-JG§(param1:String, param2:String) : String
      {
         return param1 + "#" + param2;
      }
      
      private function §_-Xh§(param1:Vector.<XML>) : Dictionary
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:XMLList = null;
         var _loc15_:XML = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.@file;
            _loc5_ = _loc3_.child("clipArea");
            for each(_loc6_ in _loc5_)
            {
               _loc7_ = this.§_-JG§(_loc4_,_loc6_.@name);
               if(_loc2_[_loc7_] == null)
               {
                  _loc8_ = parseInt(_loc6_.@width);
                  _loc9_ = parseInt(_loc6_.@height);
                  _loc10_ = parseInt(_loc6_.@pivotX);
                  _loc11_ = parseInt(_loc6_.@pivotY);
                  _loc12_ = parseInt(_loc6_.@x);
                  _loc13_ = parseInt(_loc6_.@y);
                  if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                  {
                     _loc15_ = _loc14_[0];
                     _loc8_ = parseInt(_loc15_.@width);
                     _loc9_ = parseInt(_loc15_.@height);
                     _loc12_ = parseInt(_loc15_.@x) - _loc12_;
                     _loc13_ = parseInt(_loc15_.@y) - _loc13_;
                  }
                  else
                  {
                     _loc12_ = 0;
                     _loc13_ = 0;
                  }
                  _loc2_[_loc7_] = new §_-w4§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
               }
            }
         }
         return _loc2_;
      }
   }
}
