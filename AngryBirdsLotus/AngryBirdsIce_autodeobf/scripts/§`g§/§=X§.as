package §`g§
{
   public class §=X§ implements §[N§
   {
       
      
      private var §,!G§:Array;
      
      private var §++§:Boolean;
      
      public function §=X§()
      {
         this.§,!G§ = [];
         super();
      }
      
      public function §^l§(param1:§&_§) : void
      {
         this.§,!G§.push(param1);
         this.§++§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&_§ = null;
         for each(_loc1_ in this.§,!G§)
         {
            _loc1_.dispose();
         }
         this.§,!G§ = [];
      }
      
      public function §,!<§(param1:String) : §]!3§
      {
         var _loc2_:§]!3§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,!G§.length)
         {
            _loc2_ = (this.§,!G§[_loc3_] as §&_§).§,!<§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0!>§() : int
      {
         return this.§,!G§.length;
      }
      
      public function §5&§(param1:int) : §&_§
      {
         if(param1 < 0 || param1 >= this.§0!>§)
         {
            return null;
         }
         if(!this.§++§)
         {
            this.§,!G§.sortOn("name");
            this.§++§ = true;
         }
         return this.§,!G§[param1];
      }
   }
}
