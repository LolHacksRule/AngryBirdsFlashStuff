package §<8§
{
   public class §!%§ implements §,!J§
   {
       
      
      private var §,x§:Array;
      
      private var §&!W§:Boolean;
      
      public function §!%§()
      {
         this.§,x§ = [];
         super();
      }
      
      public function §^'§(param1:§,j§) : void
      {
         this.§,x§.push(param1);
         this.§&!W§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,j§ = null;
         for each(_loc1_ in this.§,x§)
         {
            _loc1_.dispose();
         }
         this.§,x§ = [];
      }
      
      public function §,!A§(param1:String) : §!3§
      {
         var _loc2_:§!3§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,x§.length)
         {
            _loc2_ = (this.§,x§[_loc3_] as §,j§).§,!A§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8L§() : int
      {
         return this.§,x§.length;
      }
      
      public function §#%§(param1:int) : §,j§
      {
         if(param1 < 0 || param1 >= this.§8L§)
         {
            return null;
         }
         if(!this.§&!W§)
         {
            this.§,x§.sortOn("name");
            this.§&!W§ = true;
         }
         return this.§,x§[param1];
      }
   }
}
