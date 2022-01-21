package §1f§
{
   public class dynamic implements §'t§
   {
       
      
      private var §1!9§:Array;
      
      private var §#I§:Boolean;
      
      public function dynamic()
      {
         this.§1!9§ = [];
         super();
      }
      
      public function §3!?§(param1:§ !%§) : void
      {
         this.§1!9§.push(param1);
         this.§#I§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !%§ = null;
         for each(_loc1_ in this.§1!9§)
         {
            _loc1_.dispose();
         }
         this.§1!9§ = [];
      }
      
      public function §9u§(param1:String) : §#7§
      {
         var _loc2_:§#7§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§1!9§.length)
         {
            _loc2_ = (this.§1!9§[_loc3_] as § !%§).§9u§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §^!R§() : int
      {
         return this.§1!9§.length;
      }
      
      public function §4!§(param1:int) : § !%§
      {
         if(param1 < 0 || param1 >= this.§^!R§)
         {
            return null;
         }
         if(!this.§#I§)
         {
            this.§1!9§.sortOn("name");
            this.§#I§ = true;
         }
         return this.§1!9§[param1];
      }
   }
}
