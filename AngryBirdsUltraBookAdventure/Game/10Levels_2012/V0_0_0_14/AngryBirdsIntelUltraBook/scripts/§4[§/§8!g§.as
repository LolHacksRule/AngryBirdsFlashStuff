package §4[§
{
   public class §8!g§
   {
      
      private static var §%!x§:§8!g§;
       
      
      private var §,!>§:Array;
      
      private var §%!`§:Array;
      
      public function §8!g§()
      {
         this.§,!>§ = [];
         this.§%!`§ = [];
         super();
         if(§%!x§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §%!x§ = this;
      }
      
      public static function get §^Z§() : §8!g§
      {
         if(!§%!x§)
         {
            §%!x§ = new §8!g§();
         }
         return §%!x§;
      }
      
      public static function §8S§(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §4! §(param1:String) : void
      {
         if(this.§,!>§.indexOf(param1) == -1)
         {
            this.§,!>§.push(param1);
         }
      }
      
      public function § b§(param1:String) : Boolean
      {
         return this.§,!>§.indexOf(param1) == -1 && this.§%!`§.indexOf(param1) == -1;
      }
      
      public function §'f§(param1:String) : Boolean
      {
         return this.§%!`§.indexOf(param1) == -1;
      }
      
      public function §2f§(param1:String) : Boolean
      {
         return this.§%!`§.indexOf(param1) == -1;
      }
      
      public function §0!_§() : Array
      {
         return this.§,!>§;
      }
      
      public function §`!m§() : Array
      {
         return this.§%!`§;
      }
      
      public function §"!P§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§4! §(_loc2_);
         }
      }
      
      public function §8!6§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§%!`§.indexOf(_loc2_) == -1)
            {
               this.§%!`§.push(_loc2_);
            }
         }
      }
   }
}
