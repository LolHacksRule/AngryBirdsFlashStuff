package §`",§
{
   public class §`!W§ implements §'8§
   {
       
      
      private var mName:String;
      
      private var §>"G§:Array;
      
      private var §<F§:Boolean;
      
      public function §`!W§(param1:String)
      {
         this.§>"G§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §4!c§(param1:String) : §?" §
      {
         var _loc2_:§?" § = null;
         for each(_loc2_ in this.§>"G§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §>!B§(param1:§?" §) : void
      {
         if(this.§4!c§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§>"G§.push(param1);
         this.§<F§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?" § = null;
         for each(_loc1_ in this.§>"G§)
         {
            _loc1_.dispose();
         }
         this.§>"G§ = [];
      }
      
      public function §&!#§(param1:String) : §1!v§
      {
         var _loc2_:§1!v§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>"G§.length)
         {
            _loc2_ = (this.§>"G§[_loc3_] as §?" §).§&!#§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §4T§() : int
      {
         return this.§>"G§.length;
      }
      
      public function §5!v§(param1:int) : §?" §
      {
         if(param1 < 0 || param1 >= this.§4T§)
         {
            return null;
         }
         if(!this.§<F§)
         {
            this.§>"G§.sortOn("name");
            this.§<F§ = true;
         }
         return this.§>"G§[param1];
      }
   }
}
