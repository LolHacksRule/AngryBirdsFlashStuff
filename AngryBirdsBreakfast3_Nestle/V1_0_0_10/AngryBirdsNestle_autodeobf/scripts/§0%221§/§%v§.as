package §0"1§
{
   public class §%v§
   {
       
      
      protected var §=!y§:Vector.<§`"-§>;
      
      public function §%v§()
      {
         super();
         this.§=!y§ = new Vector.<§`"-§>();
      }
      
      public function §"!n§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§0K§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §0K§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§`"-§;
         (_loc9_ = new §`"-§(param1,param3,param4,param5,param6,param7)).§3Q§(param2);
         this.§=!y§.push(_loc9_);
      }
      
      public function §%!H§(param1:String) : §`"-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!y§.length)
         {
            if(this.§=!y§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§=!y§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"y§() : String
      {
         var _loc1_:int = Math.random() * this.§=!y§.length;
         return this.§=!y§[_loc1_].id;
      }
      
      public function § H§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!y§.length)
         {
            _loc1_.push(this.§=!y§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
