package §2?§
{
   public class §4!5§
   {
       
      
      protected var §7!z§:Vector.<§1"§>;
      
      public function §4!5§()
      {
         super();
         this.§7!z§ = new Vector.<§1"§>();
      }
      
      public function §"!2§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§^<§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §^<§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§1"§;
         (_loc9_ = new §1"§(param1,param3,param4,param5,param6,param7)).§7!M§(param2);
         this.§7!z§.push(_loc9_);
      }
      
      public function §6h§(param1:String) : §1"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!z§.length)
         {
            if(this.§7!z§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§7!z§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<O§() : String
      {
         var _loc1_:int = Math.random() * this.§7!z§.length;
         return this.§7!z§[_loc1_].id;
      }
   }
}
