package §@&§
{
   public class § !E§
   {
       
      
      protected var §#!R§:Vector.<§"! §>;
      
      public function § !E§()
      {
         super();
         this.§#!R§ = new Vector.<§"! §>();
      }
      
      public function §;!I§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§;n§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function §;n§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:§"! §;
         (_loc9_ = new §"! §(param1,param3,param4,param5,param6,param7)).§>!q§(param2);
         this.§#!R§.push(_loc9_);
      }
      
      public function §"U§(param1:String) : §"! §
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!R§.length)
         {
            if(this.§#!R§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§#!R§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=!V§() : String
      {
         var _loc1_:int = Math.random() * this.§#!R§.length;
         return this.§#!R§[_loc1_].id;
      }
   }
}
