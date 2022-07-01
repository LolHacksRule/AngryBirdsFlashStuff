package §>z§
{
   public class §5!d§
   {
       
      
      protected var §]!h§:Vector.<§+E§>;
      
      public function §5!d§()
      {
         super();
         this.§]!h§ = new Vector.<§+E§>();
      }
      
      public function § <§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§3"+§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §3"+§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§+E§;
         (_loc9_ = new §+E§(param1,param3,param4,param5,param6,param7)).§`!r§(param2);
         this.§]!h§.push(_loc9_);
      }
      
      public function §9!'§(param1:String) : §+E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!h§.length)
         {
            if(this.§]!h§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§]!h§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"!c§() : String
      {
         var _loc1_:int = Math.random() * this.§]!h§.length;
         return this.§]!h§[_loc1_].id;
      }
      
      public function §1z§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!h§.length)
         {
            _loc1_.push(this.§]!h§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
