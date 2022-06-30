package §#!C§
{
   public class §if§ implements §3o§
   {
       
      
      private var §&!L§:Array;
      
      private var §'! §:Boolean;
      
      public function §if§()
      {
         this.§&!L§ = [];
         super();
      }
      
      public function §8!_§(param1:§=_§) : void
      {
         this.§&!L§.push(param1);
         this.§'! § = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=_§ = null;
         for each(_loc1_ in this.§&!L§)
         {
            _loc1_.dispose();
         }
         this.§&!L§ = [];
      }
      
      public function §6!3§(param1:String) : §'!e§
      {
         var _loc2_:§'!e§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&!L§.length)
         {
            _loc2_ = (this.§&!L§[_loc3_] as §=_§).§6!3§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §5!6§() : int
      {
         return this.§&!L§.length;
      }
      
      public function §9Z§(param1:int) : §=_§
      {
         if(param1 < 0 || param1 >= this.§5!6§)
         {
            return null;
         }
         if(!this.§'! §)
         {
            this.§&!L§.sortOn("name");
            this.§'! § = true;
         }
         return this.§&!L§[param1];
      }
   }
}
