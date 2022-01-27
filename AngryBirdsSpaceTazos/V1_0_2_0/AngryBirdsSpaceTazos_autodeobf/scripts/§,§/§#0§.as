package §,§
{
   public class §#0§
   {
       
      
      protected var §]";§:Vector.<§-!d§>;
      
      public function §#0§()
      {
         super();
         this.§]";§ = new Vector.<§-!d§>();
      }
      
      public function §`!o§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§,!v§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §,!v§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§-!d§;
         (_loc9_ = new §-!d§(param1,param3,param4,param5,param6,param7)).§,!W§(param2);
         this.§]";§.push(_loc9_);
      }
      
      public function getBackground(param1:String) : §-!d§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]";§.length)
         {
            if(this.§]";§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§]";§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>!`§() : String
      {
         var _loc1_:int = Math.random() * this.§]";§.length;
         return this.§]";§[_loc1_].id;
      }
   }
}
