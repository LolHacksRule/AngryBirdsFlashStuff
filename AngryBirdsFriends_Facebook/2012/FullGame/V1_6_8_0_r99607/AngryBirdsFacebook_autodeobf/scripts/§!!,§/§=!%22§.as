package §!!,§
{
   public class §=!"§ implements §7&§
   {
       
      
      private var §]2§:Array;
      
      private var §&"=§:Boolean;
      
      public function §=!"§()
      {
         this.§]2§ = [];
         super();
      }
      
      public function §6l§(param1:§%W§) : void
      {
         this.§]2§.push(param1);
         this.§&"=§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%W§ = null;
         for each(_loc1_ in this.§]2§)
         {
            _loc1_.dispose();
         }
         this.§]2§ = [];
      }
      
      public function §#h§(param1:String) : §5W§
      {
         var _loc2_:§5W§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§]2§.length)
         {
            _loc2_ = (this.§]2§[_loc3_] as §%W§).§#h§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §7!l§() : int
      {
         return this.§]2§.length;
      }
      
      public function §-"A§(param1:int) : §%W§
      {
         if(param1 < 0 || param1 >= this.§7!l§)
         {
            return null;
         }
         if(!this.§&"=§)
         {
            this.§]2§.sortOn("name");
            this.§&"=§ = true;
         }
         return this.§]2§[param1];
      }
   }
}
