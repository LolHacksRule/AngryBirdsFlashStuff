package §<!<§
{
   public class §0`§
   {
       
      
      protected var §2!8§:Vector.<§1!q§>;
      
      public function §0`§()
      {
         super();
         this.§2!8§ = new Vector.<§1!q§>();
      }
      
      public function §<!o§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§%=§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §%=§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§1!q§;
         (_loc9_ = new §1!q§(param1,param3,param4,param5,param6,param7)).§3!7§(param2);
         this.§2!8§.push(_loc9_);
      }
      
      public function getBackground(param1:String) : §1!q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!8§.length)
         {
            if(this.§2!8§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§2!8§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §^" §() : String
      {
         var _loc1_:int = Math.random() * this.§2!8§.length;
         return this.§2!8§[_loc1_].id;
      }
   }
}
