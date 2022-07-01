package §>D§
{
   public class §!R§
   {
       
      
      protected var §4t§:Vector.<§ k§>;
      
      public function §!R§()
      {
         super();
         this.§4t§ = new Vector.<§ k§>();
      }
      
      public function §0!J§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§[!^§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §[!^§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§ k§;
         (_loc9_ = new § k§(param1,param3,param4,param5,param6,param7)).§8!L§(param2);
         this.§4t§.push(_loc9_);
      }
      
      public function §[!M§(param1:String) : § k§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4t§.length)
         {
            if(this.§4t§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§4t§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0!o§() : String
      {
         var _loc1_:int = Math.random() * this.§4t§.length;
         return this.§4t§[_loc1_].id;
      }
   }
}
