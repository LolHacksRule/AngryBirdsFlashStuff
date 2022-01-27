package §69§
{
   public class §!!u§
   {
       
      
      protected var §!"9§:Vector.<§4!e§>;
      
      public function §!!u§()
      {
         super();
         this.§!"9§ = new Vector.<§4!e§>();
      }
      
      public function §7-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§!#D§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §!#D§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§4!e§;
         (_loc9_ = new §4!e§(param1,param3,param4,param5,param6,param7)).§<3§(param2);
         this.§!"9§.push(_loc9_);
      }
      
      public function getBackground(param1:String) : §4!e§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"9§.length)
         {
            if(this.§!"9§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§!"9§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §9#>§() : String
      {
         var _loc1_:int = Math.random() * this.§!"9§.length;
         return this.§!"9§[_loc1_].id;
      }
      
      public function §]!q§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"9§.length)
         {
            _loc1_.push(this.§!"9§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
