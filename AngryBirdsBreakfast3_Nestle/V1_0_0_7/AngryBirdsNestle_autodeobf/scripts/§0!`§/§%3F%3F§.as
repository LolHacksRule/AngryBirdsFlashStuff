package §0!`§
{
   public class §??§ implements §-",§
   {
       
      
      private var mName:String;
      
      private var § !?§:Array;
      
      private var §&%§:Boolean;
      
      public function §??§(param1:String)
      {
         this.§ !?§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §;!>§(param1:String) : §0W§
      {
         var _loc2_:§0W§ = null;
         for each(_loc2_ in this.§ !?§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^"+§(param1:§0W§) : void
      {
         if(this.§;!>§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§ !?§.push(param1);
         this.§&%§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0W§ = null;
         for each(_loc1_ in this.§ !?§)
         {
            _loc1_.dispose();
         }
         this.§ !?§ = [];
      }
      
      public function §#I§(param1:String) : §[P§
      {
         var _loc2_:§[P§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§ !?§.length)
         {
            _loc2_ = (this.§ !?§[_loc3_] as §0W§).§#I§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8"&§() : int
      {
         return this.§ !?§.length;
      }
      
      public function §>!Q§(param1:int) : §0W§
      {
         if(param1 < 0 || param1 >= this.§8"&§)
         {
            return null;
         }
         if(!this.§&%§)
         {
            this.§ !?§.sortOn("name");
            this.§&%§ = true;
         }
         return this.§ !?§[param1];
      }
   }
}
