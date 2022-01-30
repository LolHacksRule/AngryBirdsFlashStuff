package §+!d§
{
   public class §6!J§ implements §`!+§
   {
       
      
      private var §<!A§:Array;
      
      private var §,4§:Boolean;
      
      public function §6!J§()
      {
         this.§<!A§ = [];
         super();
      }
      
      public function §<`§(param1:§]!c§) : void
      {
         this.§<!A§.push(param1);
         this.§,4§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!c§ = null;
         for each(_loc1_ in this.§<!A§)
         {
            _loc1_.dispose();
         }
         this.§<!A§ = [];
      }
      
      public function §]"#§(param1:String) : §&"1§
      {
         var _loc2_:§&"1§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§<!A§.length)
         {
            _loc2_ = (this.§<!A§[_loc3_] as §]!c§).§]"#§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §,e§() : int
      {
         return this.§<!A§.length;
      }
      
      public function §use§(param1:int) : §]!c§
      {
         if(param1 < 0 || param1 >= this.§,e§)
         {
            return null;
         }
         if(!this.§,4§)
         {
            this.§<!A§.sortOn("name");
            this.§,4§ = true;
         }
         return this.§<!A§[param1];
      }
   }
}
