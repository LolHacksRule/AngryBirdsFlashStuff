package §8! §
{
   public class §2!f§ implements §+C§
   {
       
      
      private var mName:String;
      
      private var §<`§:Array;
      
      private var §4G§:Boolean;
      
      public function §2!f§(param1:String)
      {
         this.§<`§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §null§(param1:String) : §9q§
      {
         var _loc2_:§9q§ = null;
         for each(_loc2_ in this.§<`§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^",§(param1:§9q§) : void
      {
         if(this.§null§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§<`§.push(param1);
         this.§4G§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9q§ = null;
         for each(_loc1_ in this.§<`§)
         {
            _loc1_.dispose();
         }
         this.§<`§ = [];
      }
      
      public function §8e§(param1:String) : §^"-§
      {
         var _loc2_:§^"-§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§<`§.length)
         {
            _loc2_ = (this.§<`§[_loc3_] as §9q§).§8e§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8!h§() : int
      {
         return this.§<`§.length;
      }
      
      public function §!!-§(param1:int) : §9q§
      {
         if(param1 < 0 || param1 >= this.§8!h§)
         {
            return null;
         }
         if(!this.§4G§)
         {
            this.§<`§.sortOn("name");
            this.§4G§ = true;
         }
         return this.§<`§[param1];
      }
   }
}
