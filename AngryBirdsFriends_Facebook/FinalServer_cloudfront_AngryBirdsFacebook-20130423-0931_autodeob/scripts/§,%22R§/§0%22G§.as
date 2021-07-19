package §,"R§
{
   public class §0"G§ implements §>!E§
   {
       
      
      private var §3"1§:Array;
      
      private var §`!S§:Boolean;
      
      public function §0"G§()
      {
         this.§3"1§ = [];
         super();
      }
      
      public function §default§(param1:§,!+§) : void
      {
         this.§3"1§.push(param1);
         this.§`!S§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!+§ = null;
         for each(_loc1_ in this.§3"1§)
         {
            _loc1_.dispose();
         }
         this.§3"1§ = [];
      }
      
      public function §5!y§(param1:String) : §2!J§
      {
         var _loc2_:§2!J§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§3"1§.length)
         {
            _loc2_ = (this.§3"1§[_loc3_] as §,!+§).§5!y§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §=!;§() : int
      {
         return this.§3"1§.length;
      }
      
      public function §#"W§(param1:int) : §,!+§
      {
         if(param1 < 0 || param1 >= this.§=!;§)
         {
            return null;
         }
         if(!this.§`!S§)
         {
            this.§3"1§.sortOn("name");
            this.§`!S§ = true;
         }
         return this.§3"1§[param1];
      }
   }
}
