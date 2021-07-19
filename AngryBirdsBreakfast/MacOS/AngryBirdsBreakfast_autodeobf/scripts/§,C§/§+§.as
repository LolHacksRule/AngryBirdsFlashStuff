package §,C§
{
   public class §+§
   {
       
      
      protected var §2"!§:Vector.<§+"$§>;
      
      public function §+§()
      {
         super();
         this.§2"!§ = new Vector.<§+"$§>();
      }
      
      public function §0"+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§5"'§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §5"'§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§+"$§;
         (_loc9_ = new §+"$§(param1,param3,param4,param5,param6,param7)).§?t§(param2);
         this.§2"!§.push(_loc9_);
      }
      
      public function §?-§(param1:String) : §+"$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2"!§.length)
         {
            if(this.§2"!§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§2"!§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2!?§() : String
      {
         var _loc1_:int = Math.random() * this.§2"!§.length;
         return this.§2"!§[_loc1_].id;
      }
   }
}
