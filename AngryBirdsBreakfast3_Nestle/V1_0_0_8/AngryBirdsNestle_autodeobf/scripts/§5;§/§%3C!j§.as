package §5;§
{
   public class §<!j§ implements §?"7§
   {
       
      
      private var mName:String;
      
      private var §=!7§:Array;
      
      private var §5g§:Boolean;
      
      public function §<!j§(param1:String)
      {
         this.§=!7§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §^!"§(param1:String) : §]!y§
      {
         var _loc2_:§]!y§ = null;
         for each(_loc2_ in this.§=!7§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §2H§(param1:§]!y§) : void
      {
         if(this.§^!"§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§=!7§.push(param1);
         this.§5g§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!y§ = null;
         for each(_loc1_ in this.§=!7§)
         {
            _loc1_.dispose();
         }
         this.§=!7§ = [];
      }
      
      public function §^!n§(param1:String) : §%"#§
      {
         var _loc2_:§%"#§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!7§.length)
         {
            _loc2_ = (this.§=!7§[_loc3_] as §]!y§).§^!n§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §;-§() : int
      {
         return this.§=!7§.length;
      }
      
      public function §%3§(param1:int) : §]!y§
      {
         if(param1 < 0 || param1 >= this.§;-§)
         {
            return null;
         }
         if(!this.§5g§)
         {
            this.§=!7§.sortOn("name");
            this.§5g§ = true;
         }
         return this.§=!7§[param1];
      }
   }
}
