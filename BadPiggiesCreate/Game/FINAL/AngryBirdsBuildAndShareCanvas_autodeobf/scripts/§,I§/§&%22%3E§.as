package §,I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §&">§ extends §5i§
   {
       
      
      public function §&">§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         super(param3);
         this.§<!#§(param1,param2);
      }
      
      protected function §<!#§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§+!a§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§7!c§ = null;
         var _loc3_:Dictionary = this.§&!=§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = _loc5_.@name;
            _loc7_ = _loc5_.@file;
            _loc8_ = parseInt(_loc5_.@x);
            _loc9_ = parseInt(_loc5_.@y);
            if((_loc10_ = _loc3_[this.§=!E§(_loc7_,_loc6_)]) == null)
            {
               _loc11_ = parseInt(_loc5_.@width);
               _loc12_ = parseInt(_loc5_.@height);
               _loc13_ = parseInt(_loc5_.@pivotX);
               _loc14_ = parseInt(_loc5_.@pivotY);
               if(_loc11_ > 0 && _loc12_ > 0)
               {
                  _loc10_ = new §+!a§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
               }
            }
            if(_loc10_)
            {
               _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
               (_loc16_ = new §7!c§()).mName = _loc6_;
               _loc16_.§5l§ = _loc15_;
               _loc16_.§>!v§ = _loc10_.pivotX;
               _loc16_.§>!J§ = _loc10_.pivotY;
               _loc16_.§9!U§ = §%!y§;
               §0!2§(_loc16_);
            }
         }
         mName = param1.@file;
      }
      
      private function §=!E§(param1:String, param2:String) : String
      {
         return param1 + "#" + param2;
      }
      
      private function §&!=§(param1:Vector.<XML>) : Dictionary
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
               _loc7_ = this.§=!E§(_loc4_,_loc6_.@name);
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
                  _loc2_[_loc7_] = new §+!a§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
               }
            }
         }
         return _loc2_;
      }
   }
}
