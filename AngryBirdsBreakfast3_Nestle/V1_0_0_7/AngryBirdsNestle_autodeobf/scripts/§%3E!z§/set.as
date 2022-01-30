package §>!z§
{
   public class set
   {
       
      
      protected var §'"&§:Vector.<§^y§>;
      
      public function set()
      {
         super();
         this.§'"&§ = new Vector.<§^y§>();
      }
      
      public function §>v§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§6k§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §6k§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§^y§;
         (_loc9_ = new §^y§(param1,param3,param4,param5,param6,param7)).§"!&§(param2);
         this.§'"&§.push(_loc9_);
      }
      
      public function §>",§(param1:String) : §^y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'"&§.length)
         {
            if(this.§'"&§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§'"&§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<"$§() : String
      {
         var _loc1_:int = Math.random() * this.§'"&§.length;
         return this.§'"&§[_loc1_].id;
      }
   }
}
