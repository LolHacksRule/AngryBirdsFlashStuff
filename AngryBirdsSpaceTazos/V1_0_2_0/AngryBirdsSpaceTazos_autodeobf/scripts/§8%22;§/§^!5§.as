package §8";§
{
   public class §^!5§ implements §#+§
   {
       
      
      private var mName:String;
      
      private var §2!j§:Array;
      
      private var §=!n§:Boolean;
      
      public function §^!5§(param1:String)
      {
         this.§2!j§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function § ;§(param1:String) : §`!a§
      {
         var _loc2_:§`!a§ = null;
         for each(_loc2_ in this.§2!j§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §'"%§(param1:§`!a§) : void
      {
         if(this.§ ;§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§2!j§.push(param1);
         this.§=!n§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!a§ = null;
         for each(_loc1_ in this.§2!j§)
         {
            _loc1_.dispose();
         }
         this.§2!j§ = [];
      }
      
      public function §6!s§(param1:String) : §^"#§
      {
         var _loc2_:§^"#§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2!j§.length)
         {
            _loc2_ = (this.§2!j§[_loc3_] as §`!a§).§6!s§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §<!3§() : int
      {
         return this.§2!j§.length;
      }
      
      public function §,!;§(param1:int) : §`!a§
      {
         if(param1 < 0 || param1 >= this.§<!3§)
         {
            return null;
         }
         if(!this.§=!n§)
         {
            this.§2!j§.sortOn("name");
            this.§=!n§ = true;
         }
         return this.§2!j§[param1];
      }
   }
}
