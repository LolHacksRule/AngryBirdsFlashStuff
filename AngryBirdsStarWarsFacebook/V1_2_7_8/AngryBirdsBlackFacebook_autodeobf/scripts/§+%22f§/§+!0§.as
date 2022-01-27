package §+"f§
{
   public class §+!0§
   {
       
      
      protected var §["j§:Vector.<§[_§>;
      
      public function §+!0§()
      {
         super();
         this.§["j§ = new Vector.<§[_§>();
      }
      
      public function §+l§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§9!i§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §9!i§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§[_§;
         (_loc9_ = new §[_§(param1,param3,param4,param5,param6,param7)).§?j§(param2);
         this.§["j§.push(_loc9_);
      }
      
      public function getBackground(param1:String) : §[_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§["j§.length)
         {
            if(this.§["j§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§["j§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §9"4§() : String
      {
         var _loc1_:int = Math.random() * this.§["j§.length;
         return this.§["j§[_loc1_].id;
      }
      
      public function § !s§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§["j§.length)
         {
            _loc1_.push(this.§["j§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
