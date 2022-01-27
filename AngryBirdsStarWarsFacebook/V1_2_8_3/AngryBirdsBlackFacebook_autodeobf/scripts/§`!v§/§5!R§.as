package §`!v§
{
   public class §5!R§
   {
       
      
      protected var §="Q§:Vector.<§8X§>;
      
      public function §5!R§()
      {
         super();
         this.§="Q§ = new Vector.<§8X§>();
      }
      
      public function §+!G§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§`" §(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §`" §(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§8X§;
         (_loc9_ = new §8X§(param1,param3,param4,param5,param6,param7)).§6f§(param2);
         this.§="Q§.push(_loc9_);
      }
      
      public function getBackground(param1:String) : §8X§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§="Q§.length)
         {
            if(this.§="Q§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§="Q§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#"P§() : String
      {
         var _loc1_:int = Math.random() * this.§="Q§.length;
         return this.§="Q§[_loc1_].id;
      }
      
      public function §3v§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§="Q§.length)
         {
            _loc1_.push(this.§="Q§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
