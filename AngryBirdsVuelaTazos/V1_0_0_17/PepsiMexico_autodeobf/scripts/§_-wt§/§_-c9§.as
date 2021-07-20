package §_-wT§
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §_-c9§
   {
       
      
      private var §_-3B§:Dictionary;
      
      private var §_-M-§:Dictionary;
      
      public function §_-c9§()
      {
         this.§_-M-§ = new Dictionary();
         this.§_-3B§ = new Dictionary();
         super();
      }
      
      private function §_-rR§(param1:Class) : Vector.<Class>
      {
         var superClassName:String = null;
         var klass:Class = param1;
         var tree:Vector.<Class> = new Vector.<Class>();
         var c:Class = klass;
         while(c != null)
         {
            tree.push(c);
            if((superClassName = getQualifiedSuperclassName(c)) != null)
            {
               try
               {
                  c = getDefinitionByName(superClassName) as Class;
               }
               catch(e:ReferenceError)
               {
                  c = Object;
               }
            }
            else
            {
               c = null;
            }
         }
         return tree;
      }
      
      public function §_-tG§(param1:Class, param2:Class, param3:Array) : void
      {
         var _loc4_:uint = param3.length;
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-Ym§(param1,param2,param3[_loc5_]);
            _loc5_++;
         }
      }
      
      public function §_-eX§(param1:Class, param2:String) : Class
      {
         var _loc4_:* = undefined;
         var _loc3_:* = this.§_-M-§[param1];
         if(_loc3_ != null)
         {
            if((_loc4_ = _loc3_[param2]) != null)
            {
               return _loc4_ as Class;
            }
            if((_loc4_ = _loc3_["*"]) != null)
            {
               return _loc4_ as Class;
            }
            return null;
         }
         this.§_-uG§(param1);
         return this.§_-eX§(param1,param2);
      }
      
      public function §_-Ym§(param1:Class, param2:Class, param3:String) : void
      {
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:Class = null;
         if(this.§_-M-§[param2] == undefined)
         {
            this.§_-uG§(param2);
         }
         var _loc4_:Dictionary;
         var _loc5_:Class = (_loc4_ = this.§_-M-§)[param2][param3] as Class;
         _loc4_[param2][param3] = param1;
         var _loc6_:Vector.<Class>;
         if((_loc6_ = this.§_-3B§[param2] as Vector.<Class>) != null)
         {
            _loc7_ = _loc6_.length;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_ = _loc6_[_loc8_];
               if(_loc4_[_loc9_][param3] == _loc5_)
               {
                  _loc4_[_loc9_][param3] = param1;
               }
               _loc8_++;
            }
         }
      }
      
      private function §_-uG§(param1:Class) : void
      {
         var _loc8_:Class = null;
         var _loc9_:Dictionary = null;
         var _loc10_:* = null;
         var _loc11_:Dictionary = null;
         var _loc12_:Dictionary = null;
         var _loc13_:Vector.<Class> = null;
         var _loc14_:int = 0;
         var _loc15_:Class = null;
         var _loc2_:Dictionary = this.§_-M-§;
         var _loc3_:Dictionary = this.§_-3B§;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:uint;
         var _loc5_:Vector.<Class>;
         var _loc7_:int = _loc6_ = (_loc5_ = this.§_-rR§(param1)).length;
         while(--_loc7_ >= 0)
         {
            _loc8_ = _loc5_[_loc7_];
            if((_loc9_ = _loc2_[_loc8_] as Dictionary) != null)
            {
               _loc11_ = new Dictionary();
               if(_loc4_ != null)
               {
                  for(_loc10_ in _loc4_)
                  {
                     _loc11_[_loc10_] = _loc4_[_loc10_];
                     if(!(_loc10_ in _loc9_))
                     {
                        _loc9_[_loc10_] = _loc4_[_loc10_];
                     }
                  }
               }
               for(_loc10_ in _loc9_)
               {
                  _loc11_[_loc10_] = _loc9_[_loc10_];
               }
               _loc4_ = _loc11_;
            }
            else
            {
               _loc12_ = new Dictionary();
               for(_loc10_ in _loc4_)
               {
                  _loc12_[_loc10_] = _loc4_[_loc10_];
               }
               _loc2_[_loc8_] = _loc12_;
            }
            if(_loc3_[_loc8_] != undefined)
            {
               _loc13_ = _loc3_[_loc8_] as Vector.<Class>;
               _loc14_ = _loc7_ - 1;
               while(_loc14_ >= 0)
               {
                  _loc15_ = _loc5_[_loc14_];
                  if(_loc13_.indexOf(_loc15_) == -1)
                  {
                     _loc13_.push(_loc15_);
                  }
                  _loc14_--;
               }
            }
            else
            {
               _loc3_[_loc8_] = _loc5_.slice(0,_loc7_);
            }
         }
      }
   }
}
