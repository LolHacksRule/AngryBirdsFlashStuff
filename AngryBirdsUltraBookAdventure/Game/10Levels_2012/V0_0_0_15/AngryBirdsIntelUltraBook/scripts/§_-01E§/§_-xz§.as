package §_-01E§
{
   public class §_-xz§
   {
      
      private static var §_-es§:§_-xz§;
       
      
      private var §_-GF§:Array;
      
      private var §_-Z1§:Array;
      
      public function §_-xz§()
      {
         this.§_-GF§ = [];
         this.§_-Z1§ = [];
         super();
         if(§_-es§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §_-es§ = this;
      }
      
      public static function get §_-3S§() : §_-xz§
      {
         if(!§_-es§)
         {
            §_-es§ = new §_-xz§();
         }
         return §_-es§;
      }
      
      public static function §_-0CB§(param1:Array, param2:Array) : Array
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
      
      public function §_-05h§(param1:String) : void
      {
         if(this.§_-GF§.indexOf(param1) == -1)
         {
            this.§_-GF§.push(param1);
         }
      }
      
      public function §_-0E0§(param1:String) : Boolean
      {
         return this.§_-GF§.indexOf(param1) == -1 && this.§_-Z1§.indexOf(param1) == -1;
      }
      
      public function §_-014§(param1:String) : Boolean
      {
         return this.§_-Z1§.indexOf(param1) == -1;
      }
      
      public function § set§(param1:String) : Boolean
      {
         return this.§_-Z1§.indexOf(param1) == -1;
      }
      
      public function §_-lP§() : Array
      {
         return this.§_-GF§;
      }
      
      public function §_-Fj§() : Array
      {
         return this.§_-Z1§;
      }
      
      public function §_-Hd§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§_-05h§(_loc2_);
         }
      }
      
      public function §_-JD§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§_-Z1§.indexOf(_loc2_) == -1)
            {
               this.§_-Z1§.push(_loc2_);
            }
         }
      }
   }
}
