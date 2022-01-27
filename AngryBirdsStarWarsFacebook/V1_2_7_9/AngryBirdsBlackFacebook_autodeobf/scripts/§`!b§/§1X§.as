package §`!b§
{
   import §,!_§.§2!%§;
   import §`"8§.§-!w§;
   import flash.net.URLLoader;
   
   public class §1X§ extends §9!=§
   {
       
      
      private var §<!0§:Boolean = false;
      
      public function §1X§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function createURLLoader() : URLLoader
      {
         return new §2!%§();
      }
      
      public function get §>!!§() : Boolean
      {
         return this.§<!0§;
      }
      
      public function §?!X§(param1:§-!w§, param2:int) : void
      {
         if(this.§<!0§)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < data.length)
         {
            if(data[_loc4_] is § each§)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         var _loc5_:Array = this.§?H§(param1,5);
         data.splice.apply(null,[_loc3_ + 1,0].concat(_loc5_));
         this.§<!0§ = true;
      }
      
      public function §%!;§(param1:§-!w§) : void
      {
         var _loc2_:Array = param1.§2-§.getTotalScores().data;
         var _loc3_:int = data.length - 1;
         while(_loc3_ >= 0)
         {
            if(data[_loc3_] is §;!M§)
            {
               data.splice(_loc3_,1);
            }
            _loc3_--;
         }
         this.§<!0§ = false;
      }
      
      private function §0"9§(param1:Array, param2:int = -1) : Array
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
      
      private function §?H§(param1:§-!w§, param2:int) : Array
      {
         var _loc6_:§"#6§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:§"#6§ = null;
         var _loc3_:Array = param1.§2-§.getTotalScores().data;
         var _loc4_:Array = this.§0"9§(_loc3_,_loc3_.length);
         var _loc5_:Array = [];
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_ is § each§)
            {
               if(param1.§'"l§.§^"D§(_loc6_.userId))
               {
                  _loc7_ = false;
                  for each(_loc8_ in param1.§2!J§.§?!x§.data)
                  {
                     if(_loc8_ is § each§)
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
                     _loc5_.push(new §;!M§(_loc6_.userId,_loc6_.userName,_loc6_.avatarString));
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
