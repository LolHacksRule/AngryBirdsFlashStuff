package §7!0§
{
   public class §5!3§ implements §`g§
   {
       
      
      private var §=!&§:Array;
      
      private var §%v§:Boolean;
      
      public function §5!3§()
      {
         this.§=!&§ = [];
         super();
      }
      
      public function §<!L§(param1:§<!9§) : void
      {
         this.§=!&§.push(param1);
         this.§%v§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!9§ = null;
         for each(_loc1_ in this.§=!&§)
         {
            _loc1_.dispose();
         }
         this.§=!&§ = [];
      }
      
      public function §!p§(param1:String) : §`C§
      {
         var _loc2_:§`C§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!&§.length)
         {
            _loc2_ = (this.§=!&§[_loc3_] as §<!9§).§!p§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §&F§() : int
      {
         return this.§=!&§.length;
      }
      
      public function §8!W§(param1:int) : §<!9§
      {
         if(param1 < 0 || param1 >= this.§&F§)
         {
            return null;
         }
         if(!this.§%v§)
         {
            this.§=!&§.sortOn("name");
            this.§%v§ = true;
         }
         return this.§=!&§[param1];
      }
   }
}
