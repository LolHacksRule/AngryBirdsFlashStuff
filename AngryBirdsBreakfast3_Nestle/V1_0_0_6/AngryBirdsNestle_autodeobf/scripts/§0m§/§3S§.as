package §0m§
{
   public class §3S§ implements §`!K§
   {
       
      
      private var mName:String;
      
      private var §-f§:Array;
      
      private var §+!R§:Boolean;
      
      public function §3S§(param1:String)
      {
         this.§-f§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §#j§(param1:String) : §<p§
      {
         var _loc2_:§<p§ = null;
         for each(_loc2_ in this.§-f§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §,"-§(param1:§<p§) : void
      {
         if(this.§#j§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§-f§.push(param1);
         this.§+!R§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<p§ = null;
         for each(_loc1_ in this.§-f§)
         {
            _loc1_.dispose();
         }
         this.§-f§ = [];
      }
      
      public function §6!b§(param1:String) : §`§
      {
         var _loc2_:§`§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-f§.length)
         {
            _loc2_ = (this.§-f§[_loc3_] as §<p§).§6!b§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §><§() : int
      {
         return this.§-f§.length;
      }
      
      public function §3P§(param1:int) : §<p§
      {
         if(param1 < 0 || param1 >= this.§><§)
         {
            return null;
         }
         if(!this.§+!R§)
         {
            this.§-f§.sortOn("name");
            this.§+!R§ = true;
         }
         return this.§-f§[param1];
      }
   }
}
