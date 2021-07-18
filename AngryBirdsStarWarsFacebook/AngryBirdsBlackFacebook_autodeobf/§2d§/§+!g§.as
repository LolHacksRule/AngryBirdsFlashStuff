package §2d§
{
   public class §+!g§ implements §3!R§
   {
       
      
      private var mName:String;
      
      private var §;#;§:Array;
      
      private var §2!R§:Boolean;
      
      public function §+!g§(param1:String)
      {
         this.§;#;§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §4"p§(param1:String) : §;H§
      {
         var _loc2_:§;H§ = null;
         for each(_loc2_ in this.§;#;§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-5§(param1:§;H§) : void
      {
         if(this.§4"p§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§;#;§.push(param1);
         this.§2!R§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;H§ = null;
         for each(_loc1_ in this.§;#;§)
         {
            _loc1_.dispose();
         }
         this.§;#;§ = [];
      }
      
      public function § !D§(param1:String) : §%$§
      {
         var _loc2_:§%$§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;#;§.length)
         {
            _loc2_ = (this.§;#;§[_loc3_] as §;H§).§ !D§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §^"A§() : int
      {
         return this.§;#;§.length;
      }
      
      public function §"#B§(param1:int) : §;H§
      {
         if(param1 < 0 || param1 >= this.§^"A§)
         {
            return null;
         }
         if(!this.§2!R§)
         {
            this.§;#;§.sortOn("name");
            this.§2!R§ = true;
         }
         return this.§;#;§[param1];
      }
   }
}
