package §#""§
{
   public class §^'§ implements §^E§
   {
       
      
      private var §[!-§:Array;
      
      private var §]!B§:Boolean;
      
      public function §^'§()
      {
         this.§[!-§ = [];
         super();
      }
      
      public function §>_§(param1:§>Z§) : void
      {
         this.§[!-§.push(param1);
         this.§]!B§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>Z§ = null;
         for each(_loc1_ in this.§[!-§)
         {
            _loc1_.dispose();
         }
         this.§[!-§ = [];
      }
      
      public function §4!^§(param1:String) : §2! §
      {
         var _loc2_:§2! § = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§[!-§.length)
         {
            _loc2_ = (this.§[!-§[_loc3_] as §>Z§).§4!^§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §<!F§() : int
      {
         return this.§[!-§.length;
      }
      
      public function §2!3§(param1:int) : §>Z§
      {
         if(param1 < 0 || param1 >= this.§<!F§)
         {
            return null;
         }
         if(!this.§]!B§)
         {
            this.§[!-§.sortOn("name");
            this.§]!B§ = true;
         }
         return this.§[!-§[param1];
      }
   }
}
