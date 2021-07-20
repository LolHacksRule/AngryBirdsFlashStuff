package §;$<§
{
   public class §>!I§ implements §2#$§
   {
       
      
      private var §!I§:String;
      
      private var §?"e§:Array;
      
      private var §"!3§:Boolean;
      
      public function §>!I§(param1:String)
      {
         this.§?"e§ = [];
         super();
         this.§!I§ = param1;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      protected function § d§(param1:String) : §%#w§
      {
         var _loc2_:§%#w§ = null;
         for each(_loc2_ in this.§?"e§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §&!;§(param1:§%#w§) : void
      {
         if(this.§ d§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§?"e§.push(param1);
         this.§"!3§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%#w§ = null;
         for each(_loc1_ in this.§?"e§)
         {
            _loc1_.dispose();
         }
         this.§?"e§ = [];
      }
      
      public function §%#8§(param1:String) : §^9§
      {
         var _loc2_:§^9§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§?"e§.length)
         {
            _loc2_ = (this.§?"e§[_loc3_] as §%#w§).§%#8§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §5!H§() : int
      {
         return this.§?"e§.length;
      }
      
      public function §#!U§(param1:int) : §%#w§
      {
         if(param1 < 0 || param1 >= this.§5!H§)
         {
            return null;
         }
         if(!this.§"!3§)
         {
            this.§?"e§.sortOn("name");
            this.§"!3§ = true;
         }
         return this.§?"e§[param1];
      }
   }
}
