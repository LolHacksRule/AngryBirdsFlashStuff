package §"k§
{
   import §,"N§.§@#B§;
   import §`!o§.§+"k§;
   import flash.net.URLLoader;
   
   public class §!!J§ extends §%!8§
   {
       
      
      private var §,!o§:Boolean = false;
      
      public function §!!J§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function createURLLoader() : URLLoader
      {
         return new §+"k§();
      }
      
      public function get §&"S§() : Boolean
      {
         return this.§,!o§;
      }
      
      public function §^#<§(param1:§@#B§, param2:int) : void
      {
         if(this.§,!o§)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < data.length)
         {
            if(data[_loc4_] is §=!g§)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         var _loc5_:Array = this.§<R§(param1,5);
         data.splice.apply(null,[_loc3_ + 1,0].concat(_loc5_));
         this.§,!o§ = true;
      }
      
      public function §`j§(param1:§@#B§) : void
      {
         var _loc2_:Array = param1.§0s§.getTotalScores().data;
         var _loc3_:int = data.length - 1;
         while(_loc3_ >= 0)
         {
            if(data[_loc3_] is §`#8§)
            {
               data.splice(_loc3_,1);
            }
            _loc3_--;
         }
         this.§,!o§ = false;
      }
      
      private function §0!b§(param1:Array, param2:int = -1) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:int = param1.length;
         if(param2 <= 0)
         {
            return _loc3_;
         }
         if(param2 > _loc4_)
         {
            param2 = _loc4_;
         }
         var _loc5_:int = 0;
         var _loc6_:Array = new Array(param1.length);
         while(_loc3_.length < param2)
         {
            _loc5_ = int(Math.random() * _loc4_);
            while(_loc6_[_loc5_] != undefined)
            {
               _loc5_ = int(Math.random() * _loc4_);
            }
            _loc3_.push(param1[_loc5_]);
            _loc6_[_loc5_] = true;
         }
         return _loc3_;
      }
      
      private function §<R§(param1:§@#B§, param2:int) : Array
      {
         var _loc6_:§]"V§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:§]"V§ = null;
         var _loc3_:Array = param1.§0s§.getTotalScores().data;
         var _loc4_:Array = this.§0!b§(_loc3_,_loc3_.length);
         var _loc5_:Array = [];
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_ is §=!g§)
            {
               if(param1.§;!A§.§'!H§(_loc6_.userId))
               {
                  _loc7_ = false;
                  for each(_loc8_ in param1.§!!C§.§'"?§.data)
                  {
                     if(_loc8_ is §=!g§)
                     {
                        if(_loc8_.userId == _loc6_.userId)
                        {
                           _loc7_ = true;
                           break;
                        }
                     }
                  }
                  if(!_loc7_)
                  {
                     _loc5_.push(new §`#8§(_loc6_.userId,_loc6_.userName,_loc6_.avatarString));
                     if(_loc5_.length >= param2)
                     {
                        break;
                     }
                  }
               }
            }
         }
         return _loc5_;
      }
   }
}
